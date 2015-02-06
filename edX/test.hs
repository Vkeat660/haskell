dubble x = x + x
qubble x = dubble $ dubble x
fubble x = product [1..x]
aubble xs = sum xs `div` length xs
