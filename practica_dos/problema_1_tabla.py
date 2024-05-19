def logic_function(A4, A3, A2, A1, A0):
    return ((not A3 and A1 and A0) or
            (not A4 and not A3 and not A2 and A1) or
            (not A4 and A2 and not A1 and A0) or
            (A4 and A3 and A2 and A0) or
            (not A4 and not A2 and A1 and A0) or
            (A4 and not A3 and not A2 and A0))

print("A4 A3 A2 A1 A0 | L")
for A4 in [0, 1]:
    for A3 in [0, 1]:
        for A2 in [0, 1]:
            for A1 in [0, 1]:
                for A0 in [0, 1]:
                    L = logic_function(A4, A3, A2, A1, A0)
                    print(f"{A4}  {A3}  {A2}  {A1}  {A0} | {int(L)}")
