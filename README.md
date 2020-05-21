# `fastq-multx`

This is the work of:

Erik Aronesty (2013). TOBioiJ : "Comparison of Sequencing Utility Programs", DOI:10.2174/1875036201307010001

# Changes

 The Versioning here is awful. I've bumped the version with no alterations to
 the original algorithm of Erik.

# Build

```
git clone https://github.com/brwnj/fastq-multx
cd fastq-multx
make
```

Sequences are sometimes output to STDOUT in a different order on OS X versus
Redhat, therefore some tests may fail.

# Example Usage

## Single index

```
fastq-multx -B barcodes.tsv -m 0 \
    Undetermined_S0_L001_I1_001.fastq.gz \
    Undetermined_S0_L001_R1_001.fastq.gz \
    Undetermined_S0_L001_R2_001.fastq.gz \
    -o n/a -o %_R1.fastq -o %_R2.fastq
```

## Dual Index

```
fastq-multx -B barcodes.tsv -m 0 \
    Undetermined_S0_L001_I1_001.fastq.gz \
    Undetermined_S0_L001_I2_001.fastq.gz \
    Undetermined_S0_L001_R1_001.fastq.gz \
    Undetermined_S0_L001_R2_001.fastq.gz \
    -o n/a -o n/a -o %_R1.fastq -o %_R2.fastq
```
