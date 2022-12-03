NB. Solutions
getData =: {{ {{; ". each y }} each  <;._1 (<'') , <;._2 ] 1!:1 y }}
data =. getData <'/home/peter/src/JProjects/aoc22/data/d1/input.txt'
] Solution1 =. >./+/&>data
] Solution2 =. +/ 3 {. \:~ +/&>data