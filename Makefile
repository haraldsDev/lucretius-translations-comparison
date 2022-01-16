BOOKS=1656en 1872en 1916en eng_DIRECT 1743en 1886en 1936en latin

FREQLISTS=$(BOOKS:%=results/%.tok)
#  SENTEDBOOKS=$(BOOKS:%=results/%.sent.txt)
#BIGFILE=$(BOOKs:%= >>)

all: $(FREQLISTS)

#clean:
#	rm -f results/* data/*no_md.txt

#data/all.no_md.txt: data/alice.txt data/christmas_carol.txt
#	python3 src/remove_gutenberg_metadata.py  $^ $@
# – not sure what to do and where:
# python3 src ... | cat $^ >> $@
# cat $^ >> $@ | python3 src....
# BIGFILE=$(BOOKS:%= >> ?? ))


#%.no_md.txt: %.txt
#	python3 src/remove_gutenberg_metadata.py $< $@

results/%.tok: tr-files/%.src 
	bash freqlist.sh $< $@

#results/%.sent.txt: data/%.no_md.txt
#	src/sent_per_line.sh $< $@
