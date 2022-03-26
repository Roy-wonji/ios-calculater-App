## ⛺️ios-calculater-App

### 목차
- [프로젝트](#projects)
- [UML](#uml)
- [실행 화면](#실행-화면)
- [키워드](#키워드)
- [구현 내용](#구현내용)
    - [고민했던점 && 로직구현](#고민했던점--로직구현)
- [배운개념](#배운개념)


### 개발환경 및 라이브러리
[![swift](https://img.shields.io/badge/swift-5.0-orange)]()
[![xcode](https://img.shields.io/badge/Xcode-13.0-blue)]()

### Projects
### 계산기 
🗓 프로젝트 소개 : 🧮 내가 구현한 계산기!</br>
🗓 기간 : 2022.03.15 ~ 03.25  </br>
🗓 팀원: [로이](https://github.com/Roy-wonji)



### UML

![](https://i.imgur.com/EuFGME9.jpg)

</br>

### 실행 화면
![](https://i.imgur.com/J10UIiJ.gif)

</br>

### 키워드 
- UIVIEW
- UIStackVIew
- IBDesignable
- IBInspectable
- didset
- tag
- truncatingRemainder
- formTruncatingRemainder
- swipe Gesture Recongnizer
- tap Gesture Recongnizer
- reduce 
- stackView

### 구현내용
- `CalcOperator`는  연산하는 계산을 하는걸  저장하는 사칙연산 구현
- `CalculatarCommon` 하드 코딩 방지를 위해 enum으로 관리를 해서 접근 하게 구현 
- `CalcOperation`  reduce를 이용하여 순차적으로 계산 하게 구현 
- `CalcOperationNode`초기화를 진행해주면서 노드를 구현
- `MakeRoundButton` ui에 버튼을 둥글게 구현하고 @IBDesignable을 사용해서 스토리 보드에도 적용 하게 구현을 함 

### 고민했던점 && 로직구현 
- 최대한 mvc 패턴을 따르면서 구현을 하려고 하고 model 안에는 model만  넣고  view안에는 ui요소및  스토리보드를 널고 controller안에는 최대한 controller만  넣어서 구현을 할려고 했습니다  
-  clearButtonTapped을 눌렀을때  계산식이  다 지워지는게  아니라  AC면  다 지워지게 구현을  하고 C이 일때 구현을 어떤 방식으로 해야 할지 고민을 많이 했습니다 
-  아이폰 어플리케이션에  ui 버튼 요소들이 둥근데  이걸  어떻게 UI 요소에  넣으면서  적용을 할까 고민을 했는데  이고민에는  @IBInspectable 이라는 프로퍼티를 사용해서 구현하는 방법이 있어서  이 방법을 사용해서 구현을 했습니다 
-  최대한 하드코딩을  피하면서  구현을 할려고 노력을 많이 했습니다 
 

### 배운개념
 IBDesignable,IBDesignable는 스토리보드에서 따로 정해주시 않고 코드로 구현한 내용을 스토리 보드에 interface builder로 사용해서 구현을 하는 방벙중 하나이다 근데 IBDesignable 너무 남용해서 쓰면 xcode를 킬때 마다 update가 되니까 주의 해서 사용하기

 truncatingRemainder
> 스위프트에서 나머지 값을 구하려면 %(나머지 연산자)를 사용한다
> ```swift
> truncatingRemainder(dividingBy:)
> 기본적이 코드 구현 방법은 이렇다 
> ```

 swipe Gesture Recongnizer
> swipe Gesture Recongnizer는 스와이프 해서 어떤 행동을 하는 액션이다  사용할때는 꼭 label 안에 </br>
> 
![](https://i.imgur.com/5rZm6Q3.jpg)

</br>
이버튼을  눌러주어야  실행이 가능하다  나는 이 버튼을 실행하기 위해 진짜 많은 방법을 시도를 해보았다 

파일 분리
파일분리에 정답이 있는 것은 아니지만, 연관이 있는 것들끼리 모아주는 것이 좋다.
