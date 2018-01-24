README: simple-consensus-per-read-group
	./$< --help > $@

test: testdata
	cram -v t


sam := $(wildcard t/data/*.sam)
bam := $(sam:.sam=.bam)
bai := $(bam:.bam=.bam.bai)

testdata: $(bam) $(bai)

%.bam: %.sam
	samtools view -b $< > $@

%.bam.bai: %.bam
	samtools index $<
