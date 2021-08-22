clc;
clear all;
close all;

%--------------------LOAD YOUR SAVED CLASSIFIER----------------------%
%--------------------CHANGE YOUR PATH DIRECTORY-----------------------%

pathDirectory='%----YOUR PATH----%';
files = fullfile(pathDirectory, '**/*.ppm');
theFiles = dir(files);


for j = 1 : length(theFiles)
    baseFileName = theFiles(j).name;
    fullFileName = fullfile(theFiles(j).folder, baseFileName);
    fprintf(1, 'Now reading %s\n', fullFileName);
    im = imread(fullFileName);
    f1 = figure('Name', baseFileName);
    imshow(im);
    
    %------MASKING FUNCTION-------%
    
    [br,bb,by,or] = rybmasks(im);
    
    %------DETECTION FUNCTION-----%
    drawboxred(model,im,br);            
    drawboxred(model,im,or);
    drawboxblue(model,im,bb);
    drawboxyellow(model,im,by);
    drawnow;
    pause(2);
    close(f1);
end