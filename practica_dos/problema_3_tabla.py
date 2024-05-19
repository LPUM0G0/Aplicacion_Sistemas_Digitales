def logic_function(S1, S2, S3, S4):
    L1 = (S1 ^ S2) ^ (S3 ^ S4)
    L2 = (((not S1) and (not S2)) and (S3 ^ S4)) or (((not S3) and (not S4)) and (S1 ^ S2)) or (S1 and S2 and S3 and S4)
    return L1, L2

print("S1 S2 S3 S4 | L1 L2")
for S1 in [0, 1]:
    for S2 in [0, 1]:
        for S3 in [0, 1]:
            for S4 in [0, 1]:
                L1, L2 = logic_function(S1, S2, S3, S4)
                print(f"{S1}  {S2}  {S3}  {S4} | {int(L1)}  {int(L2)}")
