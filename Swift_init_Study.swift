// 2023 07 13 인프런 강의 'init'

// class and struct
// init (더욱더 깊게 설명)

// oz -> ml
// ml -> oz

// 1 oz -> 29.5 ml
// 1 ml -> 0.333 oz

// Customizing Initialization
struct UnitConversion {
    var oz: Double = 0
    var ml: Double = 0
    
    init() {
        
    }
    
    init(oz: Double) {
        self.oz = oz
        self.ml = oz * 29.5
    }
    
    init(ml: Double) {
        self.ml = ml
        self.oz = ml / 29.5
    }
}

var unitConversion1 = UnitConversion(ml: 1)

unitConversion1.ml
unitConversion1.oz

var unitConversion2 = UnitConversion(oz: 1)
unitConversion2.ml
unitConversion2.oz

var unitConversion3 = UnitConversion()
unitConversion3.ml
unitConversion3.oz

// convenience initializer
// 조건 - 다른 init을 반드시 실행

class Profile {
    var name: String
    var age: Int
    var isAdult: Bool
    // Designated Initializers
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        self.isAdult = age > 19 ? true : false
    }
    /*init(age: Int) {
        self.name = ""
        self.age = age
        self.isAdult = age > 19 ? true : false
    }*/
    
    // 바로 위에있는 init을 convenience init으로 만든것
    convenience init(age: Int) {
        self.init(name: "", age: age)
    }
    
    func showName() {
        print(name)
    }
    
}

// 상속
class MemberProfile: Profile {
    override init(name: String, age: Int) {
        let newName = name + "님"
        super.init(name: name,age: age) // super.init은 init(name: String, age: Int) 이부분을 호출하는것
    }
    override func showName() {
        print(name + "하이")
    }
}

let member = MemberProfile(name: "kim", age: 20)
member.showName()


// Required init
// 상속

class BaseView {
    init(frame: CGRect) { // CGRect: x,y,w,h 포함한것
        // Code로 직접 크기에 대한 개념을 잡는부분
    }
    
    required init(coder: NSCoder) {
        // 인터페이스 만드는 init
    }
}

class RedView: BaseView { // BaseView를 그대로 RedView에 상속해줌
    init() {
        let frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        super.init(frame: frame)
    }
    
    override init(frame: CGRect) {
        let frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) { // required는 반드시 구현
       //super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
}

class MyButton: UIButton {
    init(){
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder: NSCoder) {
        //super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
}

// failable initializer
// init? optional init

class MyClass {
    init?(type: String) { // 실패가 가능한 형태의 initializer
        if type == "" {
            return nil
        }
        print("success", type)
    }
}

let myClass = MyClass(type: "") // 생성이 안되고 값이 없는것 / 사용불가