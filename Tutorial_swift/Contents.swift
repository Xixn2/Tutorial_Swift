import UIKit

/*// 2023 06 23 인프런 강의 'swift 준비'
var greeting = "Hello, playground" // greeting라는 변수를 "Hello, playground"로 초기화 시켜주는 과정
print(greeting) // print를 사용하여 greeting에 들어있는 값을 출력시키는 것

var aa = greeting.append("a")  // append는 리턴되는게 없는것
greeting = "a" // greeting에 어떤 값이 들어있든 a로 초기화 하게 되는것

// var[규격] + myname[변수이름 지정]
var myname = Int() // var라는 이름으로 하고 그 뒤에 붙는 변수는 자신이 원하는걸로 초기화는 항상 달라질 수 있다.
func ff() { // Functions을 만드려면 func을 사용하고 뒤에 모습은 달라짐
}
class ccc { // class
}
protocol pp { // protocol
}
struct st { // struct
}
// 기본 규격은 만드는게 뭔지 'func','class','protocol'과 같이 어떤걸 만들건지 정의를 쓰고 그 뒤에 원하는 이름으로 변수를 지정한다.
// 예외적으로는 var는 규격과 변수이름을 지정하여 사용하지만 'closure'는 이런것들이 없는것이다.*/

// 2023 06 24 인프런 강의 '변수,상수 (var let)'

/*// var[변수] : 변수를 만든다라고 하는 기본 키워드 / 항상 바뀔 수 있는것
var score = 1 // score라는 변수를 만들고 score안에 1을 넣은것
score = 50 // 처음에 들어간 1의 값은 없어지고 score에 50을 넣어 값을 변경하는것
// 변수는 항상 넣고싶은 값을 넣을 수 있다. 원래 1이 들어있었는데 50을 넣는다면 1은 없어지고 50으로 바뀌는것이다.

// let[상수] : 상수는 초기값이 세팅이 되면 그 값이 고정이 되는것이다. *수정불가*
let myName = "seojiwan" // 만드는 방법은 var과 똑같고 "seojiwan"은 글자로 인식하게 해주는것이다.
myName = "seo" // 상수이기 떄문에 값이 변하지 않고 초기화 될떄의 값이 유지가 된다.*/

/*// 2023 06 24 인프런 강의 'Type'

// Type : 값에 대한 성질이 어떤건지에 대해서 정의를 하는것

var myName = "seo jiwan" // ""안에 글자로 되어있는 값을 넣게 된다면 string이라는 Type이 된다.
myName // 변수를 클릭하고 'ESC'를 클릭하면 지정 Type을 확인할 수 있다.

// Type Annotations
// 상수나 변수를 만들떄 그 변수의 Type을 써야한다 (생략가능)
var userName1: String = "seo jiwan" // ""안에 들어있는건 무조건 string
var userName2 = "seo jiwan" // 위에것과 똑같이 적용된다. 다만 Type을 생략하여 표현한것
var score1: Int = 40
var score2 = 40 // 이것도 위에것과 같다.
// 같은 영역에서 똑같은 이름을 2개 이상을 사용할 수 없어 1과 2로 표현하였다.
var score3: Double = 40.5 // 소수점이 가능한 타입인 'Double'을 사용하였다.
var score4: Int = 40 // Int 타입은 정수형만 지정이 가능하다.

// score1 = "hi" // score1은 Int Type이기 떄문에 문자지정은 불가능하다.
// 다른언어들 중에서는 가능한것들도 있다.*/


/*// 2023 06 24 인프런 강의 'String'

// String Type
// 문자열

var greeting = "hello" // String Type 변수 선언
greeting =
"""
hi
hello
welcome
"""
// 위에 greeting을 출력 시키면 hi\nhello\nwelcome이 출력된다 '\n'은 Enter를 뜻한다.

var greeting2 = "hi\nhello"
print(greeting)
print(greeting2)

// greeting에서 hi 밑에 한줄을 공백상태로 놔두고 출력을 해도 공백상태가 있는상태로 출력이 된다.
// '\n'을 많이 사용하지만 몇번씩은 '\t'를 사용하여 tap을 클릭하여 이동하는 만큼을 옆으로 옮겨준다.

var greeting3 = "he\"llo" // "를 출력에 사용하려면 \" 형태로 사용하여야 출력이 된다.

greeting = greeting + "welcome" // greeting에 들어있는 hello에 welcome을 이어서 만들어준다.

greeting.count // greeting에 들어있는 문자의 글자 갯수를 확인해주는것
greeting.uppercased() // 해당되는 string을 대문자로 return 해주는것
print(greeting) // greeting을 출력해보면 위에 uppercased를 사용하여 대문자로 변환해줬지만 원본 데이터 값은 바뀌지 않는다.
var newHello = greeting.uppercased() // greeting을 대문자로 변환해준값을 newHello에 넣어준것이다.
print(newHello) // greeting의 대문자값이 들어있는걸 출력함

newHello.lowercased() // 대문자를 소문자로 변경해주는것
greeting.capitalized // 문자의 제일 첫글자만 대문자로 바꿔주는것

greeting.dropFirst() // 문자의 첫글자만 없애버리는것
greeting.dropLast() // 문자의 마지막 글자를 없애버리는것
greeting.dropLast()
greeting.dropLast()
// dropLast를 여러번 사용한다해도 원본의 값이 바뀌지 않기에 원본에서 뒷글자 하나만 사라진 상태로 출력된다.
greeting.dropLast().dropLast().dropLast() // 이런식으로 사용하면 뒷글자 3개가 사라진 상태로 출력된다.

greeting.hasPrefix("he") // 시작하는 글자가 he인지를 물어보는것 / 맞다면 true, 틀리면 false가 출력이 된다.
greeting.hasSuffix("me") // 끝나는 글자가 me인지를 물어보는것 / 맞다면 true, 틀리면 false가 출력이 된다.
// 조건에 공백을 넣어도 확인이 가능하다.

// hasPrefix와 hasSuffix를 사용하는 방법은 대표적으로 이런방법이 있다.
greeting.hasPrefix("https") // 주소가 https가 맞는지 확인할때 사용하고
greeting.hasSuffix(".png") // 파일의 종류가 png가 맞는지 확인할때 사용한다.

greeting.contains("llo") // llo라는 글자가 들어있는지 확인하는 방법 / 맞다면 true, 틀리면 false가 출력된다.

// 처음에 들어있는지 확인은 'hasPrefix', 문장에 들어있는지 확인은 'contains', 마지막에 들어있는지 확인은 'hasSuffix'를 사용한다.*/


/*// 2023 06 24 인프런 강의 'Bool'
 
// Booleans Type
// 두가지 값중에 하나를 갖는다. (true,false) // 다른언어들 중에선 1이 true, 0이 false라고 사용하기도 한다.

var isTop = false // isTop: 맨 위에인지 물어보는
isTop = true
// isTop = 1  // 같은 다른 타입은 넣는게 불가능하다.

var hasColor = false // 색깔이 있는지 없는지 물어보는것

hasColor = true
hasColor = false
hasColor = "hello".contains("llo") // 'hello'에 llo가 들어오는지 물어보고 들어있기 떄문에 true가 출력이 된다.
hasColor = "hello".contains("lll") // 'hello'에 lll가 들어오는지 물어보고 들어있지 않기 떄문에 false가 출력된다.

// 산술연산
hasColor = 5 > 4  // 5가 4보다 더 큰지 물었고 맞기에 true가 출력이 된다.
hasColor = 5 < 4  // 위에와 반대로 4가 5보다 더 큰지를 물어봤고 틀렸기에 false가 출력이 된다.

var hasColor1: Bool = false // 타입추론이 가능하기에 : Bool을 생략가능하다.

hasColor1 = !false // false의 반전인 true가 들어가게 된다. Not과 같은것이다.

hasColor1.toggle() // toggle(): 'hasColor1'이 가지고 있는값의 반대되는 값으로 변경시키는것

// 조건문(if)

if hasColor1 == true { // true가 맞다면 바로 밑에 라인이 실행됩니다.
    print("hasColor1의 들어있는값은 'true'가 맞습니다.")
}else{ // 만약 위에 if문에 조건이 틀렸다면 else가 실행이 됩니다.
    print("hasColor1의 들어있는값은 'false'입니다.")
}*/

/*// 2023 06 24 인프런 강의 'Numeric_1'

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
Int.max // Int64.max의 값과 같다.*/


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



















