---
title: value-driven-development
published_on: 2020-04-23
excerpt: |
  Behaviour Driven Development is a practice that helps engineers and their users to align their expectations. In this post, I explain how Public Badges build on this practice by rendering the implicit values behind these expectations explicit.
tags:
- blog
draft: null
---


 > 
 > 'Cause anything's possible, yeah  
 > There's no code of ethics out here
 > 
 > – Drake

There has been no shortage lately of stories about the tech industry's
questionable ethics. We all read the stories. A smart security camera company is
working with law enforcement to create an [unofficial surveillance
network](https://www.vox.com/2019/9/5/20849846/amazon-ring-explainer-video-doorbell-hacks). Tech executives [photoshop](https://www.buzzfeednews.com/article/ryanmac/tech-titans-women-fake-photoshop-cucinelli-gq)
female executives into their snapshots of a field trip before sharing them on
instagram. The algorithm of a new credit card determines credit limits on the
basis of [gender](https://www.nytimes.com/2019/11/10/business/Apple-credit-card-investigation.html). And the list goes on and on.

Still, while the critique of immorality may apply to the [upper
echelons](https://www.youtube.com/watch?v=X4MSlFq8bNI) of the well-known big
corporations, I believe it to be an unfair assessment of the industry as a
whole. While ethics is not always at the forefront of every [developer's
mind](https://www.quora.com/Why-are-some-programmers-obsessed-with-cats), it is
a mistake to conclude that her work is thus immoral. Heck, I would not even call
it amoral. 

A lot of software development — especially Open Source Software (OSS)
development — is driven by values. From the [Google
Engineer](https://twitter.com/sundress?lang=en) that aims to make the web more
accessible, the [Facebook Developer](https://twitter.com/sebmck) that open
sources her internal tools, to the [committed
idealist](https://twitter.com/start_loving_it?lang=en) developing a fair OS. 

Most software developers actually want to make the world a better place, even if
— or especially when — their ethics don't alway align with their
company's agenda. The problem, however, is that these values are not always clear and visible from the outside.

In this article, I explain how Public Badges build on the existing paradigms of
Test Driven Development (TDD) and Behavior Driven Development (BDD) to help
engineers render the implicit values that drive their work explicit. By making
values, measurable, [reproducable](https://www.youtube.com/watch?v=xVwoN2aLvL0),
and communicable, Public Badges enable customers, partners, and end users to
choose software solutions that aligns with their own values. 

## Test Driven Development

 > 
 > I just took a DNA test  
 > turns out I'm 100% that bitch  
 > Even when I'm crying crazy
 > 
 > — Lizzo

[Ruby](https://en.wikipedia.org/wiki/Yukihiro_Matsumoto) was the first
programming language that I truly loved. Its emphasis on readability and
conceptual clarity is unrivaled even today. A large part of Ruby's appeal to me,
though, came from its community's dedication to [Test Driven
Development](https://www.freecodecamp.org/news/test-driven-development-what-it-is-and-what-it-is-not-41fa6bca02a2/).

It is almost impossible to learn how to program in
[Ruby](https://genius.com/Kenny-rogers-and-the-first-edition-ruby-dont-take-your-love-to-town-lyrics)
without also learning how to write unit tests. The idea behind testing is very
simple. For every piece of code that does something, you also write another
piece of code that checks that the former functions as intended.

Concretely, a simple unit test would look something like this:

````ruby
assert_equal( 70, add( 50, 20 ) )
````

In this very example, the test asserts that a function called 'add' should be
able to come to the conclusion that the sum of 50 and 20 is 70.

Test Driven Development, however, goes one step further than just unit writing
tests. The real innovation of the methodology consists in the fact that the
tests are not written after that the developer has written the code but before.

This so-called [test
first](https://medium.com/@fagnerbrack/code-review-and-test-driven-development-4c19b69b5761)
approach radically changes the practice of software development. In this new
paradigm, the developer starts her work by making a promise of what the code
should do after it is finished. In TDD, tests become
[contracts](https://www.lawtechnologytoday.org/2020/03/how-smart-contracts-are-changing-legal-contracts/).
They formalize the expectations that the developer may have of her future work.
The practice of TDD as such could therefore already be considered ethical.

## Behavior Driven Development

 > 
 > Be ready, be ready to get confused  
 > There's definitely, definitely, definitely no logic  
 > To human behavior
 > 
 > — Björk

[Behavior Driven Development](https://inviqa.com/blog/bdd-guide) takes these
fundamental ideas of Test Driven Development one step further. In BDD, the focus
of the test is no longer the code but the user. It is therefore no longer even
called a test but a specification.  This is a very, subtle difference, that is
often, falsely, dismissed as meaningless.

The difference is probably best explained after I first show an example:

````gherkin
Feature: Cash register can correctly add up two amounts     
In order to make money 
As a store owner      
I want the cash register to function properly      

Example: Adding up two store items
Given a customer buys a sweater and a pair of socks    
And the sweater costs 50 euro
And the socks cost 20 euro   
When I add up 50 euro and 20 euro  
Then the cash register should say 70 euro
````

For those, who never encountered
[Gherkin](https://food.ndtv.com/food-drinks/what-is-a-gherkin-is-it-different-from-a-pickled-cucumber-1620893)
— the so-called [domain specific
language](https://martinfowler.com/books/dsl.html) (DSL) in which this
specification is written — before. The above example is actually valid
code and not just a story. It can be parsed and executed by a computer. 

As is immediately apparent, BDD specification are much more verbose than
their TDD counterpart. While both tests are functionally equivalent, the gherkin
version needs 11 more lines of code. (And that's not even including the
implementation part that I omitted here.)

Many developers dismiss these extra lines as superfluous, but thereby miss the
essential point of BDD. Tests are no longer exclusively intended for developers.
They are meant to facilitate the dialogue between the engineer and the
software’s intended user and/or customer. BDD specifications are a tool to manage
their mutual expectations.

One could argue that, from a BDD perspective, the most important line in the
specification above is thus the following:

````gherkin
As a store owner
````

As opposed to TDD tests, BDD specifications don’t formalize the expectations
between developers (either other engineers or the infamous future selves). They
create a contract between developers and the software’s future users. 

## Value Driven Development

 > 
 > I'm just valuin' the value
 > 
 > — Lil' Wayne

BDD constantly reminds the developer of the fact that there is an actual user of
her software, which — as anyone who has ever used a [computer](https://uxplanet.org/bad-ux-roundup-12-its-called-human-computer-interaction-for-a-reason-fe62cd96a192) knows — is already a feat as such.

But while the user centricity of BDD has been often praised, there is another
line in the example above that unfortunately has never gotten the attention that
it deserves:

````gherkin
In order to make money   
````

This is the line in the test where the actual value of the software is
determined. This example is deliberately a bit contrived to make a point. While
negotiating and formalizing their mutual expectations, user sand developers
should decide which [values they
value](https://thinkers50.com/blog/value-of-values/).  And while making money is
definitely an important one. It is far from the only one value that they could
and should choose. 

Just imagine what else we could have stated as the project’s goal:

````gherkin
In order to increase accessibility  
````

````gherkin
In order to make people happier    
````

````gherkin
In order to protect people’s privacy     
````

And just imagine how their respective specifications could have looked if
we would have chosen these different values? 

That’s exactly what we are doing with Public Badges. Encouraging developers to
write software specifications with values in mind. The badge itself is in the
end merely an insignia of merit. A token that shows to the outside world that
its creators actually committed themselves to this practice of making their
ethics measurable, reproducible, and communicable: Value Driven Development.

---

This is the second in a series of articles. The first can be found here:
[Fundamentals of Trust](Fundamentals%20of%20Trust.md)

[Public Badges](https://github.com/OffCourse/public-badges) is an initiative of
[Public Spaces](https://publicspaces.net) that is currently being developed by
[Waag](https://waag.org) and [Offcourse Studio\_](https://offcourse-studio.com).

Photo by [Lisheng Chang](https://unsplash.com/@changlisheng?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on Unsplash
