let startFrom = process.argv[2];
let endAt = process.argv[3];
let requiredSum = process.argv[4]; 
let sumOfDigits = "";
while((+startFrom) <= (+endAt)){
  for(let index = 0; index < startFrom.length; index++){
    sumOfDigits = (+sumOfDigits) + (+startFrom[index])
  }
  if ( sumOfDigits == requiredSum ){
    console.log( +startFrom );
  }
  +startFrom++;
  startFrom=""+startFrom;
  sumOfDigits = "";
}
