giftcardreader: giftcardreader.c
	gcc -o giftcardreader giftcardreader.c && ./giftcardreader 1 examplefile.gft


giftcardexamplewriter:
	gcc -o giftcardexamplewriter giftcardexamplewriter.c && ./giftcardexamplewriter

testcrash1:
	./giftcardreader 1 bugs/crash1.gft
	
testcrash2:
	./giftcardreader 1 bugs/crash2.gft
	
testhang:
	./giftcardreader 1 bugs/hang.gft	


