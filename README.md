#`fastq-multx`

This is the work of:

Erik Aronesty (2013). TOBioiJ : "Comparison of Sequencing Utility Programs", DOI:10.2174/1875036201307010001

The version ends with 999 as I didn't want to play with the SVN repo versioning.

# Build
Currently this sometimes fails tests 3 and 4 as barcodes are not always output
in the same order even though the numbers add up.

```
git clone https://github.com/brwnj/fastq-multx
cd fastq-multx
make
```

# Example Usage

```
fastq-multx -B barcodes.tsv -m 0 \
    Undetermined_S0_L001_I1_001.fastq.gz \
    Undetermined_S0_L001_R1_001.fastq.gz \
    Undetermined_S0_L001_R2_001.fastq.gz \
    -o n/a -o %_R1.fastq -o %_R2.fastq
```
