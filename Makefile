CC=g++
CFLAGS=-O3 -I.

all: fastq-multx

%: %.cpp fastq-lib.cpp fastq-lib.h
	$(CC) $(CFLAGS) $< fastq-lib.cpp -o $@

check:
	prove -j 4 tests

clean:
	rm -rf fastq-multx tests/tmp/multx*
