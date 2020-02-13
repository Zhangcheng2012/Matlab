function varargout = FitsPath2ImCube(pn, varargin)
% [ImCube, hfig, hax] = FitsPath2ImCube(pn, varargin)
% ImCube = FitsPath2ImCube(pn, options)
%
% simple routine to collect all the fits files in a subdir
% for example, making an image cube out of all the fits files in a
% phase retrieval subdir
%
% options:
% plottype = CheckOption('plottype', 'cube', varargin{:}); % 'spread'
% plotx = CheckOption('x', 0, varargin{:});
% ploty = CheckOption('y', 0, varargin{:});
% xlim = CheckOption('xlim', [], varargin{:});
% ylim = CheckOption('ylim', [], varargin{:});
% hdrkwd = CheckOption('hdrkwd', 'camz', varargin{:});
% scale = CheckOption('scale', 'linear', varargin{:}); or 'log'

plottype = CheckOption('plottype', 'cube', varargin{:}); % 'spread'
plotx = CheckOption('x', 0, varargin{:});
ploty = CheckOption('y', 0, varargin{:});
xlim = CheckOption('xlim', [], varargin{:});
ylim = CheckOption('ylim', [], varargin{:});
scale = CheckOption('scale', 'linear', varargin{:});
hdrkwd = CheckOption('hdrkwd', 'camz', varargin{:});

%

% initialize return vals
hfig = [];
hax = [];
 
listfn = dir(PathTranslator([pn '/*.fits']));
Nf = length(listfn);

% get image size
imtmp = fitsread(PathTranslator([pn '/' listfn(1).name]),'image');
finfo = fitsinfo(PathTranslator([pn '/' listfn(1).name]));
[Nr, Nc] = size(imtmp);

ImCube = zeros([Nf Nr Nc]);
hdrkwdval = zeros(Nf,1);

ImCube(1,:,:) = imtmp;
hdrkwdval(1) = FitsGetKeywordVal(finfo.PrimaryData.Keywords,hdrkwd);

for ii = 1:Nf

    imtmp = fitsread(PathTranslator([pn '/' listfn(ii).name]),'image');
    finfo = fitsinfo(PathTranslator([pn '/' listfn(ii).name]));

    ImCube(ii,:,:) = imtmp;
    hdrkwdval(ii) = FitsGetKeywordVal(finfo.PrimaryData.Keywords,hdrkwd);
end

% apply scale (stretch)
switch lower(scale),
    case 'linear',
        % do nothing
    case 'log'
        ImCube = log10(ImCube);
        
    otherwise,
        error(['unknown scale: ' scale]);
end


switch lower(plottype),
    case 'cube',
        figure,
        [hfig, hax, sUserData] = ImageCube(ImCube, hdrkwdval,...
            'x', plotx, 'y', ploty);
        
    case 'spread'
        figure
        [hfig, hax] = PlotSpread;

    case 'none',
        % no dispaly, do nothing
        
    otherwise,
        error(['unknown plottype ' plottype]);
end

if nargout == 0,
    varargout = {};
else
    varargout = {ImCube, hfig, hax};
end

return % end of main

%%%%%%%%%%%%%% nested plot functions
    % nested function to create panoramic spread plot has all the options
    % already in scope
    function [hfig, hax] = PlotSpread
        hfig = gcf;
        
        % x, y axes
        if isscalar(plotx),
            x = (plotx:(Nc-plotx-1))';
        else
            x = plotx;
        end
        if isscalar(ploty),
            y = (ploty:(Nr-ploty-1))';
        else
            y = ploty;
        end
        
        % apply xlim, ylim directly to ImCube
        if ~isempty(xlim)
            ix = x>=xlim(1) & x<=xlim(2);
            ImCube = ImCube(:,:,ix);
            x = x(ix);
        end
        if ~isempty(ylim)
            iy = (y>=ylim(1) & y<=ylim(2));
            ImCube = ImCube(:,iy,:);
            y = y(iy);
        end
        
        % unfold cube
        nr = length(y); nc = length(x);
        img = zeros(nr, Nf*nc);
        for isl = 1:Nf,
            img(:, (isl-1)*nc + (1:nc)) = squeeze(ImCube(isl,:,:));
        end %
        imageschcit(img)
        hax = gca;
        title(pwd2titlestr(pn),'fontsize',14)
        
    end % PlotSpread

end % main
