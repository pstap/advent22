NB. Advent of Code 2022 Day 1

NB. input file
input      =: '/home/peter/src/JProjects/advent22/data/d1'
input_path =: < input,'/input.txt'

NB. parse the input data
getData =: {{ {{; ". each y }} each  <;._1 (<'') , <;._2 ] 1!:1 y }}

NB. Solution 1
] Solution1 =. >./+/&> getData input_path

NB. Solution 2
] Solution2 =. +/ 3 {. \:~ +/&> getData input_path
