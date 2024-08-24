# Category Theory
(PLEASE REFER CODE SNIPPETS WHICH ARE PROVIDED ACCORDING TO CHAPTERS IN GITHUB REPO)
```
(Buzz words which i learned during this whole course in future i will try to upload on these topic
Type Theory, lambda Calculus, Homotopy Type theory ,The Magical Number Seven Plus or Minus Two )
```
## Chapter 1 (Category: The Essence of Composition )

![logo](https://lifethroughamathematicianseyes.wordpress.com/wp-content/uploads/2016/02/associativity.png)

### What is wrong with OOPs ?
- concurrency
- oops hide implementation and they hisde exactly the wrong thing which makes them not composable
- (data race)they hide mutation and sharing pointer
- so they are abstracting away the data racing which is very crucial(pta hai programmers isse kese solve krte hein by using locks and the fun thing is they even hide locks :) ....)


### semantics vs syntax 

synatx is just grammar where as semantics is totally binded with language ...semantics matlab ki wo language kuch alag tarike se kaam kr rhi hai ,alag tarika matlab uska logic of using the same thing which other language is giving is totally different 


### Theoritical motivation 
- human have different faces, but if we go on 30th floor and then look down then all humans will look alike. what i am trying to say if we go at the right abstaction or height every thing will look alike even though they are different.

- maths has many branches like geometry, number theory, algebra..........Category theory find out the simialrities between all of these ....at certain amount of abstaction the structure of these Category is same. You tweak some structure of some Category you will get algebra, you tweak another part of the same Category you will get geometry ...so on....

- what ever you do in logic can directly transefered into what we do in type theory --Curry Howard lambdak isomorphism

### Major tools 
---
 #### Abstaction

 - abstaction means we want to get rid of unecessary details, after we git rid of unecessary details things that were different(they were different because of unnecessary details), suddenly become identical
 - example- there are 2 balls both are very different when we see through microscope but when we see it through are eyes it become identical

*****(Composition  and Identity define all the Category theory, thats all the category theory is )*****

#### Composition
- composition is a property , if you have a arrow(f) from a to b and other arrow(g) from b to c then there must alwys exists an arrow which is a composition of these ```g.f``` (or g after f  )
- a se c tak kai saare function ho sakte hein but ```g.f``` ek hi hoga 

- end of one arrow should be same as beginnning of other
-category is defined by objects and arrows and then defining composition whihc is sort of multiplication  table(vectors ki yaad aagyi:) ).....so for every ***2*** arrows you have to multidimensional multiplication table and then for every ***3*** possible combination you have to define and so on......whole informarion about these is in the multiplication table or Composition table.
- different composition table will give you different categories 
#### Identity
- for every object there is an identity (id)
- arrow ka naam (id<sub>objectKaNamm</sub> )...arrow ka naam matlab function ka naam 
- so id<sub>a</sub>.f means f after id ....which will give me f ***(Left identity)***
- so g.id<sub>a</sub> means id after g ....which will give me g ***(Right identity)***

    ***(Right Identity ≠ left identity (it can be equal but generally that is not the case))***
---

### Properties of composition
1. Composition is ***associative*** (associative ka matlab commutative nhi hota hai .....(a+b)+c=a+(b+c) ye associative hai ....a+b =b+a ye commutative hai)

```
f::a->b 
g::b->c
h::c->d

h.(g.f) == (h.g)f == h.g.f
```

2. For every object A there is an arrow which is a ***unit*** of composition(identity mohtarma :) honi chiye)

```
om1 x = x*2
main = do 
        let y= 5
        print ((om1.id) y == om1 y) --left id
        print ((id.om1) y == om1 y) -- right id
```


### Defination
- **Category**  is bunch of objects 
- **objects** are just dots .
    whats an object ? I cant Tell, it has no properties it has no structure. It like a atom or a point.....basically object hai hi kuch nhi but morphism ke endpoint ko kuch naam dena tha to basically ye naam de diya 
- **morphism** arrows are called morphism

Category theory is extreme in the sense that it actively discourages us from looking inside the objects. An object in category theory is an abstract nebulous entity. All you can ever know about it is how it relates to other object — how it connects with them using arrows. This is how internet search engines rank web sites by analyzing incoming and outgoing links (except when they cheat). In object-oriented programming, an idealized object is only visible through its abstract interface (pure surface, no volume), with methods playing the role of arrows. The moment you have to dig into the implementation of the object in order to understand how to compose it with other objects, you’ve lost the advantages of your programming paradigm.





## CH -2 (Types and Functions)
(PLEASE REFER CODE SNIPPETS WHICH ARE PROVIDED ACCORDING TO CHAPTERS IN GITHUB REPO)
``` 
 static vs dynamic
 strong vs weak typing
```
     
- static - type checcking at compile time
- dynamic - type checking at run time
- strict - if variable is made then its type cannot change
- weak - its type can change after declaration

### Bottom or _|\_
#### error
logic mein galti
#### exception
basically its not our fault , but it due to the surrounding code

***bottom is just a concept it means runtime error, it is given by abnormal termination of program***

```
error "om kumar"
```

### _|\_ vs _ vs void  vs undefined vs () vs return

- ***_|\_*** - bottom is just a concept it means runtime error, it is given by abnormal termination of program
- ***_*** -program is forcing us to take value , but we know we are not gonna use it , then "_" is used to ignore value
- ***void*** -  we use the funtion name "absurd" when dealing with void ,void means kuch nhi exist hi nhi krta  
```
absurd :: void ->a
absurd _ = error "evol"
```
- ***return*** - return takes parameter which do io inside it 
- ***()*** - unit type , can be passed as parametr as well as return value 
- ***undefined*** - it is used for abnormal termination


### Hask vs Set

bottom means abnormal termination , whihc means function might not even give any value 

- ***Set*** - set is connected to other set with relation(function or morphism), there is no guarantee that the function will always give some value because of the presence of Bottom
- ***Hask*** - there is no guarante of return value existing, because of that hask is special type of set 



### operational semantics vs denotional semantics
- There are formal tools for describing the semantics of a language but, because of their complexity, they are mostly used with simplified academic languages, not real-life programming behemoths. One such tool called operational semantics describes the mechanics of program execution. It defines a formalized idealized interpreter. The semantics of industrial languages, such as C++, is usually described using informal operational reasoning, often in terms of an “abstract machine.”

- But there is an alternative. It’s called denotational semantics and it’s based on math. In denotational semantics every programing construct is given its mathematical interpretation. With that, if you want to prove a property of a program, you just prove a mathematical theorem. You might think that theorem proving is hard, but the fact is that we humans have been building up mathematical methods for thousands of years, so there is a wealth of accumulated knowledge to tap into. Also, as compared to the kind of theorems that professional mathematicians prove, the problems that we encounter in programming are usually quite simple, if not trivial.

### pure vs impure function 

Pure functions have a lot of benefits. Whenever possible, good developers try to use pure functions instead of impure functions. Remember, pure functions:
- Return the same result if given the same arguments. They are deterministic.
- Do not change the external state of the program. For example, they do not change any variables outside of their scope.
- Do not perform any I/O operations (like reading from disk, accessing the internet, or writing from the console).
***REMEMBER PURE FUNCTION CAN BE MEMOIZED OR YOU CAN SAY IT CAN BE REPLACED WITH ITS RETURNING VALUE AND IT WILL NOT CHANGE ANYTHING***
  

