#!/bin/bash
rm -r test*/ dest/
mkdir -p test/{a..d}/{1..5}
touch test/{a..d}/{1..5}/{1..3}.txt
mkdir -p test2/{"a b","c d"}/{"1 2","3 4"}
touch test2/{"a b","c d"}/{"1 2","3 4"}/{"1 2","3 4","5 6"}.txt

bash ./copy.sh test dest/
bash ./copy.sh test2 dest/

