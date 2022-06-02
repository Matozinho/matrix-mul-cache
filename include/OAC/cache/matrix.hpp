#pragma once

#include <vector>

namespace OAC {
namespace Matrix {
std::vector<std::vector<double>>
transpose(std::vector<std::vector<double>> *currentMatrix);

std::vector<std::vector<double>> createRandomMatrix(int rows, int cols);

void print(std::vector<std::vector<double>> *currentMatrix);

std::vector<std::vector<double>>
multiply(std::vector<std::vector<double>> *matrix1,
         std::vector<std::vector<double>> *matrix2);

std::vector<std::vector<double>>
cacheMultiply(std::vector<std::vector<double>> *matrix1,
              std::vector<std::vector<double>> *matrix2,
              long long *transpositionTime);
} // namespace Matrix
} // namespace OAC
