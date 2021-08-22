function [ClassName] = recognize(model,im,v)
imcropped = imcrop(im,v);
im  = imresize(imcropped,[200 200]);
[features] = extractHOGFeatures(im,'CellSize',[8 8]);
PredictedClass=predict(model,features);
ClassName = cell2mat(PredictedClass);
ClassName = str2double(ClassName);
end