// 2023 06 24 인프런 강의 'Numeric_2'

 var myScore = 1000000
 var myScore1 = 1_000_000 // 긴 숫자를 적을떈 한눈에 보기 힘드니 3자리마다 '_'를 사용하여 구분하기 쉽게 하자

 myScore == myScore1 // '_'를 넣든 안넣든 값과 형식은 같다.

 var myBit = 0b00010001 // 2진수를 표현하려면 값 앞에 '0b'를 붙여주면 된다. / 17
 var myBit1 = 0b0001_0001_1111 // 숫자 사이에 '_'를 붙이는 정식 명칭은 'UnderScore'
 // 2진수: 0b / 8진수: 0o / 16진수 0x
 var myBit2 = 0o10 // 8진수는 0~7까지만 나타내기에 8을 출력하려면 10을 입력해야한다.
 var myBit3 = 0x10 // 16진수는 0~15까지만 나타내기에 16을 나타내려면 10을 입력해야한다.

 // remainder

 var anyNumber = 10
 var remainder = (anyNumber % 2 == 0) // 'anyNumber을 2로 나눈 나머지에 값이 0이 맞다면 true, 아니라면 false가 출력된다.
 // 위에껄 활용하면

 if (anyNumber % 2 == 0){
     print("짝수")
 }else{
     print("홀수")
 }

 var number1 = 0.7
 var number2 = 0.2

 var sum = number1 + number2 // 0.7 + 0.2는 당연히 0.9 같지만 2진수로 변환되어 연산이되고 그걸 다시 10진수로 바꾸어 출력하여 0.899999와 같은 값이 출력이 된다.
 // 2진수 소수 계산은 너무 오래걸림으로 (검색)

 Decimal(sum) // 'Decimal': 10진수이다. 0~9의 숫자에 대한 개념
 // Decimal을 사용하면 0.7+0.2의 값이 정상적으로 0.9로 나오게 된다.