#!/bin/bash -x
echo "Read a Number and this number define howmany time we are flip the coin"
read n
Head_count=0
Tail_count=0
Head=1
Tail=0
check_winner()
{
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
if [[ $Head_count -gt $Tail_count ]]
then
    echo "Head is a Winner and its get $Head_count time Head"
elif [[ $Head_count -lt $Tail_count ]]
then
    echo "Tail is a Winner and its get $Tail_count time Tail"
else
    echo "Match are Tie no one win that match"
fi
}
check_winner

