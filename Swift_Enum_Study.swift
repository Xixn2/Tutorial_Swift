// 2023 07 11 인프런 강의 'Enum'

// Enumerations (열거형)
// enum

// 열거형: Type을 정의할떄 묶음,그룹같은 느낌이다.

enum GenderType: String { // 안에 있는 타입들을 String으로써 사용하고 싶다면 : String이라고 뒤에 부여해준다.
    // GenderType안에 타입들을 하나씩 나누어 Type들을 세부적으로 나누어 사용한다. / Case를 사용함
    case man
    case woman
    case type1
    case type2
    // 하나하나 다르게 하고싶다면 case man = "할말"을 적어준다.
}

var genderType1 = GenderType.woman
var genderType2: GenderType!

func showGender(type: GenderType) {
    print("성별: " + type.rawValue) // type 값 자체를 String으로 바꿔주는것
}

showGender(type: .man) // GenderType.man으로 적어도 되지만, Type이 지정되어있으면 .을 적어도 된다. (타입에 들어가 있는 하위 멤버내용 접근 가능
//showGender(type: "aa") // GenderType 외에는 들어가지 않는다. / 정해진 case들만 사용하고 싶고 다른건 안된다 하면 enum을 사용

func showGender1(type: GenderType) {
    switch type {
    case .man:
        print("남")
    case .woman:
        print("여")
    default:
        break
    }
}

// Type에 그룹으로 사용할떄 enum을 사용하면 알아보기 쉽게 사용할 수 있다.

// CaseIterable

enum Beverage: CaseIterable { // Array 처럼 사용이 가능하다.
    case coffee
    case juice
    case tea
    
    // case coffee, juice, tea  // 이런식으로 한줄 작성도 가능하다.
}

let beverage = Beverage.allCases
beverage.count
beverage[1]

for beverage in Beverage.allCases {
    print(beverage)
}
// case 별로 각각 다 사용하고 싶다면 enum을 caseIterable 형식으로 사용하면 된다.


// String으로 사용하고 싶다면?
enum Beverage1: String, CaseIterable { // String을 추가해서 사용하면 된다.
    case coffee1
    case juice1
    case tea1
}
for beverage1 in Beverage1.allCases {
    print(beverage1.rawValue + "a") // beverage1이 String으로 지정되었으니 rawValue를 이용하여 String으로 사용할 수 있다.
}

enum Beverage2: String, CaseIterable {
    case coffee
    case juice
    case tea
}

let beverage2 = Beverage2.allCases

func findBeverage(name: String) {
    Beverage2.allCases.forEach { beverage2 in
        if beverage2.rawValue == name {
            print("타입에 맞는 음료가 있음.")
        }
    }
}

findBeverage(name: "coffee")

// 타입을 선택 + 값

enum Rectangle {
    case triangle(width:Int, height: Int, angle: Int) // 위,아래,각도
    case Circle(radius: Int) // 반지름
}

var triangle = Rectangle.triangle(width: 100, height: 50, angle: 90)

if case let Rectangle.triangle(width, height, angle) = triangle {
    print(width, height, angle)
}

switch triangle {
case .triangle(let width,let height,let angle):
    print(width,height,angle)
default:
    break
}
