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


## Ch- 3 (Categories Great and Small)

### Category with no objects
it is important when we are dealing with category of categories

## Free category 
**Two rules**
- make identity of each objects
- make composition of each objects

### Transitive, Symmetric, Reflexive in sets

- **Cardinality** - total number of relation
- **Transitive** - In Set A x A where relation R ... if (a,b) and (b,c) is present then (a,c) shoul be present
- **Symmetric** - if (a,b) is there than (b,a) should be there
- **Reflexive** - relation to itself (a,a)

### PreOrder vs PartialOrder vs TotalOrder
- **PreOrder**

 ```
Reflexive
could be symmetric or Asymmetric
Transative
```
- **PartialOrder** 
```
Reflexive
Asymmetric
Transative
```

- **TotalOrder**
```
Reflexive
Asymmetric
Transative
All should be comparable
```

***Every PreOrder is a PartialOrder and every PartialOrder is a TotalOrder***

### How PreOrder, PartialOrder ,TotalOrder can be helpfull in programming?

- PreOrder - type auto coercision
- PartialOrder - oops inheritance
- TotalOrder - we can do sorting because all element inside that list are comparable


### Hasse diagram

**MOST IMPORTANT IT IS LIKE UML BUT FOR FUNCTIONAL**
**https://www.youtube.com/watch?v=i8XeVATqeag&t**


### Subtyping and Supertyping

it is very similar to OOPS parent child relation

suppose CAT is ANIMAL
**Whenevr we have to use ANIMAL we can just interchange it with CAT**

### Hom-set

set of morphism from object a to b denoted by ```C(a,b)``` or ```Hom(a,b)```

### Thin category

preorder category is known as thin ...where there is atmost 1 morphism going from any object a to any object b

### homSet with Thin Category 
 
every homeSet in preOrder(THIN) is **empty or singleton** . this include ```homeSet (a,a)```

cycles are forbidden in partail order but preorder have it 


### Monoid 

**3 Rules**
-  operation which we are doing should include 2 object at a time
- operation should be associative
- one special element unit

example -string concatenation where neutral element is  ""

***Rememeber monoid is a condition which you have to prove that it is a monoid .........so the answer of it is a monoid or not is a boolean***

```
-- java mein ek class bna monoid naam ki 2 data member memepty and mappend ke saath .ek aur data member bna ..jo ye confirm kre ki wo monid hai ya nhi
instance Monoid String where
    mempty = ""
    mappend = (++)
```

### **Category** vs **Universal Category** vs **Free Category** vs **Ordered Category** vs **Thin Category**

- **Category** - Every category must follw 3 rules **Composition, associativity, Identity** these rules if some category have any other rules , it becomes a type of category
- **Universal Category** - It is not a standard term just look at the category and file out the objects and their connections if these connexions are appear most of the Times in the category then make a category of these patterns itself
- **Free Category** - Remember category should follow three rules. In free category there is a graph and there are nodes and edges, the only constraint we have that these edges are given to us, there are no extra constraint other than that 
- **Ordered Category** - This is referred to as a pre order and a poset order category. It has single object then how it is possible that it can be a preorder or poset? .......It is a special kind of peorder or poset.... So let me think ,there is only one object and it should be a pre order or Poset and the Category definition says it should also have composition so  there should be a category with a single object with  multiple Functions Who's starting and ending point are same And these functions should be preordered or poset And if you are defining two functions like this then there should exist another function which should be composition of these two functions .........


## Ch-4 ( Kleisli Categories )

chapter ka naam iss chapter ke last mein declare kra jaayega


### **Question** - Make a logging system
**Ans** The most simple approach for an imperative programmer is to make a global variable and Constantly updated it

```
string logger;

bool negate(bool b) {
     logger += "Not so! ";
     return !b;
}
```
But it is accessing the global variable we don't want that it is a impure function and it is hard to debug


#### There are 2 approaches to this 

##### 1st approach (doing impurity in 1 place)
- Every function should return two things, First thing which is it is supposed to return and the second thing is the string which explains what this function does....
- By having this approach we can easily memorise it even if we have 3 4 condition inside that function we can easily memorise it
- Now there are bunch of functions and now we will go in a seprate function and add  all the function Second return value sequentialy
- Now that's a good system , But there is a problem you have to manually add function sequentially in the separate function which can be hard

##### 2nd approach
- Every function should Take two  things...First but it is supposed to take and second the previous function log
- This creates a piping mechanism where The logs are concatenated when it goes through the functions
- Now in last function everything comes to an end 


### The Writer Category
I haskell 
```
type Writer a = (a, String)

a -> Writer b

(>=>) :: (a -> Writer b) -> (b -> Writer c) -> (a -> Writer c)

m1 >=> m2 = \x -> 
    let (y, s1) = m1 x
        (z, s2) = m2 y
    in (z, s1 ++ s2)
```

### Kleisli Categories

- this logging system was a exmaple of klesili category
- Morphisms from type A to type B are functions that go from A to a type derived from B using the particular embellishment. Each Kleisli category defines its own way of composing such morphisms, as well as the identity morphisms with respect to that composition. (Later we’ll see that the imprecise term “embellishment” corresponds to the notion of an endofunctor in a category.)
- The particular monad that I used as the basis of the category in this post is called the writer monad and it’s used for logging or tracing the execution of functions.



## Ch-5 (Products and coproducts) 

### Intial Objects and Terminal Object

#### Definition:
 The initial object is like the host of the party who is so influential that everyone else at the party is having a chat with this host. In other words, this host has a direct chat (morphism) with every other person at the party.

 The terminal object is like the person at the party who is so interesting that every other person wants to chat with this individual. This person receives a direct chat from everyone else.

**Both are Unique**

-Simplifying Structures: Initial and terminal objects help in identifying special objects that simplify the structure of a category. They act as reference points or benchmarks for comparing other objects.

- **Initial Object (Empty Type):**
Error Handling: It can be used to handle error cases or impossible conditions in a program.

    the unique polymorphic function from Void to any other type is called absurd:
```
absurd :: Void -> a
```

- **Terminal Object (Unit Type):** Uniform Interfaces: It can be used to provide a consistent interface for functions that don’t return meaningful data, which simplifies function signatures and type interactions.


### Duality

Imagine a board game where you have different types of pieces and moves. Duality is like flipping the game board over so that the roles and rules are reversed.

It turns out that for any category C we can define the opposite category Cop just by reversing all the arrows.

### Isomorphisms
- If there is a Object A and other object B and there is a function from A to B and this function is unique. And then there is a function from B to A which basically does revert back whatever things is done by the previsious function...This property is known as isomorphism 

### Product

- A way to combine 2 or more things into a single entity that contains all of them. It’s like creating a pair or tuple where each element in the pair comes from the original categories.

- It is  not official terms but you can call it as merging, embedding, collapsing

- **Types in programming can be interpretd as object in category and sets in set theory** Imagine you have 2 sets, like a set of numbers (e.g., integers) and a set of colors (e.g., red, blue). The product of these sets is like creating a pair from every number and every color, so you get pairs like (1, red), (2, blue), etc. This is called the **Cartesian product** in mathematics.

- **Is there any other way than Cartesian product?**
Cartesian Product is related to set theory.
In other categories (not just sets), the way we pair things might look different. The Cartesian product is just the most familiar example in the category of sets.
- **What are all possible ways for calculating the product?**
We consider all possible objects that could serve as the product and see how they relate to each other. The "best" product is the one that other candidates can be mapped to uniquely, meaning it can break down into its components in a straightforward and unique way.

#### Projections
Projections are functions that "pick out" one component of a pair from a Cartesian product. If you think of a pair as a combination of two elements (like (a, b)), then the projection functions would be:
```
fst (a, b) = a (picks the first element)
snd (a, b) = b (picks the second element)
```
So, yes, they are like functions that index or extract specific elements from a pair in a Cartesian Product

#### Factoraization
Factorization in this context is about breaking down functions (morphisms) in a way that relates two different structures. If you have two ways of pairing things (products), factorization helps you relate one pairing to another by finding a function that "translates" between them.

Example: If you have one way of pairing numbers and colors and another way, factorization would be like finding a rule that consistently converts pairs from the first method to the second.
#### coproduct
- **Is coproduct like division?**
Not exactly. The coproduct is about combining things in a way where they remain distinguishable. It’s like a "union" rather than division.
**In a Cartesian product, the elements are paired together, and you can separate them. In a coproduct, elements are combined, but you can still tell which element came from which original set (like a "tagged" union).**


**Product (Cartesian Product)**: 2 sets A and B, the Cartesian product A x B
consists of all possible pairs (a, b), where a is from A and b is from B.

- **Example:** If A = {1,2} and B = {x, y}, then A × B = {(1, x), (1, y), (2, x), (2, y)}.

**Projections:** Function Which extracts data Form the pair. For example, the first
projection maps (1, x) to 1 and (2, y) to 2.

**Coproduct in Set Theory (Sum Type)**
coproduct (disjoint union or sum in set theory) combines elements from two sets in a way that keeps them distinct, without pairing them together.

-  **Instead of forming pairs, you take elements from either set A or set B
and label them to distinguish which set they come from.**

     **Example:** Consider the same sets A = {1,2} and B = {x, y}. The coproduct of A and
B, often denoted as A + B, could be represented as:

    A + B = {Left 1, Left 2, Right x, Right y}

. Explanation: Here, "Left" and "Right" are labels that indicate whether an element
belongs to set A or set B. Unlike Cartesian products, where elements are paired, in a
coproduct, the elements remain separate, but we keep track of which set they
originated from.


### Asymmetry

Asymmetry means that product and the coproduct behave differently, and this difference becomes clear when you think about what they contain and how they function:

**Product – Symmetry:**

You can always see both items together
If you want to understand the box’s content, you just look and see both items. Everything is straightforward and clear.

**Coproduct – Asymmetry:**

You only get one item at a time, and you need a label to understand what you have.
There’s no straightforward way to see both items together. You need to check which label is present to understand what’s in it

## Ch-6 (Algebraic Data Types)

we make data type with data keyword

### Sum Type

it is like a enum in imperative language

```
data om = Car | Bat | Toy
```


### Product Types

```
data om a = om1 a 
```

parametrized data type ...we use them when we have to make data structure with a genreric (genric class with differnet constructors in java)..............or you can can we make parametrized constructor so that we can have parent which will decide which constructor(child) to choose acording to the parameter ...it is just an umbrella for differnt child

### Sum with Product type
```
data Either a b = Left a | Right b
```
