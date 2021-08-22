function drawboxblue(model,im,bw)

%----------------REFER DRAWBOXRED FOR CHANGES----------%

labels = ["Speed Limit 20" "Speed Limit 30" "Speed Limit 50" "Speed Limit 60" "Speed Limit 70" "Speed Limit 80" "Speed Limit 80" "Speed Limit 100" "Speed Limit 120" "No Overtaking" "No Overtaking by Trucks" "Crossroads" "Priority road" "Priority road ahead" "Stop" "Prohibited for all vehicles" "Loaded weight of above 3.5 tons prohibited" "Entry prohibited" "Danger/ Caution" "Left bend" "Right bend" "Double bend(First to Left)" "Uneven road" "Slippery road when wet or dry" "Road narrows on right side" "Road works" "Light signals" "Pedestrians" "Children" "Cyclist crossing" "Danger of Snow or Ice" "Wild animals crossing" "Restriction ends" "Compulsory turn Right ahead" "Compulsory turn Left ahead" "Compulsory Ahead only" "Ahead or turn Right" "Ahead or turn Left" "Compulsory keep Right" "Compulsory keep Left" "Traffic circle" "End of no passing zone" "End of no passing zone"];
bw = bwareaopen(bw,100);
bw = imfill(bw, 'holes');

[l,n] = bwlabel(bw);
bm = regionprops(l,'Perimeter', 'Area', 'BoundingBox');

for k = 1:n 
        peri = bm(k).Perimeter;
        area = bm(k).Area;
        circularity =  (peri*peri)/(4*pi*area);
        v = bm(k).BoundingBox;
        v(1) = v(1)-10;
        v(2) = v(2)-10;
        v(4) = v(4)+20;
        v(3) = v(3)+20;
        width_height_ratio = v(3)/v(4);
        if area>260 && width_height_ratio>0.4
            if circularity>0.9 && circularity<3.75
                
                ClassName = recognize(model,im,v);
                if ClassName<43
                    txt = labels(ClassName+1);
                    rectangle('Position',v,'Edgecolor','r');
                    text(v(1), v(2)-15, txt,'color','green');
                end



            elseif circularity>4.2 && circularity<7.5
                ClassName = recognize(model,im,v);
                if ClassName<43
                    txt = labels(ClassName+1);
                    rectangle('Position',v,'Edgecolor','r');
                    text(v(1), v(2)-15, txt,'color','green');
                end

            end
        end
end
end