// 2023 07 11 인프런 강의 'ControlFlow - while'

// Control Flow (흐름 제어)

// while
// 반복 끝이 정해지지 않을 떄
var dice = 0
var myPosition = 0
// dice = Int.random(in: 1...6)
while myPosition < 10 {
    dice = Int.random(in: 1...6) // 1부터 6사이의 값을 랜덤으로 지정
    if dice % 2 == 0 {
        myPosition += 2
    }else if myPosition > 0 {
        myPosition -= 1
    }
    print("dice", dice,   "position",myPosition)
}
print("end")