all: run-under-expect

clean:
	rm -f *.log *.sum expected.txt test

run-under-expect: test
	runtest test.exp

run-test-directly: test
	./test

test: test.c Makefile
	gcc -g test.c -o test

expected.txt: make-expected.py
	python make-expected.py > $@

diff: testrun.sum expected.txt
	diff -up expected.txt testrun.sum

testrun.sum: run-under-expect
