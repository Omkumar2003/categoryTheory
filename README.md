# Category Theory

(JUST BUZZ WORDS WHICH I WAS ABLE GET FROM READING ABOUT THESE TOPICS 
....Type Theory, lambda Calculus, Homotopy Type theory )
## Chapter 1 (Introduction)

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


### Defination
- **Category**  is bunch of objects 
- **objects** are just dots .
    whats an object ? I cant Tell, it has no properties it has no structure. It like a atom or a point.....basically object hai hi kuch nhi but morphism ke endpoint ko kuch naam dena tha to basically ye naam de diya 
- **morphism** arrows are called morphism


### Axioms  (Laws of category theory)

#### 
