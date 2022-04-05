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
	extract_species.py test.fasta $* > $@

%.catlist: %.fa
	tail -1 $< | grep -o -b CAT > $@

%.catcount: %.catlist
	cat $< | wc -l > $@

%.len: %.fa
	tail -1 $< | wc -c > $@

clean:
	rm *.fa *.catcount *.catlist *.len

# don't delete intermediate files
.PRECIOUS: %.fa %.catlist %.catcount %.len

