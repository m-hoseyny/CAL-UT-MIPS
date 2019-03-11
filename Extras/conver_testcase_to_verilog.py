operands = []
with open('benchmarks.v', 'r') as f:
    lines = f.readlines()
    i = 0
    for line in lines:
        operand = line.split('\t')[1].strip()
        operand = operand.replace('_', '')
        operand = "\t\t32'd{}  : Instruction = ".format(i) + operand
        print(operand)
        operands.append(operand)
        i += 4

with open('benchmarks_clear.v', 'w') as f:
    f.write('\n'.join(operands))
    