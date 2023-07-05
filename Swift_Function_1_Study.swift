// 2023 06 26 인프런 강의 'Function_1'

// 화면에 점수를 띄워주는 함수
func presentMyScore(score: Int) {
    print(score.description + "점") // score을 문자로 바꿔주어 점수를 출력
}

presentMyScore(score: 50) // 함수호출을 하여 score 50이라는 값을 넘겨주는것
func presentScore(myScore: Int, yourScore: Int) {
    print(myScore.description + " vs " + yourScore.description )
}

presentScore(myScore: 80, yourScore: 100)

// function return
// 더하기 기능을 만들어서 함수외의 다른 공간에서 사용

func plus(number1: Int,number2: Int) -> Int{
    return number1 + number2
}
let sumResurt = plus(number1: 50, number2: 30) // plus 함수를 호출하고 50과 30을 더한값을 리턴받아 'sumResurt'라는 상수에 넣는것
print(sumResurt)

// 파라미터가 없는 경우 / 파라미터란? : 함수이름 뒤에붙는 ()부분
func printHello() -> String{
    print("Hello")
    return "Hello"
}
print(printHello() + "안녕")

// multiple return values
func scoreList() -> [Int] {
    return [50,30,60]
}
scoreList()

func scoreList2() -> (eng: Int,music: Int) {
    return(50,80)
}

scoreList2().eng // return값이 두개라 원하는걸 골라서 리턴 받을 수 있다.
scoreList2().music

// argument labels, parameter name
func sumNumber1(num number1: Int,num number2: Int) { // (안에 구현되는것중에선 두번쨰 이름을 사용한다.
    number1 + number2
}
sumNumber1(num: 80, num: 80)

func sumNumber2(_ number1: Int,_ number2: Int) {
    number1 + number2
}
sumNumber2(50,100)

// In-Out Paramters
// inout

var myScore = 60
func plusFive() {
    // myScore = myScore + 5
    myScore+=5
}
myScore
plusFive()
myScore

func plusNewFive(score: inout Int) { // score라는 원본값에 5를 더하겠다
    score += 5  //
}

plusNewFive(score: &myScore) // &는 값을 그냥 넣는게 아닌 원본에 변경을 해주는것 / inout이 없다면 오류가 뜬다. / inout과 &는 한 세트