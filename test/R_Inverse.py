# Iterative Python 3 program to find
# modular inverse using extended
# Euclid algorithm

# Returns modulo inverse of a with
# respect to m using extended Euclid
# Algorithm Assumption: a and m are
# coprimes, i.e., gcd(a, m) = 1


def modInverse(a, m):
    m0 = m
    y = 0
    x = 1

    if (m == 1):
        return 0

    while (a > 1):

        # q is quotient
        q = a // m

        t = m

        # m is remainder now, process
        # same as Euclid's algo
        m = a % m
        a = t
        t = y

        # Update x and y
        y = x - q * y
        x = t

    # Make x positive
    if (x < 0):
        x = x + m0

    return x


def calculate(x, y, r_inv, m):
    val = (x*y*r_inv) % m
    return val


def get_hex(val):
    return ('0x{}'.format(format(val, '032x')))


x = 98
y = 117
m = 93

#x = 17
#y = 22
#m = 23

bit_length = m.bit_length()
r_inv = modInverse(2**bit_length, m)
calculation = calculate(x, y, r_inv, m)
print("Modular multiplicative inverse is", get_hex(r_inv))
print(
    "Calculation of\n  {0} (x)\n* {1} (y)\n* {2} (r_inv)\n% {3} (m)\n\n= {4} (T)".format(get_hex(x), get_hex(y), get_hex(r_inv), get_hex(m), get_hex(calculation)))
