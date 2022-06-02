#!/usr/bin/env bash
baseFilename='report'

sed -i 's/CMAKE_CXX_FLAGS_RELEASE "-O3"/CMAKE_CXX_FLAGS_RELEASE "-O0"/' CMakeLists.txt
./build.sh -RF
./build.sh -rP "400 400 400 400 t"

mkdir -p report/O0/o
mkdir -p report/O0/t

rm -rf report/O0/o/*
rm -rf report/O0/t/*

for size in $(seq 200 200 2000); do
	printf "matrix size: %s\n" "$size"
	for j in {1..10}; do
		result=$(./build.sh -rP "$size $size $size $size")
		printf "%s\n" "$result" >>"$baseFilename/O0/o/$size.txt"
	done
	for j in {1..10}; do
		result=$(./build.sh -rP "$size $size $size $size t")
		printf "%s\n" "$result" >>"$baseFilename/O0/t/$size.txt"
	done
	echo "finished iteration of size $size"
done

sed -i 's/CMAKE_CXX_FLAGS_RELEASE "-O0"/CMAKE_CXX_FLAGS_RELEASE "-O3"/' CMakeLists.txt
./build.sh -RF
./build.sh -rP "400 400 400 400 t"

mkdir -p report/O3/o
mkdir -p report/O3/t

rm -rf report/O3/o/*
rm -rf report/O3/t/*

for size in $(seq 200 200 2000); do
	printf "matrix size: %s\n" "$size"
	for j in {1..10}; do
		result=$(./build.sh -rP "$size $size $size $size")
		printf "%s\n" "$result" >>"$baseFilename/O3/o/$size.txt"
	done
	for j in {1..10}; do
		result=$(./build.sh -rP "$size $size $size $size t")
		printf "%s\n" "$result" >>"$baseFilename/O3/t/$size.txt"
	done
	echo "finished iteration of size $size"
done

# mkdir -p report/lowers/o
# mkdir -p report/lowers/t
#
# rm -rf report/lowers/o/*
# rm -rf report/lowers/t/*
#
# for size in $(seq 10 10 250); do
# 	printf "matrix size: %s\n" "$size"
# 	for j in {1..10}; do
# 		result=$(./build.sh -rP "$size $size $size $size")
# 		printf "%s\n" "$result" >>"$baseFilename/lowers/o/$size.txt"
# 	done
# 	for j in {1..10}; do
# 		result=$(./build.sh -rP "$size $size $size $size t")
# 		printf "%s\n" "$result" >>"$baseFilename/lowers/t/$size.txt"
# 	done
# 	echo "finished iteration of size $size"
# done
#
# mkdir -p report/biggers/o
# mkdir -p report/biggers/t
#
# rm -rf report/biggers/o/*
# rm -rf report/biggers/t/*
#
# for size in 3000 5000 10000 100000 200000; do
# 	printf "matrix size: %s\n" "$size"
# 	for j in {1..10}; do
# 		result=$(./build.sh -rP "$size $size $size $size")
# 		printf "%s\n" "$result" >>"$baseFilename/biggers/o/$size.txt"
# 	done
# 	for j in {1..10}; do
# 		result=$(./build.sh -rP "$size $size $size $size t")
# 		printf "%s\n" "$result" >>"$baseFilename/biggers/t/$size.txt"
# 	done
# 	echo "finished iteration of size $size"
# done
