#! /usr/bin/awk -f
BEGIN{
   srand
}

{ 
  random_num=int(rand*4)

  print "ENTER NUMBER"
  getline guess
  if (guess==random_num){
    print "you are correct"
  } else{
    print "you are wrong. Number is "random_num
  }
  print "GAME END! TRY FOR MORE GUESS"
  print "press ENTER"
}
