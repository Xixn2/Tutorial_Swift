// 2023 06 24 인프런 강의 'Numeric_1'

// Numeric Type
// 숫자

var myScore1: Int = 50  // 정수형이 들어가면 Int / 타입추론이 가능하기에 : Int 부분은 생략이 가능합니다.
var myScore2: Double = 50.0 // 실수형이 들어가면 Double / 타입추론이 가능하기에 : Double 부분은 생략이 가능합니다.
var myScore3: UInt = 50 // (UInt)UnSigned Int는 값을 넣는건 가능하지만 -값을 넣는건 불가능하다. / 음수 넣기x
myScore3 = 50 // 정수형이기에 넣는게 오류없이 가능하다.
//myScore3 = -50 // UInt는 음수부호(-)는 들어갈 수 없기에 실행 오류가 뜬다.

// Int+bit (binary,2진수)는 숫자가 들어갈 수 있는 개념은 같다.
// 'bit'는 1자리로써 나타낼 수 있는 숫자 범위가 0과 1만 있다. / 2진수와 같다.
// 0 -> 1 -> 10 -> 11 -> 100 / 2진수에서 2를 나타내려면 자릿수 하나를 더써서 10으로 표현해야한다. / 100은 4를 뜻한다.

// 일반적으로 사용하는 진수는 10진수이다. 0123456789
// 9 -> 10 -> 11 / 10진수에서 10을 나타내려면 자릿수를 하나 더써서 10으로 표현한다.

// 16진수
// 0123456789 10부터는 문자로 표현을한다. 10=a,11=b,12=c,13=d,14=e,15=f로 표현한다.

// bit
// 1bit는 1가지의 자릿수로 표현할 수 있는것이고 3bit는 3가지의 자릿수로 표현할 수 있는것이다.

// 8bit에서 가장 크게 표현할 수 있는것은 11111111 / 128.64.32.16.8.4.2.1

var myScore4: Int8 = 50
Int8.max // 256을 반으로 나눈값인 최대값인 0을 포함한 갯수인 127이 들어간다.
Int8.min // 256을 반으로 나눈값인 최소값인 0을 포함한 갯수인 -128이 들어간다.
var myScore5: UInt8 = 50
UInt8.max // 256가지의 표현이 가능하지만 0까지를 포함한 수라 255까지 나타난다.
UInt8.min // 'UInt8'는 -을 포함하지 않기에 최소로 표현가능한 수가 0이다.

// var myScore6: UInt8 = 256 // 0을 포함한 수인 255까지만 표현이 가능한데 256을 입력하여 오류가 뜬다.

String(myScore5, radix: 2, uppercase: false) // radix: 2를 입력하면 0,1만 표현이 가능한 2진수를 뜻한다.
// UInt8에 들어있는값인 50을 2진수로 바꿔주어 '110010'이 나타난다.

var myScore6: UInt8 = 10
String(myScore6, radix: 16, uppercase: false) // mySvore6에 10이 들어있기에 16진수로 표현하면 a가 나오게 된다.
// 16진수에서 사용되는 uppercase는 true일땐 대문자로 표현하고, false일땐 소문자로 표현한다. (A~F)
// 2진수를 쓰는 bit가 8개면 Int8을 사용하고, 16개면 Int16을 사용한다. / 32,64도 있다.

Int16.max // 32767
Int16.min // -32768
Int32.max // 2147483647
Int32.min // -2147483648
Int64.max // 9223372036854775807
Int64.min // -9223372036854775808
Int.max // Int64.max의 값과 같다.