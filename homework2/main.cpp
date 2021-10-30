#include <iostream>
#include <cmath>
#include <fstream>


int main() {
    double x_0 = 0, y_0 = 0, v_x = 0, v_y = 0, g = 9.81, answer = 0;
    int size = 0;
    std::ifstream in(R"(in.txt)");
    auto *TMP = new double;
    auto *X = new double;
    auto *Y = new double;
    if (in.is_open()){
        in >> y_0;
        in >> v_x;
        in >> v_y;
        int i = 0;
        while (!in.eof()) {
            in >> X[i];
            in >> Y[i];
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
        if (i == 0){
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
            answer = size + 1;
            break;
        }
        if (coordinate_final >= X[i] && coordinate_final <= X[i + 1]){
            answer = i + 1;
            break;
        }

    }
    std::cout << answer << std::endl;
}
