function [output] = f_basicLight(I)
% f_basicLight Basic statistics from a grayscale image.
%
%   Input: I - grayscale image
%   Remarks: 
%     1. Skewness and kurtosis can be NaN.
%

% returns the name of the features when no argument is given.
if nargin == 0
    output.header = {...
        'Brightness_Mean',...
        'Brightness_Median',...
        'Brightness_Std',...
        'Brightness_Skewness',...
        'Brightness_Kurtosis',...
        'Brightness_Min',...
        'Brightness_Max'};
    output.type = {
        'float',...
        'float',...
        'float',...
        'float',...
        'float',...
        'float',...
        'float',...
        };
    return;
end

x = double(I(:,:));
x = x(:);
output = [mean(x) median(x) std(x) skewness(x) kurtosis(x) min(x) max(x)];

end
