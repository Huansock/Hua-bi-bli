# technical term in Conputer Science

### statement and expression

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

### Side effects

컴퓨터 과학에서 함수가 결과값 이외에 다른 상태를 변경시킬 때 부작용이 있다고 말한다. 예를 들어, 함수가 전역변수나 정적변수를 수정하거나, 인자로 넘어온 것들 중 하나를 변경하거나 화면이나 파일에 데이터를 쓰거나, 다른 부작용이 있는 함수에서 데이터를 읽어오는 경우가 있다. 부작용은 프로그램의 동작을 이해하기 어렵게 한다.

### Identifier 

변수나 함수의 이름을 뜻함.

### Sematic in logic

However, when someone talks about "the semantics" of a particular formal system, he may mean any of (1)-(3):

(1) In a first, primordial sense, "semantics" is used for "the definition of possible interpretations" and "the definition of models for a formal language".
The semantics of a logical system is a set of rules for interpreting well-defined expressions of a formal language, which is in turn defined by syntax rules (a grammar). A logical semantics usually leaves it open how extralogical expressions are interpreted and focuses on a particular subset of expressions of a language called logical expressions. These are for example terms (how to deal with them in general), operators, connectives, quantifiers, and formulas. For the extralogical expressions such as particular interpretations of terms, you may then provide different models within the range circumscribed by the general semantic rules (aka interpretation, evaluation rules).

(2) In a second, narrower sense based on (1), "semantics" sometimes abbreviates denotational semantics which is also sometimes called model-theoretic semantics. This involves the explicit mapping of expressions of the language to elements in sets and rules for counting and combining these elements expressed in the language of set theory or, in the simplest case, by providing truth tables.
So here "semantics" is understood as (1)+a particular method of achieving (1).

(3) In a third sense closely related to (1), "semantics" is meant in various ways that may be precisely described as algebraic semantics, combinatorial semantics, category-theoretic semantics, and so forth, where the methods used aren't based on set theory and are generally more syntactic in nature. ("syntactic" is meant as symbol manipulation by means of rules here.) Again, this sense of "semantics" is (1)+ = a particular method of achieving (1).
These kinds of semantics are not very far from proof-theoretic methods such as using axiom systems + deduction rules, natural deduction, tableaux which are commonly considered syntactic methods.
As confusing as this might be, speaking of "semantics" despite a certain nearness to proof theory may be well-justified in such cases provided that the method is provably more powerful than any calculus could be. 

논리의 의미론은 언어의 문법적 문자열에 일종의 의미를 할당하는 시스템입니다. 할당될 수 있는 의미에는 다양한 유형이 있지만 고전 논리학의 주요 의미는 참과 거짓입니다. 명제 논리의 경우 의미론은 문법 문자열을 받아 참 또는 거짓을 반환하는 함수인 진리 함수 집합입니다(진리표를 본 적이 있다면 이전에 이러한 함수를 접한 적이 있을 것입니다. 진리표의 각 행은 다음에 해당합니다). 특정 진리 함수).

#### Borrow in Rust vs pointer

Borrow in rust is essentially safe pointer. after out code is compiled, there is no diff. 
