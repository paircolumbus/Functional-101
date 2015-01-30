# Glossary
Here are some terms to familiarize yourself with...

__Immutable data:__ data that cannot be changed.

__First class functions:__ functions that can be used like any other value (i.e. integer, array, dictionary), meaning they can be passed to functions as parameters, returned from functions, and stored inside of structures. 

__Currying:__ decomposing a function that takes multiple arguments into a function that takes the first argument and returns a function that takes the next argument and so forth for all arguments.

__Tail call optimisation:__ is a programming language feature. Each time a function recurses, a new stack frame is created. A stack frame is used to store the arguments and local values for the current function invocation. If a function recurses a large number of times, it is possible for the interpreter or compiler to run out of memory. Languages with tail call optimisation reuse the same stack frame for their entire sequence of recursive calls. Languages like Python that do not have tail call optimisation generally limit the number of times a function may recurse to some number in the thousands. In the case of the race() function, there are only five time steps, so it is safe.

__Parallelization:__ running the same code concurrently without synchronization. These concurrent processes are often run on multiple processors.

__Lazy evaluation:__ a compiler technique that avoids running code until the result is needed.

__Deterministic:__ a process is deterministic if repetitions yield the same result every time.
