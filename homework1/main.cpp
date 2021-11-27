#include <iostream>
#include <cmath>
#include <fstream>
#include <iomanip>

double dot_product(double x_1, double y_1, double x_2, double y_2){
    return x_1*x_2+y_1*y_2;
}

double distance(double x, double y, double x_0, double y_0){
    return (sqrt(dot_product(x, y, x, y)) * sqrt(1 - dot_product(x,y,x_0,y_0)* dot_product(x,y,x_0,y_0)/(dot_product(x,y,x,y)*
                                                                                                   dot_product(x_0,y_0,x_0,y_0))));
}


int main() {
    double x_start, y_start, X, Y, tolerance = 1e-6;
    double max_left = 0, max_right = 0, X_leftmost = 0, Y_leftmost = 0, X_rightmost = 0, Y_rightmost = 0;
    int n = 0;
    std::ifstream F;
    F.open("in.txt");
    if (F) {
        F >> x_start;
        F >> y_start;
            while (!F.eof()) {
                F >> X;
                F >> Y;
                double distance_check = distance(X,Y,x_start,y_start);
                if (((dot_product(X, Y, -y_start, x_start)) >= 0) && (distance_check >= max_left - tolerance)) {
                    max_left = distance(X, Y, x_start, y_start);
                    X_leftmost = X;
                    Y_leftmost = Y;
                }

                if (((dot_product(X, Y, -y_start, x_start)) < 0) && (distance_check >= max_right - tolerance)) {
                    max_right = distance(X, Y, x_start, y_start);
                    X_rightmost = X;
                    Y_rightmost = Y;
                }
                n++;
            }
            std::cout << "Leftmost: " << X_leftmost << " " << Y_leftmost << std::endl;
            std::cout << "Rightmost: "  << X_rightmost << " " << Y_rightmost << std::endl;
    }
}
