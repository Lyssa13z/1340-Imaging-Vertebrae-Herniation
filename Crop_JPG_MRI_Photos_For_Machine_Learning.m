
%insert directory below
ims = dir("*.jpg");
ims = struct2cell(ims);
ims = ims(1,:);

for f = ims
    im_data = imread(f{1});
    imshow(im_data);
    set(gcf,"Position",[0,0,1000,1000]);
    while 1
        [~,~,key] = ginput(1)
        switch key
            case 28
                Subfolder = "No Herniation" %Left key
                break
            case 29
                Subfolder = "Mild Herniation" %Right key
                break
            case 30
                Subfolder = "Severe Herniation" %Up Key 
                break
        end
    end
    rect = getrect();
    cropped = imcrop(im_data,rect);
    imwrite(cropped,strcat("Data Cropped\",Subfolder,"\",f))

end

close("all")