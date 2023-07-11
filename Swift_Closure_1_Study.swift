// 2023 06 28 인프런 강의 'Closure_1'

// Closure는 함수와 같은 개념이다.
//function (named closure)
func plus(a: Int, b: Int) -> Int {
    return a+b
}

// 'Closure' (unnamed closure)
/*{ (a: Int, b: Int) -> Int  in // 'in' 뒤에 부분이 실제 구현부분이다.
    return a + b
}*/ // 이부분은 함수 이름도 없어서 그냥 사용할 수는 없고 변수안에 담아줘야한다.
// {부터 }까지 구현되야 하는부분을 클로저라고 한다. / 구현할떄 구분을 해줘야 하는데 그걸 'in'이 해준다

// 변수나 상수에 closure를 대입
var myClosure = { (a: Int, b: Int) -> Int  in // 'in' 뒤에 부분이 실제 구현부분이다.
    return a + b
}
plus(a: 10, b: 20)
// myClosure(a: 10,b: 20) // Closure에는 'Argument label'을 사용할 수 없다.
myClosure(10,20) // plus(a: 10, b: 20) 이 부분과 같다 / Argument label 없이 값 입력이 가능하다.

func plus1(_ a: Int, _ b: Int) -> Int { // function도 closure처럼 변수의 이름이 없는상태로 사용할 수 있다 '_'를 사용하여
    return a+b
}

// function의 paramter에 closure를 넣어서 사용하는 방식

func f10(myClosure: () -> Void) { // ()를 쓰든 void를 쓰든 둘다 같다
    print("작업중..")
    print("작업중..")
    myClosure() // myClosure가 여기 위치가 아닌 작업중.. 2개 사이에 있다면 작업중.. 작업완료 작업중.. 으로 출력된다
}
func f20() {
    print("작업완료")
}
f10(myClosure: {() -> Void in f20() })
// f10이 클로저를 사용하여 f20을 넘겨주는거다.
f10(myClosure: { f20() }) // Closure안에 있는 타입이 받는것도 없고 리턴도 없는 상태라면 타입은 작성하지 않아도 된다. / 타입이 없다면 타입과 내용을 구분하는 in이 필요없어져서 in도 지워도 된다.
f10 {
    f20() // 제일 간추리면 이게 된다
}

f10 {print("내가 원하는 로직")} // f20같은걸 안넣고 출력을 해도 값이 잘 넘어간다.