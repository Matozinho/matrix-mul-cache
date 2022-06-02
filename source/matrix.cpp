#include <OAC/cache/matrix.hpp>
#include <chrono>
#include <iostream>
#include <vector>
#define MAX_NUMBERS 5000.0
// #define MAX_NUMBERS 10.0

using namespace std;

std::vector<std::vector<double>> OAC::Matrix::createRandomMatrix(int rows,
                                                                 int cols) {
  std::vector<std::vector<double>> randomMatrix(rows,
                                                std::vector<double>(cols, 0.0));

  // fill matrix with random numbers beetween 0 and 5000
  for (int i = 0; i < rows; i++)
    for (int j = 0; j < cols; j++)
      randomMatrix[i][j] = static_cast<double>(rand()) /
                           (static_cast<double>(RAND_MAX / MAX_NUMBERS));

  return randomMatrix;
}

std::vector<std::vector<double>>
OAC::Matrix::transpose(std::vector<std::vector<double>> *currentMatrix) {
  int rows = currentMatrix->size();
  int cols = (*currentMatrix)[0].size();

  std::vector<std::vector<double>> transpose(cols,
                                             std::vector<double>(rows, 1.0));

  for (int i = 0; i < rows; i++)
    for (int j = 0; j < cols; j++)
      transpose[j][i] = (*currentMatrix)[i][j];

  return transpose;
}

void OAC::Matrix::print(std::vector<std::vector<double>> *currentMatrix) {
  int rows = currentMatrix->size();
  int cols = (*currentMatrix)[0].size();

  for (int i = 0; i < rows; ++i) {
    for (int j = 0; j < cols; ++j) {
      cout << (*currentMatrix)[i][j] << " ";
    }
    cout << endl << endl;
  }
}

std::vector<std::vector<double>>
OAC::Matrix::multiply(std::vector<std::vector<double>> *matrix1,
                      std::vector<std::vector<double>> *matrix2) {
  int r1 = matrix1->size();
  int c1 = (*matrix1)[0].size();
  int c2 = (*matrix2)[0].size();
  int r2 = matrix2->size();

  if (c1 != r2)
    throw std::length_error("Matrixs are not compatible");

  std::vector<std::vector<double>> result(r1, std::vector<double>(c2, 0.0));

  for (int i = 0; i < r1; i++) {
    for (int j = 0; j < c2; j++) {
      result[i][j] = 0;
      for (int k = 0; k < r2; k++) {
        result[i][j] += (*matrix1)[i][k] * (*matrix2)[k][j];
      }
    }
  }

  return result;
}

std::vector<std::vector<double>>
OAC::Matrix::cacheMultiply(std::vector<std::vector<double>> *matrix1,
                           std::vector<std::vector<double>> *matrix2,
                           long long *transpositionTime) {
  int r1 = matrix1->size();
  int c1 = (*matrix1)[0].size();
  int c2 = (*matrix2)[0].size();
  int r2 = matrix2->size();
  chrono::system_clock::time_point functionStart;
  common_type_t<chrono::duration<long int, ratio<1, 1000000000>>>
      executionTimePoint;

  if (c1 != r2)
    throw std::length_error("Matrixs are not compatible");

  std::vector<std::vector<double>> result(r1, std::vector<double>(c2, 0.0));

  functionStart = chrono::high_resolution_clock::now();
  std::vector<std::vector<double>> matrix2Transposed =
      OAC::Matrix::transpose(matrix2);
  executionTimePoint = chrono::high_resolution_clock::now() - functionStart;
  *transpositionTime =
      chrono::duration_cast<chrono::milliseconds>(executionTimePoint).count();

  for (int i = 0; i < r1; i++) {
    for (int j = 0; j < c2; j++) {
      result[i][j] = 0;
      for (int k = 0; k < r2; k++) {
        result[i][j] += (*matrix1)[i][k] * matrix2Transposed[j][k];
      }
    }
  }

  return result;
}
