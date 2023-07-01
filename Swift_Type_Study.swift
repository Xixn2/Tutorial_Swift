// 2023 06 24 인프런 강의 'Type'

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
// 다른언어들 중에서는 가능한것들도 있다.// 2023 06 24 인프런 강의 'Type'

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
// 다른언어들 중에서는 가능한것들도 있다.