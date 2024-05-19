def logic_function(A, B, C, D):
    return ((C and D) or
            (B and D) or
            (B and C) or
            (A and C) or
            (A and B))

print("A B C D | S")
for A in [0, 1]:
    for B in [0, 1]:
        for C in [0, 1]:
            for D in [0, 1]:
                S = logic_function(A, B, C, D)
                print(f"{A} {B} {C} {D} | {int(S)}")
