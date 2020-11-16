# BIVMBPL - A What?

Programming languages: Software developers, hackers and nerds use them every day, but how do they work and can you build your own? Since a few years, I've been intrigued by the idea of designing & building my own programming languages, and over the past few years I've read a bunch of blogs, manuals, and tutorials about this very subject. In this series you can read through my journey of developing yet another programming language (yes, I've made quite a few programming languages at this point, though most of them are not very good). As a quick disclaimer before we begin, there are many ways to do this, and as I'm a self taught programmer, there're also probably better ways. In my opinion this doesn't mean that such a project can't be a valuable lesson, since programming is largely problem solving, not just knowing syntax and 'how to code'.
I hope that using this guide you'll be able to create something which works and that you'll experience the thrill of making your own programming language! This series will describe the making of a _**b**ytecode **i**nterpreted **v**irtual **m**achine **b**ased **p**rogramming **l**anguage_. 

## Introduction

![Schema 1](https://i.imgur.com/s3VorcY.png)

Let's start with the some basics. The first question we need to ask is, of which parts does this "programming language" consist which makes it a *working* programming language? So there're a few different components, which are: 

- The lexer-parser-compiler (could also be viewed as three separate components, hence the subchapters)
- The virtual machine interpreter
- All other "components" will be assigned to one of the categories above.

The *lexer-parser-compiler* component takes a string input of code and then generates a form of bytecode. This bytecode, which we'll define ourselves, will then be passed on to the *virtual machine interpreter* (*vm*) component. This'll loop through the array of bytecodes, basically in a large `switch` statement (ambiguous with an `if`, `else if` & `else`). In this `switch`, the *vm* will handle all sorts of actions, like performing calculations and storing variables. It's called a *virtual machine* because it has an operator stack. This will be explained in detail later on.

Components are explained in depth in the chapter 'Components'



## Note

This programming language runs on a bytecode interpreter, in de form of a virtual machine. To make the language simple and more intuitive, the interpreter handles object & type casting, meaning that the language itself is dynamically typed. Other style aspects of our language will be explained later. Also note that, for simplicity's sake, this series won't go in depth talking about different paradigms. So this language is multi-paradigm.

I'll be using C#, simply because I feel most comfortable with it, but feel free to use any other language (though it helps if the language of your choice is object oriented). Also, this won't be a guide from which you can copy the code snippets to create a working program, but rather a theoretical approach which provides you with scaffolding to start on your own. This doesn't mean there'll be no code or examples, just that this is not the main focus of this series.

## Content

1. Language Design
2. Bytecode
3. Components
4. Virtual Machine
5. Lexer, parser and compiler
   1. Lexing and parsing
   2. Compiling
   3. Code generation

## Further reading & resources

- [Crafting Interpreters](https://craftinginterpreters.com/)
- [Java Bytecode - Wikipedia](https://en.wikipedia.org/wiki/Java_bytecode)