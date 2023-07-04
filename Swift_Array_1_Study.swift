// 2023 06 26 인프런 강의 'Array_1'
 
 // Array Type
 //

 /*var numbers1 = [4,5,6,7,8]  // Int Type Array / Array 초기값 설정 // 타입추론 가능
 numbers1.count // 인덱스가 몇개가 만들어졌는지 확인가능

 var number2: [Int] = [4,5,6,7,8] // 다른방식으로 Array 선언
 var number3: Array<Int> = [4,5,6,7,8] // num1,num2,num3 모두 똑같다.

 var numbers4 = Array<Int>(1...10) // 1~10까지 넣기 귀찮을떄 사용
 var numbers5 = [Int](1...10) // 위에 선언방식과 똑같지만 더 간편하게 사용할 수 있다.

 // 똑같은 숫자를 반복적으로 넣는법

 var numbers6 = Array(repeating: 1, count: 5) // num6에 1이라는 숫자를 5개 넣는법
 // String Array
 var strings = ["jiwan", "seo"] // 문자열도 벼열 선언이 가능하다.

 // empty Array
 // 비어있는 상태로 선언을 하면 타입추론이 불가능하니 *타입선언이 필요하다
 var emptyArray1: [String] = []  // 초기값 설정없이 공백상태로 초기화가 가능하다 / 단 Type 선언이 필요하다.
 var emptyArray2: [String] = Array() // 인스턴스화 시키는 방식 (): 이니셜 라이즈?화 해서 메모리에 올리는것
 var emptyArray3 = Array<String>()
 var emptyArray4 = [String]()

 // Any Array
 var anyArray: [Any] = [0,"seo"] // 'Any' 어떤타입이든 가능하다. 그러므로 anyArray에 Int형이든 String형이든 다 들어갈 수 있다.