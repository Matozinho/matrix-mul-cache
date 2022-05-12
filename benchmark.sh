#!/usr/bin/env bash
# filename='benchmark.txt'

# for size in $(seq 200 200 2000); do
# 	printf "matrix size: %s\n\n" "$size" >>$filename
# 	for j in {1..10}; do
# 		result=$(./build.sh -rP "$size $size $size $size")
# 		printf "%s\n" "$result" >>$filename
# 	done
# 	printf "\n" >>$filename
# 	for j in {1..10}; do
# 		result=$(./build.sh -rP "$size $size $size $size t")
# 		printf "%s\n" "$result" >>$filename
# 	done
# 	printf "\n" >>$filename
# 	echo "finished iteration of size $size"
# done

# filename='lowerMatrixes.txt'
# for size in $(seq 2 250); do
# 	printf "matrix size: %s\n\n" "$size" >>$filename
# 	for j in {1..10}; do
# 		result=$(./build.sh -rP "$size $size $size $size")
# 		printf "%s\n" "$result" >>$filename
# 	done
# 	printf "\n" >>$filename
# 	for j in {1..10}; do
# 		result=$(./build.sh -rP "$size $size $size $size t")
# 		printf "%s\n" "$result" >>$filename
# 	done
# 	printf "\n" >>$filename
# 	echo "finished iteration of size $size"
# done

filename='bigMatrixes.txt'

for size in 3000 5000 10000 100000 200000; do
	printf "matrix size: %s\n\n" "$size" >>$filename
	for j in {1..10}; do
		result=$(./build.sh -rP "$size $size $size $size")
		printf "%s\n" "$result" >>$filename
	done
	printf "\n" >>$filename
	for j in {1..10}; do
		result=$(./build.sh -rP "$size $size $size $size t")
		printf "%s\n" "$result" >>$filename
	done
	printf "\n" >>$filename
	echo "finished iteration of size $size"
done
