function [sensitivity, specificity] = do_roc(image, target)
%ROC Summary of this function goes here
    [w, h] = size(image);
    
    tp = 0;
    tn = 0;
    fp = 0;
    fn = 0;
    for x = 1:w
        for y = 1:h
            av = image(x, y);
            tv = target(x, y);
            if (av == tv)
                if (av == 1) tp = tp + 1;
                else tn = tn + 1; end
            else
                if (av == 1) fp = fp + 1;
                else fn = fn + 1; end
            end
        end
    end
    
    sensitivity = tp / (tp + fn);
    specificity = tn / (tn + fp);
end

