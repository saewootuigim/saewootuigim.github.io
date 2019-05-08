file = {'email_128x128.png', 'github_128x128.png', 'googlescholar_500x500.png', 'linkedin_128x128.png', 'youtube_128x128.png'};
l = length(file);

for i = 1 : l
    a = imread(file{i});
    b = rgb2gray(a);
    b(b<120) = 120;
    C = strsplit(file{i},'.');
    imwrite(b,[C{1},'_gray_balanced.',C{2}])
end

