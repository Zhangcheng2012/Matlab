classdef CGS < handle
    % S = CGS(gsnum, bn)
    %
    % bn choices, or specify:
    %                     case 'dst'
    %                         bn = '/proj/dst/data/dB_PR/gsdst_';
    %                     case 'spc_disc'
    %                         bn = '/home/dmarx/HCIT/SPC_disc/gsspc_20171204/reduced/gsspc_';
    %                     case 'mcb_spc'
    %                         bn = '/home/dmarx/HCIT/MCB_SPC/phaseretrieval/reduced/gsomc_no';
    %                     case 'mcb_hlc'
    %                         bn = '/proj/mcb/data/dB_PR_Kern/gsomc_no00';
    %
    % read reduced results from gs phase retrieval
    %
    % methods:
    %    [hfig, hax] = DisplayGS(S)
    %
    %    [hfig, hax] = DisplayGSrefGS(S, Sref)
    %          hfig = CheckOption('hfig', figure_mxn(2,2), varargin{:});
    %          usebMask = CheckOption('usebMask', true, varargin{:});
    %
    %    [Z, rz, pharesidual] = ZernikeFit(S, nz)
    %
    %    Scopy = Copy(S)
    %
    %    cc = AmpCorrMetric(S)
    %
    %    [hfig, hax] = DisplayAmpPlane(S, ipl)
    %
    % properties (some of them):
    %    cAmpPlanes{1:Num Images}
    %       % (:,:,1) = measured amplitude
    %       % (:,:,2) = calculated amplitude
    %       % (:,:,3) = calculated phase

    properties
        
        gsnum 
        listPupImDir
        listSrcImDir
        bn 
        amp
        ph
        phw
        cAmpPlanes % input and est amp images each plane (cmp.fits)
        amp_keys
        bMask
        ampthresh
        phw_ptt
        E
        x
        y
        X
        Y
        R
        T
        
    end % properties
    
    methods
        
        function S = CGS(gsnum, bn)
            % S = CGS(gsnum, bn)
            %
            % example:
            %
            
            if nargin == 0,
                return
            end
            
            if ~exist('bn','var') || isempty(bn),
                %bn = '/home/dmarx/HCIT/DST/phaseretrieval_20180605/reduced/gsdst_';
                bn = '/proj/dst/data/dB_PR/gsdst_';
            else
                switch lower(bn),
                    case 'dst'
                        bn = '/proj/dst/data/dB_PR/gsdst_';
                    case 'spc_disc'
                        bn = '/home/dmarx/HCIT/SPC_disc/gsspc_20171204/reduced/gsspc_';
                    case 'mcb_spc'
                        bn = '/home/dmarx/HCIT/MCB_SPC/phaseretrieval/reduced/gsomc_no';
                    case 'mcb_hlc'
                        bn = '/proj/mcb/data/dB_PR_Kern/gsomc_no00';
                    otherwise
                        % do nothing, let bn = bn
                        %disp(bn);
                end % switch bn
            end
            
            %disp(['opening: ' PathTranslator([bn num2str(gsnum,'%03d') 'amp.fits'])]);
            ampinfo = fitsinfo(PathTranslator([bn num2str(gsnum,'%03d') 'amp.fits']));
            
 
            S.gsnum = gsnum;
            S.bn = bn;
            S.amp = fitsread(PathTranslator([bn num2str(gsnum,'%03d') 'amp.fits']));
            S.ph = fitsread(PathTranslator([bn num2str(gsnum,'%03d') 'ph.fits']));
            S.phw = fitsread(PathTranslator([bn num2str(gsnum,'%03d') 'phwrap.fits']));
            S.amp_keys = ampinfo.PrimaryData.Keywords;

            % get dir listing of raw camera images
            S.listPupImDir = dir(PathTranslator(...
                ['/proj/piaa-data/Data/2019-*-*/dmarx/gsomc_p_' num2str(S.gsnum)]...
                ));
            S.listSrcImDir = dir(PathTranslator(...
                ['/proj/piaa-data/Data/2019-*-*/dmarx/gsomc_s_' num2str(S.gsnum)]...
                ));
            
            [S.x, S.y, S.X, S.Y, S.R, S.T] = CreateGrid(S.amp);
           
            % S.bMask, S.ampthresh
            [sResult, S.bMask] = AutoMetric(S.amp);
            S.ampthresh = sResult.thresh;
            
            % S.phw_ptt
            % use FFT to remove large amounts of PTT (integer pixels in FFT space
            % then use zernikes to remove remaining PTT
            S.RemovePTTfft;
            S.phw_ptt = RemovePTTZ(S.phw_ptt, S.bMask);
            
            % S.E
            %S.E = S.amp .* exp(1i*S.phw_ptt);
            S.E = S.amp .* exp(1i*S.phw);
             
        end % CGS instantiator
        
        function Scopy = Copy(S)
            Scopy = CGS;
            
            listFnames = fieldnames(S);
            for ii = 1:length(listFnames),
                Scopy.(listFnames{ii}) = S.(listFnames{ii});
            end

        end
        
        function ReadAmpImages(S)
            % read the cmp.fits file
            cmp_fn = [S.bn num2str(S.gsnum,'%03d') 'cmp.fits'];

            finfo = fitsinfo(PathTranslator(cmp_fn));            
            NIm = length(finfo.Contents);

            S.cAmpPlanes = cell(1,NIm);

            % each hdu is N x N x 3
            % (:,:,1) = measured amplitude
            % (:,:,2) = calculated amplitude
            % (:,:,3) = calculated phase
            
            S.cAmpPlanes{1} = fitsread(PathTranslator(cmp_fn));
            for ii = 2:NIm,
                S.cAmpPlanes{ii} = fitsread(PathTranslator(cmp_fn),'image',ii-1);
            end
            
        end % ReadAmpImages
        
        function rmsP = rmsPha(S)
            
            rmsP = rms(S.phw_ptt(S.bMask));
            
        end % rmsPha
        
        function [hfig, hax] = DisplayGS(S, varargin)

            pMask = CheckOption('pMask', S.bMask, varargin{:});
            xylim = CheckOption('xylim', 1.1*max(S.R(S.bMask)), varargin{:});
            climph = CheckOption('climph', [], varargin{:});
            phplot = CheckOption('phplot', 'angleE', varargin{:}); % other choice = 'phw_ptt'

            %hfig = figure;
            %hax = imagescampphase(S.E, x, y, ['gsnum ' num2str(S.gsnum)]);
            
            hfig = figure_mxn(1,2);
            hax(1) = subplot(1,2,1);
            imageschcit(S.x, S.y, abs(S.E))
            colorbartitle('Amplitude')
            set(gca,'xlim',xylim*[-1 1],'ylim',xylim*[-1 1])
            title(['gsnum ' num2str(S.gsnum)])

            % bMask is only for phase plot
            % check options for what to plot
            switch phplot
                case 'angleE'
                    ph = angle(S.E);
                case 'phw_ptt'
                    ph = S.phw_ptt;
                otherwise
                    error(['phplot ' phplot ' not a valid choice']);
            end
            
            if isempty(pMask), pMask = ones(size(S.E)); end
            hax(2) = subplot(1,2,2);
            imageschcit(S.x, S.y, pMask.*ph)
            colorbartitle('Phase (rad)')
            set(gca,'xlim',xylim*[-1 1],'ylim',xylim*[-1 1])
            if isempty(climph),
                climph = AutoClim(ph, 'symmetric', true);
            end
            set(gca,'clim',climph)
            title(['gsnum ' num2str(S.gsnum) ' rms\phi = ' num2str(S.rmsPha,'%.3f') 'rad'])
            
            
            
        end % DisplayGS

        function [hfig, hax] = DisplayGSrefGS(S, Sref, varargin)
            % [hfig, hax] = DisplayGSrefGS(S, Sref, options)

            % parse options
            hfig = CheckOption('hfig', figure_mxn(2,2), varargin{:});
            usebMask = CheckOption('usebMask', true, varargin{:});
            
            figure(hfig);

            % determine plot width
            xylim = 1.1*max(S.R(S.bMask));
            xylim = 5*ceil(xylim/5.0); % to the nearest multiple of 5
            
            hax(1) = subplot(2,2,1);
            imageschcit(S.x, S.y, abs(S.E))
            colorbartitle('Amplitude')
            set(gca,'xlim',xylim*[-1 1],'ylim',xylim*[-1 1])
            title(['gsnum ' num2str(S.gsnum)])
            
            hax(2) = subplot(2,2,2);
            imageschcit(S.x, S.y, angle(S.E))
            colorbartitle('Phase (rad)')
            set(gca,'xlim',xylim*[-1 1],'ylim',xylim*[-1 1])
            title(['gsnum ' num2str(S.gsnum)])
            
            hax(3) = subplot(2,2,3);
            imageschcit(S.x, S.y, S.amp - Sref.amp)
            colorbartitle('\Delta Amplitude')
            set(gca,'xlim',xylim*[-1 1],'ylim',xylim*[-1 1])
            title(['gsnum ' num2str(S.gsnum) ' Amp -  Ref gsnum ' num2str(Sref.gsnum) ' Amp'])
            
            hax(4) = subplot(2,2,4);
            if usebMask,
                dpha = S.bMask .* angle(S.E.*conj(Sref.E));
            else
                dpha = angle(S.E.*conj(Sref.E));
            end            
            him = imageschcit(S.x, S.y, dpha);
            colorbartitle('Phase (rad)')
            set(gca,'xlim',xylim*[-1 1],'ylim',xylim*[-1 1])
            set(gca,'clim',AutoClim(get(him,'CData'),'symmetric',true))
            title(['gsnum ' num2str(S.gsnum) ' Ref gsnum ' num2str(Sref.gsnum) ', rms \Delta = ' num2str(rms(angle(S.E(S.bMask).*conj(Sref.E(S.bMask)))),'%.3f') 'rad'])
            
            
            
        end % DisplayGS

        function phw_ptt = RemovePTTfft(S)
            Zs = exp(1i*S.phw);

            ZZ = fftshift(fft2(fftshift(S.bMask.*Zs)));
            
            %figure, imagescampphase(ZZ, x, y)
            
            [fm, xm, ym] = findpeak2(abs(ZZ));
            apha = angle(ZZ(round(ym),round(xm)));
            
            ZZs = circshift( circshift(ZZ, -S.y(round(ym)), 1), -S.x(round(xm)), 2);
            %figure, imageschcit(S.x, S.y, abs(ZZs))
            
            Zss = exp(-1i*apha).*fftshift(ifft2(fftshift(ZZs)));
            %figure, imagescampphase(Sspin.amp .* Zspinss)

            phw_ptt = angle(Zss);
            S.phw_ptt = phw_ptt;
            
        end % RemovePTTfft
        
        function [Z, rz, pharesidual] = ZernikeFit(S, nz)
           
            rz = max(S.R(S.bMask));
            Z = zernikefit(S.X(S.bMask), S.Y(S.bMask), S.phw(S.bMask), nz, rz, 'noll');
            phwfit = nan(size(S.X));
            phwfit(S.bMask) = zernikeval(Z, S.X(S.bMask), S.Y(S.bMask), rz, 'noll');
            pharesidual = nan(size(S.X));
            pharesidual(S.bMask) = mod2pi(S.phw(S.bMask) - phwfit(S.bMask));

        end
        
        function cc = AmpCorrMetric(S)
            % cc = AmpCorrMetric(S)
            
            if isempty(S.cAmpPlanes),
                S.ReadAmpImages;
            end
            
            CCor = @(a,b) a(:)'*b(:)./sqrt( (a(:)'*a(:)) * (b(:)'*b(:)) );
            CCorq = @(q) CCor(q(:,:,1),q(:,:,2));

            NIm = length(S.cAmpPlanes);
            cc = zeros(NIm,1);

            for ii = 1:NIm,
                cc(ii) = CCorq(S.cAmpPlanes{ii});
            end

            
        end % AmpCorrMetric
        
        function [hax] = DisplayAmpPlane(S, ipl)
            % [hfig, hax] = DisplayAmpPlane(S, ipl)
            
            if isempty(S.cAmpPlanes), S.ReadAmpImages; end
            
            % each hdu is N x N x 3
            % (:,:,1) = measured amplitude
            % (:,:,2) = calculated amplitude
            % (:,:,3) = calculated phase

            hax(1) = subplot(1,2,1);
            imageschcit(squeeze(S.cAmpPlanes{ipl}(:,:,1))), title('Camera')
            hax(2) = subplot(1,2,2);
            imageschcit(squeeze(S.cAmpPlanes{ipl}(:,:,2))), title('Estimated')
            
        end % DisplayAmpPlane
        
        function hax = DisplayAllAmpCamera(S, varargin)
            % hax = DisplayAllAmpCamera(S, options)
            % options:
            %   'image', 'amp' (default) or 'intensity'
            
            if isempty(S.cAmpPlanes), S.ReadAmpImages; end

            % parse options
            plAmpOrInt = 'amp'; % default
            iopt = find(strcmpi('image',varargin));
            if ~isempty(iopt),
                plAmpOrInt = varargin{iopt(end)+1};
            end

            Ni = length(S.cAmpPlanes);
            Nc = ceil(Ni/2);
            Nr = 2;
            figure_mxn(Nr, Nc);
            hax = zeros(Ni,1);
            
            for ii = 1:Ni,
                hax(ii) = subplot(Nr, Nc, ii);
                
                switch lower(plAmpOrInt),
                    case 'amp'
                        Im = squeeze(S.cAmpPlanes{ii}(:,:,1));
                        
                    case 'intensity'
                        Im = squeeze(S.cAmpPlanes{ii}(:,:,1)).^2;
            
                end
                
                imageschcit(Im)

            end % for 
            
            
        end % DisplayAllAmpCamera
        
    end % methods
    
end % classdef


function phw_ptt = RemovePTTZ(phw, bMask)
[x, y, X, Y, R] = CreateGrid(phw);
Rz = max(R(bMask));
Z = zernikefit(X(bMask), Y(bMask), phw(bMask), 3, Rz);
phw_ptt = zeros(size(X));
%phw_ptt(bMask) = phw(bMask) - zernikeval(Z, X(bMask), Y(bMask), Rz);
phw_ptt(:) = mod2pi(phw(:) - zernikeval(Z, X(:), Y(:), Rz));

end % RemovePTTZ