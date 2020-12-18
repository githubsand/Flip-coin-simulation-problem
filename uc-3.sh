#!/bin/bash -x
echo "Read a Number and this number define howmany time we are flipping that coin"
read n
Head_count=0
Tail_count=0
Head=1
Tail=0
head_Win=0
tail_Win=0
i=$n
check_winner()
{
while  [[ $head_Win -lt 21 ]] && [[ $tail_Win -lt 21 ]]
do
  while [[ $n -gt 0 ]]
  do
    output=$((RANDOM%2))
    if [[ $Head -eq $output ]]
    then
        let Head_count++
    else
        let Tail_count++
    fi
      let n--
  done
 n=$i
if [[ $Head_count -gt $Tail_count ]]
then
    let head_Win++
elif [[ $Head_count -lt $Tail_count ]]
then
    let tail_Win++
else
    echo "Match are Tie no one win that match"
fi
done
if [[ $head_win -eq 21 ]] && [[ $tail_Win -eq 21 ]]
then
     echo "Game has been tied both are getting $head_Win points"
elif [[ $tail_Win -eq 21 ]]
then
    echo "Tail is winner of this game with $(($tail_Win-$head_Win)) points"

else
    echo "Head is winner of this game with $(($head_Win-$tail_Win)) points"
fi
}
check_winner
