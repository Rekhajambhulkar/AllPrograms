#! /bin/bash -x

#Enter Day and Month Betweeen 20 march and june 20
echo "Enter Day and month:"
read day Month

if [[ (( $Month -eq 3 && $day -gt 20 && $day -lt 31)) ||
      (( $Month -eq 4 && $day -gt 1 && $day -lt 30)) ||
      (( $Month -eq 5 && $day -gt 1 && $day -lt 31)) ||
      (( $Month -eq 6 && $day -gt 1 && $day -lt 20)) ]];
then
echo "true"
else
echo "falase"
fi
