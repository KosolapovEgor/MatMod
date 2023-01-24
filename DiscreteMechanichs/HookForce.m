function [Fx, Fy] =  HookForce(x1, x2, y1, y2, k, m, length_start)
        Fx = k/m*(1-length_start/(sqrt((x1-x2)^2+(y1-y2)^2)))*(x1-x2);
        Fy = k/m*(1-length_start/(sqrt((x1-x2)^2+(y1-y2)^2)))*(y1-y2);
end