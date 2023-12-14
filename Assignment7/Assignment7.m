inPath   = '.\Input\';
outPath  = '.\Output\';
filelist = dir(fullfile(inPath,'*.jpg'));
numImg   = length(filelist);
maxHW = 200;

    for kk=1:numImg
        disp([filelist(kk).name '----------']);
        % read image ----------------------------------------------------
        img=imread(strcat(inPath,filelist(kk).name));

        % progamming ----------------------------------------------------
        img1=rgb2gray(img);

        % write image ---------------------------------------------------
        tt=tic;
        disp(['grayscale estimation :[' num2str(toc(tt)) ' s]']); fprintf('\n');
        imwrite(img1,strcat(outPath,filelist(kk).name(1:strfind(filelist(kk).name,'.')-1),'_PC.png'));
    end