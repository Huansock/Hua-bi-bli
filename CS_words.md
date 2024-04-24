# technical term in Conputer Science

#### 1. statement and expression

These concepts aren’t specific to functional programming. They apply to imperative programming as well. A statement is a piece of code that does something. An expression is a piece of code that has a value (and a type in statically-typed languages). The reason you might hear more about them in functional programming is that in functional languages, pretty much everything that isn’t a declaration is an expression.

Statements in general are either declarations or things that are executed for their side effects. For example (using a C-family-ish syntax):

    int theAnswer = 42; 
    println("Printing is a side effect."); 

The first one is a declaration. The second one is a statement that is executed for the side-effect that it creates. Here’s an example of using if as a statement.

    if (someBooleanValue) { 
      theAnswer++; 
    } else { 
      theAnswer--; 
    } 

This if statement doesn’t give back a value. We execute it in order to mutate a variable, which is a side effect. In many languages descended from C there is a special operator, the ternary operator, ?:, that is used to create if expressions. Compare this to a more functional language, like Scala, where if is an expression. That means you can type something like the following.

    val theAnswer = if (someBooleanValue) 43 else 41 

Note that anything that makes sense to put on the right side of an assignment/declaration needs to be an expression because you are using the value of it.

You actually use expressions all the time in every programming language. For example, consider the following:

    (5 + x) * y 

This is an expression. You’d normally put it someplace in your code that needs that value. The thing I want to point out is that it is a compound expression built from smaller expressions. Literals, like 5, and variables, like x and y, are simple expressions. Any sequence of tokens that has a value in the language is an expression.

In functional languages, control structures are also generally expressions. In imperative languages they generally aren’t, they are just statements that execute and do something, but don’t give back a value.

표현식은 무조건 값을 반환해야한다. statement는 명령문으로 해석할 수 있고 주로 할당이나 사이트 이펙트를 지칭한다.

#### Side effects

컴퓨터 과학에서 함수가 결과값 이외에 다른 상태를 변경시킬 때 부작용이 있다고 말한다. 예를 들어, 함수가 전역변수나 정적변수를 수정하거나, 인자로 넘어온 것들 중 하나를 변경하거나 화면이나 파일에 데이터를 쓰거나, 다른 부작용이 있는 함수에서 데이터를 읽어오는 경우가 있다. 부작용은 프로그램의 동작을 이해하기 어렵게 한다.

#### Identifier 

변수나 함수의 이름을 뜻함.

#### Borrow in Rust vs pointer

Borrow in rust is essentially safe pointer. after out code is compiled, there is no diff. 
