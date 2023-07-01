// 2023 06 24 인프런 강의 'String'

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

// 처음에 들어있는지 확인은 'hasPrefix', 문장에 들어있는지 확인은 'contains', 마지막에 들어있는지 확인은 'hasSuffix'를 사용한다.