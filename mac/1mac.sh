while true; do
  sec=$(date +"%S")
  min=$(date +"%M")
  hr=$(date +"%I")
  day=$(date +"%p")
  if ([[ "$day" == "AM" ]] && [[ "$hr" == "08" ]]) && 
     ( ([[ "$min" == "29" ]] && [[ "$sec" > "57" ]]) ||
       ([[ "$min" == "30" ]] && [[ "$sec" < "03" ]]) ); then
    
    echo $hr $min $sec

    # curl 'https://online.agah.com/Order/SendOrder' -H 'Cookie: _ga=GA1.2.34406969.1543263199; _gid=GA1.2.1248286625.1546962776; SESSION_COOKIE=ctbmbqy22utovmzqmyxekr1f; .ASAONLINE=4018DEE90AC4187612531019363B12F6AEAC8CF9F30CBF968A6228DBD017310524135FAB6FC854B60EB66B2B3BC24978AB3C01A13FE132B32728D9CCF2BCAEA5C3885AFCF82358238453D4BDD1DD3A73991D1C9F74B3DF109EB247593CFC9AA05162EDE2; Username_COOKIE=ab04612; _gat=1' -H 'RequestVerificationToken: CxxR0nSUnhwaiK64AuWPiGSrOJe9Fp6i2tqlnZs3BKR5JdiZ9AmYOUAKYR9Fz-DQ7U_jSQKOMgjbrFDb3D9CiBVzigg1:vSG3aZzzhnxObsKD4w0auPKSnzNd-wt9wE20pR3b6RvNYuflt_ppbXOtAhMwIfCM7xu0JyYTod_DrpOWG6NZ5GI8b9Y1' -H 'Origin: https://online.agah.com' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9,fa-AF;q=0.8,fa;q=0.7' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' -H 'Content-Type: application/json;charset=UTF-8' -H 'Accept: application/json, text/plain, */*' -H 'Referer: https://online.agah.com/' -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --data-binary '{"Id":0,"CustomerId":165046537,"CustomerTitle":"امین بشیری ","OrderSide":"Buy","OrderSideId":1,"Price":10950,"Quantity":100,"Value":1000000,"ValidityDate":null,"MinimumQuantity":null,"DisclosedQuantity":null,"ValidityType":1,"InstrumentId":2450,"InstrumentIsin":"IRO1INFO0001","InstrumentName":"رانفور1","BankAccountId":0,"ExpectedRemainingQuantity":0,"TradedQuantity":0,"RemainingQuantity":99,"OrderExecuterId":3}' --compressed    
    
    
    printf "\n\n\n"
    # sleep 0.001;
  fi
done