CC=gcc
CFLAGS=-Wall -Wno-unused-function -O2
PROG=fastq-multx

all: $(PROG)

fastq-multx: fastq-multx.cpp fastq-lib.cpp fastq-lib.h
	$(CC) $(CFLAGS) $< fastq-lib.cpp -o $@

check:
	prove -j 4 tests

clean:
	rm -rf fastq-multx tests/tmp/multx*
