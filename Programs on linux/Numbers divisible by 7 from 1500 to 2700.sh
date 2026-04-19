for((i=1500;i<2700;i++))
do
   if [ $((i%7)) -eq 0 ] && [ $((i%5)) -eq 0 ];then
      echo -n  "$i"
      echo
   fi
done
