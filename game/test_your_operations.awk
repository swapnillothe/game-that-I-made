#! /usr/bin/awk -f
BEGIN{
  Your_score=0
  count=0
  srand()
  system("clear")
  random_num1=int(rand*100)
  random_num2=int(rand*50)
  operations[1]="+"
  operations[2]="-"
  operations[3]="*"
  operations[4]="/"
  random_operation=int(rand*4)+1
  print "                    {WELCOME to world of numbers and operations.}" 
  print "                   Check yourself how good you are in operations!"
  print "                       Solve:"
  print "                        "random_num1 operations[random_operation] random_num2
  print "                  For every corrected answer, 10 marks"
  print "              Note: For every wrong answer 5 marks will be deducted" 
}
{
  Your_answer=$0
}
{
  if(random_operation==1){
    answer=random_num1+random_num2
  }
  if(random_operation==2){
    answer=random_num1-random_num2
  }
  if(random_operation==3){
    answer=random_num1*random_num2
  }
  if(random_operation==4){
    answer=random_num1/random_num2
  }
  if(answer==Your_answer){
    print "               Congratulation! Your_answer is correct"
    count++
         Your_score+=10

  } else {
  print "               Sorry! correct_answer is "answer
  print "                        Try for next"
  count++
       Your_score-=5
}
print "                    Your score is "Your_score
}
{
  if(count<=10){
    random_num1=int(rand*100)
    random_num2=int(rand*50)
    random_operation=int(rand*4)+1
    print "                           Solve"
    print "                     "random_num1 operations[random_operation] random_num2
  } else{

  exit
  }
}

