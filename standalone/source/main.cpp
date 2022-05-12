#include <fmt/core.h>

#include <OAC/cache/matrix.hpp>
#include <chrono>
#include <cxxopts.hpp>

using namespace std;
using namespace OAC;

void setOpts(int *r1, int *r2, int *c1, int *c2, string *mode, cxxopts::Options *options, int argc,
             char **argv) {
  // clang-format off
  options->add_options()
    ("h,help", "Print help")
    ("a,rowsM1", "Rows Matrix 1", cxxopts::value<int>())
    ("b,colsM1", "Cols Matrix 1", cxxopts::value<int>())
    ("c,rowsM2", "Rows Matrix 2", cxxopts::value<int>())
    ("d,colsM2", "Cols Matrix 2", cxxopts::value<int>())
    ("m,mode", "Algorithm to be used -> o=classic | t=transposed", 
     cxxopts::value<string>()->default_value("o"));
  // clang-format on
  try {
    options->positional_help("").show_positional_help();
    options->parse_positional({"rowsM1", "colsM1", "rowsM2", "colsM2", "mode"});

    auto params = options->parse(argc, argv);

    if (!params.count("rowsM1") || !params.count("colsM1") || !params.count("rowsM2")
        || !params.count("colsM2")) {
      cout << "Wrong number of arguments" << endl;
      cout << options->help({"", "Group"}) << endl;
      exit(0);
    }
    if (params.count("help")) {
      cout << options->help({"", "Group"}) << endl;
      exit(0);
    }
    (*r1) = params["rowsM1"].as<int>();
    (*c1) = params["colsM1"].as<int>();
    (*r2) = params["rowsM2"].as<int>();
    (*c2) = params["colsM2"].as<int>();
    (*mode) = params["mode"].as<string>();

    if ((*mode) != "t" && (*mode) != "o")
      throw cxxopts::OptionException("Invalid mode! Available modes are 'o' | 't'\n");
  } catch (const cxxopts::OptionException &e) {
    cout << "\nError: " << e.what() << endl;
    cout << options->help({"", "Group"}) << endl;
    exit(0);
  }
}

auto main(int argc, char **argv) -> int {
  cxxopts::Options options("matrix cache multiplier", "compare matrix multiply performance");
  int r1, r2, c1, c2;
  string mode;
  chrono::system_clock::time_point functionStart;
  common_type_t<chrono::duration<long int, ratio<1, 1000000000>>> executionTimePoint;

  setOpts(&r1, &r2, &c1, &c2, &mode, &options, argc, argv);

  vector<vector<double>> matrix1 = Matrix::createRandomMatrix(r1, c1);
  vector<vector<double>> matrix2 = Matrix::createRandomMatrix(r2, c2);

  if (mode == "o") {
    functionStart = chrono::high_resolution_clock::now();
    vector<vector<double>> result = Matrix::multiply(&matrix1, &matrix2);
    executionTimePoint = chrono::high_resolution_clock::now() - functionStart;
  } else {
    functionStart = chrono::high_resolution_clock::now();
    vector<vector<double>> result2 = Matrix::cacheMultiply(&matrix1, &matrix2);
    executionTimePoint = chrono::high_resolution_clock::now() - functionStart;
  }

  long long finalTime = chrono::duration_cast<chrono::milliseconds>(executionTimePoint).count();
  cout << "mode '" << mode << "': " << finalTime << " ms" << endl;

  // long long finalTime = chrono::duration_cast<chrono::nanoseconds>(executionTimePoint).count();
  // cout << "mode '" << mode << "': " << finalTime << " ns" << endl;
  return 0;
}
