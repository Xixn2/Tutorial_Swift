// 2023 07 11 인프런 강의 'Unicode'
// unicode
// 문자 -> 내부적으로 특정한 코드값(16진수)

"a"
"\u{61}" // \u를 사용하여 unicode를 표현할 수 있다.
// a를 unicode로 표현하면 61이기 떄문에 위에 두줄은 같다.

// 숫자만 입력
let inputvalue = "4"

if inputvalue >= "\u{30}" && inputvalue <= "\u{39}" {
    print("숫자")
}else{
    print("숫자아님")
}

// 유니코드로 확인하는법
UnicodeScalar("가") // 44,032인 10진수로 알려준다.
// 44032 -> 16진수
String(44032, radix:16) // 10진수를 16진수로 변환하여 확인할 수 있다.