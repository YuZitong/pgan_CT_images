imgfiles = dir('*.png');
parfor i = 1:length(imgfiles)
img = imread(imgfiles(i).name);
img = uint8(double(img)/2^12*2^8);
imwrite(img, ['./8bit_results/fakes',int2str(i),'.png'], 'png');
end