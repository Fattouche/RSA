def generate_r_squared():
    m = 0xfb10458be6c5468e0b603ea54d107ed
    result = (1 << (m.bit_length()*2)) % m
    print(result)


generate_r_squared()
