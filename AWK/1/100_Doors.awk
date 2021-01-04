#!/usr/bin/awk

BEGIN {

  for(numericValue=1; numericValue <= 100; numericValue++){
    doorCount[numericValue] = 0
  }
  
  for(numericValue=1; numericValue <= 100; numericValue++) {
    for(placeHolder=1; placeHolder <= 100; placeHolder++) {
      doorCount[placeHolder] = (doorCount[placeHolder] + 1) % 2
    }
  }

  for(numericValue=1; numericValue <= 100; numericValue++) {
    print numericValue, doorCount[numericValue] = ? "Opened!" : "Closed!"
  }
}
