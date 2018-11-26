%%
clear;clc;close all;
mask_thre = 240;
pathA = '/home/Cuiyirui/GAN/dataset/test_demo/test_demo_stripe/';
pathB = '/home/Cuiyirui/GAN/dataset/picture_1000_stripe/val/';
img_path_list=dir(strcat(pathA,'*.png'));
new_im = zeros(256,768,3);
new_im = uint8(new_im);



% Extract Mask
% for i =1:length(img_path_list)
%     im_name = strcat(pathA,num2str(i),'.png');
%     im = imread(im_name);
%     % extract contour
%     contour = im(:,1:256,:);
%     contour = rgb2gray(contour);
%     % extract mask
%     
%     mask = extractMask(contour,mask_thre);
%     mask = mask*255;
%     mask = cat(3,mask,mask,mask);
%     % creat new image
%     new_im(:,1:512,:)=im;
%     new_im(:,513:768,:)=mask;
%     new_name = strcat(pathB,num2str(i),'.png');
%     imwrite(new_im,new_name);
% end
    
   
 %% Extract stripe fashion
%  for i = 1:12
%      stripe_im_name = strcat(pathA,num2str(i),'.png');
%      fashion_im_name = strcat(pathB,num2str(i*3),'.png');
%      stripe_im = imread(stripe_im_name);
%      fashion_im = imread(fashion_im_name);
%      stripe_im(:,1:256,:)=fashion_im(:,1:256,:);
%      new_name=strcat(pathA,num2str(i+20),'.png');
%      imwrite(stripe_im,new_name);
%  end


%% rename
for i = 1:length(img_path_list)
    im_name = strcat(pathA,num2str(i),'.png');
    image = imread(im_name);
    new_name = strcat(pathB,num2str(i+32),'.jpg');
    imwrite(image,new_name)
end
 