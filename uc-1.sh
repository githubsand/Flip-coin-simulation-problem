#!/bin/bash -x
Head=1
Tail=0
flip_coin()
{
  output=$((RANDOM%2))
  if [[ $output -eq $Head ]]
  then
      echo "$outpot comes its mean Head "
  else
      echo "$output comes its mean Tail"
  fi
}
flip_coin
