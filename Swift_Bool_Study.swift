// 2023 06 24 인프런 강의 'Bool'
 
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
}