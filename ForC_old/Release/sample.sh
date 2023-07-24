rm FecGenerator.log &2> /dev/null
rm FecDecoder.log &2> /dev/null

./FecGenerator auto source=sample.mpeg dest=sample.out vvv

./FecDecoder source=sample.out destRaw=sample.out.mpeg vvv
