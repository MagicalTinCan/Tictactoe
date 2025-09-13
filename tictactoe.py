from os import system

length = 3
width = 3
area = length*width

Spots = [0 for item in range(area)]

def symbol(tt):
	if tt in [0,1,2]:
		return ["#", "X", "O"][tt]
	else:
		return "ERR"

def printBoard():
	bb = ""
	for x in range(width):
		bb = bb + "----"
	bb = bb[:-3]
	for x in range(len(Spots)):
		print(symbol(Spots[x]), end="")
		if (x+1) % width == 0 and (x+1) != area:
			print("\n" + bb)
		elif (x+1) != area:
			print(" | ", end="")

printBoard()