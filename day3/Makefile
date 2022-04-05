# 
# Makefile
#
# Darren Kessner
# HPC Training Workshop
# Cedars-Sinai Medical Center
# April 2022
#


# $* stem of implicit rule match 
# $@ target 
# $< first prerequisite


%.all: %.catcount %.len
	echo Processing task $*

%.fa:
	./extract_species.py bacteria.fasta $* > $@

%.catlist: %.fa
	./find_cats.sh $< > $@

%.catcount: %.catlist
	./count_cats.sh $< > $@

%.len: %.fa
	./get_sequence_length.sh $< > $@

clean:
	rm -rf *.fa *.catcount *.catlist *.len

# don't delete intermediate files
.PRECIOUS: %.fa %.catlist %.catcount %.len

