all: histogram.tsv

clean:
	rm -f words.txt histogram.tsv
	
words.txt: /usr/share/dict/words
	cp $< $@
	
histogram.tsv: histogram.R words.txt
	Rscript $<