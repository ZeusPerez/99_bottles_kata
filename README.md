# 99 Bottles Kata

This is the `99 bottles` kata. It's simple, we just have to sing (in the form of an output) the following song:

```
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.

98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.

97 bottles of beer on the wall, 97 bottles of beer.
Take one down and pass it around, 96 bottles of beer on the wall.
...
...
...

3 bottles of beer on the wall, 3 bottles of beer.
Take one down and pass it around, 2 bottles of beer on the wall.

2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.

1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
```

## Instructions/Suggestions
Try to do TDD:
- Write the test
- Make the test fail (RED)
- Write the code that makes the test pass (GREEN)

In case you need to refactor, you will need to do it after GREEN phase and the test wouldn't turn to red with the refactor. In case the tests turn to RED, you should undo the changes and start the refactor again.

A suggestion/challenge for the refactors is to use [Flocking Rules](https://medium.com/extreme-programming/notes-from-99-bottles-of-oop-5c902afd3948), with the requirement of only make changes in one line before passing the tests again and keep them GREEN always (a conditional is considered to be one line)

Ping-Pong Pair Programming:
1. The first member should write the smallest test he can (let it in RED).
2. The other member should write the code that makes the test green and writes next smaller test he can (let it in RED).
3. Repeat step 2 until the problem is solved.

You want a metric to check how good is your code? There is no metric that can say which code is better, but I usually take a look at my [flog](https://github.com/seattlerb/flog) score (with is a variant of ABC), although it can't measure some good practices like better abstractions.

Did you finish and want an extra requirement? Here you have it:
>! output "1 six-pack" in each place where it currently says "6
bottles."

If you want to see a very good solution and an evolution of the different approaches for this exercise I recommend you to read [99 Bottles of OOP](https://www.sandimetz.com/99bottles/), in which this exercise and my suggestions are based.

Happy coding!
