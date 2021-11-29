#include <iostream>
#include <cmath>
#include <fstream>


int main() {
    double x_0 = 0, y_0 = 0, v_x = 0, v_y = 0, g = 9.81, answer = 0;
    int size = 0;
    double check, tmp;
    int n = 0;
    std::ifstream in_prev(R"(C:\Users\Thomas_Maddison\CLionProjects\Homework2\in.txt)");
    if (in_prev.is_open()){
        in_prev >> y_0;
        in_prev >> v_x;
        in_prev >> v_y;
        double t_end = (v_y+sqrt(v_y*v_y+2*g*y_0))/g;
        while ((!in_prev.eof()) && (check <= v_x*t_end + y_0)) {
            in_prev >> check;
            in_prev >> tmp;
            n++;
        }
    }
    in_prev.close();

    auto*X = new double[n];
    auto*Y = new double[n];

    std::ifstream in(R"(C:\Users\Thomas_Maddison\CLionProjects\Homework2\in.txt)");
    if (in.is_open()){
        in >> y_0;
        in >> v_x;
        in >> v_y;
        int i = 0;
        double t_end = (v_y+sqrt(v_y*v_y+2*g*y_0))/g;
        while ((!in.eof()) && (X[i - 1] <= v_x*t_end + y_0)) {
            in >> X[i];
            in >> Y[i];
            n++;
            i++;
            size++;
        }
    }
    in.close();
    double A_x = v_x, B_x = x_0, A_y = v_y, B_y = y_0, coordinate_final ;
    double t_end = (A_y+sqrt(A_y*A_y+2*g*B_y))/g;
    int direction = 1;

    for (int i = 0; (i >= 0) && (i <= size - 1); i = i + direction){
        if (i == size - 1){
            coordinate_final = A_x*t_end + B_x;
        }
        if ((i == 0) && (direction == -1)){
            coordinate_final = A_x*t_end + B_x;
        }
        if (i != size - 1 && i != 0) {
            double t_collision = (X[i + direction] - B_x) / A_x;
            if (t_collision < t_end) {
                if (g * t_collision * t_collision / 2 + A_y * t_collision + B_y <= Y[i]) {
                    A_x = -A_x;
                    B_x = 2 * A_x * t_collision + B_x;
                    direction = -1 * direction;
                }
            }
            if (t_collision >= t_end) {
                coordinate_final = A_x * t_end + B_x;
            }
        }
    }

    for (int i = 0; i <= size - 1; i++){
        if (coordinate_final <= X[0]){
            answer = 0;
            break;
        }
        if (coordinate_final >= X[size - 1]){
            answer = size;
            break;
        }
        if (coordinate_final >= X[i] && coordinate_final <= X[i + 1]){
            answer = i ;
            break;
        }
    }
    delete[] X;
    delete[] Y;
    std::cout << answer << std::endl;
}
