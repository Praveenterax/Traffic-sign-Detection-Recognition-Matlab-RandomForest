function [br,bb,by,or] = rybmasks(im)


%---------------------------ADD YOUR NECESSARY MASKS-------------------%

%---------------------------RED MASKS----------------------------------%
    bvr = vibred(im);
    bdr = darkred(im);
    bdir = dimred(im);
    blr = blackred(im);
    ar = addred(im);
    sr = shinered(im);
    sur = sunred(im);
    vblr = vblackred(im);
    lr = lowred(im);
    lor = lorange(im);
    sor = sunorange(im);
    osr=oversunred(im);
    br = bvr+bdr+bdir+blr+lor+ar+sr+vblr+sur+osr+sor+lr;

%-----------------------------------BLUE MASKS----------------------------%

    bm = bluemask(im);
    blb = blackblue(im);
    bb = bm+blb;
    
%---------------------------------YELLOW AND ORANGE MASKS-----------------%
    dy = deepyellow(im);
    gy = goldenyellow(im);
    ly = lightyellow(im);
    by = dy+gy+ly;
    
    
    or = orange(im);
    

end