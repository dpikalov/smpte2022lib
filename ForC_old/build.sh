cd ./CodeBlocks

gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/algo_structs/sBufferFec.c -o ../Release/Code/algo_structs/sBufferFec.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/algo_structs/sBufferMedia.c -o ../Release/Code/algo_structs/sBufferMedia.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/algo_structs/sCrossFec.c -o ../Release/Code/algo_structs/sCrossFec.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/algo_structs/sPaquetFec.c -o ../Release/Code/algo_structs/sPaquetFec.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/algo_structs/sPaquetMedia.c -o ../Release/Code/algo_structs/sPaquetMedia.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/algo_structs/sSeqNx.c -o ../Release/Code/algo_structs/sSeqNx.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/algo_structs/sWaitFec.c -o ../Release/Code/algo_structs/sWaitFec.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/algorithmes/sBruteSmpte.c -o ../Release/Code/algorithmes/sBruteSmpte.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/algorithmes/sDavidSmpte.c -o ../Release/Code/algorithmes/sDavidSmpte.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/common/console.c -o ../Release/Code/common/console.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/common/messages.c -o ../Release/Code/common/messages.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/data_structs/sChampBits.c -o ../Release/Code/data_structs/sChampBits.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/data_structs/sLinkedList.c -o ../Release/Code/data_structs/sLinkedList.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/data_structs/sRbTree.c -o ../Release/Code/data_structs/sRbTree.o
gcc -fexpensive-optimizations -O2 -Wmain  -c ../Code/utilities/sTewfiq.c -o ../Release/Code/utilities/sTewfiq.o
gcc -Wall -O2  -c ../Code/demonstrateurs/FecGenerator.c -o ../Code/demonstrateurs/FecGenerator.o
gcc  -o ../Release/FecGenerator ../Code/demonstrateurs/FecGenerator.o  -s  ../Release/libSmpte-2022-.a

rm -f ../Release/libSmpte-2022-.a
ar -r -s ../Release/libSmpte-2022-.a ../Release/Code/algo_structs/sBufferFec.o ../Release/Code/algo_structs/sBufferMedia.o ../Release/Code/algo_structs/sCrossFec.o ../Release/Code/algo_structs/sPaquetFec.o ../Release/Code/algo_structs/sPaquetMedia.o ../Release/Code/algo_structs/sSeqNx.o ../Release/Code/algo_structs/sWaitFec.o ../Release/Code/algorithmes/sBruteSmpte.o ../Release/Code/algorithmes/sDavidSmpte.o ../Release/Code/common/console.o ../Release/Code/common/messages.o ../Release/Code/data_structs/sChampBits.o ../Release/Code/data_structs/sLinkedList.o ../Release/Code/data_structs/sRbTree.o ../Release/Code/utilities/sTewfiq.o

# FecGenerator
gcc -Wall -O2  -c ../Code/demonstrateurs/FecGenerator.c -o ../Code/demonstrateurs/FecGenerator.o
gcc  -o ../Release/FecGenerator ../Code/demonstrateurs/FecGenerator.o  -s  ../Release/libSmpte-2022-.a

# FecDecoder
gcc -Wall -O2 -c ../Code/demonstrateurs/FecDecoder.c -o ../Code/demonstrateurs/FecDecoder.o
gcc -o ../Release/FecDecoder ../Code/demonstrateurs/FecDecoder.o ../Release/Code/algo_structs/sSeqNx.o -s  ../Release/libSmpte-2022-.a

# ErrorsGenerator
gcc -Wall -O2 -W -Wall  -c ../Code/demonstrateurs/ErrorsGenerator.c -o ../Code/demonstrateurs/ErrorsGenerator.o
gcc  -o ../Release/ErrorsGenerator ../Code/demonstrateurs/ErrorsGenerator.o  -s  ../Release/libSmpte-2022-.a
