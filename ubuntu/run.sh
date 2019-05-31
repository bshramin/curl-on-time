while true; do
  # day=$(date +"%p")
  sec=$(date +"%S")
  min=$(date +"%M")
  hr=$(date +"%I")

  TGH=8
  TGMmin=29
  TGMmax=30
  TGSmin=58
  TGSmax=1


  if [ $hr -eq $TGH ] && ( ( [ $min -eq $TGMmin ] && [ $sec -gt $TGSmin ] ) || ( [ $min -eq $TGMmax ] && [ $sec -lt $TGSmax ] ) );then    
    
    echo $hr : $min : $sec

    sh ./curl1.sh &
    sh ./curl2.sh &
    sh ./curl3.sh &
    sh ./curl4.sh &

    printf "\n"

  fi
done
