function [Max_Acceleration_Last_Point, Length_Time, Coordinates_x, Coordinates_y, Velocities_x, Velocities_y] = Solution(m, k, friction_air, g, T)


Points_x = 0:0.1:2;
num = length(Points_x);
for i = 1:num
    Points_y(i) = (Points_x(i)-1)^2-1;
end
h = 1e-5;
for i = 1:num-1
    Length_start(i) = sqrt((Points_x(i)-Points_x(i+1))^2+(Points_y(i)-Points_y(i+1))^2);
end
Time = 0:h:T;
Length_Time = length(Time);
Coordinates_x = zeros(length(Time), num);
Coordinates_y = zeros(length(Time), num);
for i = 1:num
    Coordinates_x(1,i) = Points_x(i);
    Coordinates_y(1,i) = Points_y(i);
end
Velocities_x = zeros(length(Time), num);
Velocities_y = zeros(length(Time), num);
Velocities_Assist_x = zeros(1, num);
Velocities_Assist_y = zeros(1, num);

for i = 2:length(Time)
    for j = 1:num-1
        [FHook_x(j), FHook_y(j)] = HookForce(Coordinates_x(i-1,j), Coordinates_x(i-1,j+1), Coordinates_y(i-1,j), Coordinates_y(i-1,j+1),k,m, Length_start(j));
    end
    FHook_x(num) = 0;
    FHook_y(num) = 0;

    for j = 2:num
        Velocities_Assist_x(j) = Velocities_x(i-1,j) + 1/2*h*(-FHook_x(j) + FHook_x(j-1)-friction_air/m*Velocities_x(i-1,j));
        Velocities_Assist_y(j) = Velocities_y(i-1,j) + 1/2*h*(-FHook_y(j) + FHook_y(j-1) - g-friction_air/m*Velocities_y(i-1,j));
    end

    for j = 1:num
        Coordinates_x(i,j) = Coordinates_x(i-1,j) + h*Velocities_Assist_x(j);
        Coordinates_y(i,j) = Coordinates_y(i-1,j) + h*Velocities_Assist_y(j);
    end

    for j = 1:num-1
        [FHook_x(j), FHook_y(j)] = HookForce(Coordinates_x(i,j), Coordinates_x(i,j+1), Coordinates_y(i,j), Coordinates_y(i,j+1),k,m, Length_start(j));
    end

    for j = 2:num
        Velocities_x(i,j) = Velocities_Assist_x(j) + 1/2*h*(-FHook_x(j) + FHook_x(j-1) - friction_air/m*Velocities_x(i-1,j));
        Velocities_y(i,j) = Velocities_Assist_y(j) + 1/2*h*(-FHook_y(j) + FHook_y(j-1) - g - friction_air/m*Velocities_y(i-1,j));
    end
end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     


Acceleration_x = zeros(length(Time), num);
Acceleration_y = zeros(length(Time), num);
Module_Acceleration = zeros(length(Time), num);
 for i = 2:length(Time)
     for j = 1:num
        Acceleration_x(i,j) = (Velocities_x(i,j) - Velocities_x(i-1,j))/h;
        Acceleration_y(i,j) = (Velocities_y(i,j) - Velocities_y(i-1,j))/h;
        Module_Acceleration(i,j) = sqrt(Acceleration_x(i,j)^2+Acceleration_y(i,j)^2);
     end
 end


 Max_Acceleration = max(Module_Acceleration);
 Max_Acceleration_Last_Point = Max_Acceleration(num);

end