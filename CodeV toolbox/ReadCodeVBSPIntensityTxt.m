function [Im, sParms] = ReadCodeVBSPIntensityTxt(fn)
% [Im, sParms] = ReadCodeVIntensityTxt(fn)

U = CConstants;

if nargin == 0,
    [fn, pn] = uigetfile({'*.txt'});
    fn = [pn '/' fn];
end

Im = [];

fid = fopen(fn,'rt');
if isequal(fid,-1), error(['error opening file: ' fn]); end
sParms.Filename = fn;

ltmp = fgetl(fid);

while ~feof(fid),
    if isempty(ltmp),
        ltmp = fgetl(fid);
        continue
    end
    
    wordparse = textscan(ltmp,'%s');
    
    switch wordparse{1}{1},
        
        case 'These'
            % These data represent the Intensity at surface 48
            % These data represent the Complex Field at surface 48
            sParms.DataType = wordparse{1}{5};
            sParms.AtSurface = wordparse{1}{end};
            
        case 'Zoom'
            A = textscan(ltmp,'Zoom Position: %d Field Number: %d Wavelength (nm.):	%f');
            [sParms.zoom, sParms.FieldNum, wvtmp] = deal(A{:});
            sParms.Wavelength = wvtmp * U.NM;
            
        case 'Defocus:'
            
        case 'Index'
            
        case 'Fraction'
            
        case 'Beam'
            
        case 'Coordinate'
            
        case 'Orientation'
            
        case 'Offset'
            
        case 'Grid'
            A = textscan(ltmp,'Grid spacing: %f %s %f');
            [dx, dy] = deal(A{[1 3]});
            units = A{2}{1}; % assum 'mm' for now
            sParms.dx = dx*U.MM;
            sParms.dy = dy*U.MM;
                        
        case 'Array'
            sParms.Nr = str2double(wordparse{1}{end-1});
            sParms.Nc = str2double(wordparse{1}{end});
            
            % Im data follows
            if strcmpi(sParms.DataType, 'Intensity'),
                Im = fscanf(fid,'%f',[sParms.Nr sParms.Nc]);
            elseif strcmpi(sParms.DataType, 'Complex'),
                Im = fscanf(fid,'%f',[sParms.Nr 2*sParms.Nc]);
            end % DataType
            
        otherwise
            
    end % switch

    ltmp = fgetl(fid);
    
end % while ~feof

fclose(fid);

end % main

