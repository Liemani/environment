#!/bin/bash



push_swap=push_swap
checker=checker_Mac



if [[ $# -ne 2 ]]; then
	echo 'usage: aux push_swap_test <number> <times>'
	exit 0
fi



number=$1
times=$2



if [[ $number -le 3 ]]; then
	limit=2
elif [[ $number -le 6 ]]; then
	limit=12
elif [[ $number -le 100 ]]; then
	limit=700
elif [[ $number -le 500 ]]; then
	limit=5300
fi



biggest_instruction_count=0
while [[ $times -gt 0 ]]; do
	ARG=$(ruby -e "puts (1..$number).to_a.shuffle.join(' ')")

	./$push_swap $ARG > .push_swap_result
	checker_result=$(cat .push_swap_result | ./$checker $ARG)
	instruction_count=$(cat .push_swap_result | wc -l)

	echo "[$checker_result]	instruction count: $instruction_count"
	if [[ $checker_result != OK || $instruction_count -gt $limit ]]; then
		echo "Issue arguments: $ARG"
	fi

	if [[ $instruction_count -gt $biggest_instruction_count ]]; then
		biggest_instruction_count=$instruction_count
		biggest_input=$ARG
	fi

	times=$((times - 1))
done



echo
echo "biggest_instruction_count instruction count: [$biggest_instruction_count]"
echo "arguments: $biggest_input"
