buf = ''
for i in range(500):
    buf += str(i % 10)
    print('PASS:  %i: %s' % (i, buf))
