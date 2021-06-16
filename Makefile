

giftcardreader: giftcardreader.c
	gcc -o giftcardreader giftcardreader.c && ./giftcardreader 1 examplefile.gft

giftcardexamplewriter:
	gcc -o giftcardexamplewriter giftcardexamplewriter.c && ./giftcardexamplewriter

testcrash1:
	./giftcardreader 1 part2/crash1.gft
	
testcrash2:
	./giftcardreader 1 part2/crash2.gft
	
testhang:
	./giftcardreader 1 part2/hang.gft
	
testsuite: 
	for name in test_suite/*; do \
		echo $$name; \
		./giftcardreader 1 $$name; \
		./giftcardreader 2 $$name; \
	done


