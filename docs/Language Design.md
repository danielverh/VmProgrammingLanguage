# Language Design

The designing the language is both exciting and creative. Basically, you can decide everything about the language yourself. You can follow along with my specific language design choices, but you can also deviate in this chapter. First, the name to add some feeling to the 'programming language', I called my language 'DashScript'. 

## Style

The syntax and style will be quite similar to JavaScript and C (and similar languages). This initially means I've chosen the following syntax and style rules: Brackets for defining code [code blocks](#code%20blocks), camelCase & PascalCase, and much more minor choices which are all discussed in this chapter.  

## Types

There will be different types in DashScript. All typed will have a parent type called `DashObject`. 
First there are numbers, both integers and floating point numbers:

- `153`: contains no decimal separator, and therefore the compiler knows it should be interpreted as an `int`. Consequently:
- `1.0`, `.150`, `15123.0`: All floating point numbers contain a decimal separator.

*Note: Most programming languages also offer some sort of postfix notation to indicate if something is a floating point e.g. `100f` is a float*

Next, an important type is a `string` which is basically an immutable collection of characters aka text. Strings will be defined using `""`, where the string is in-between the quotation marks. String will not be passed as bytecode, but as constant string values, since once they're defined in the DashScript code, we can safely assume that those specific strings will never change. E.g. `"Hello World!"`

There's also the bool type, which can have two values (keywords): `true` or `false`. These will be indicated using the mentioned keywords. 

And lastly (for now), there's the `DashClass`. This will be a general object type, which we can use for, later on, extending DashScript with more advanced types.

## Variables

As mentioned in the previous chapter, DashScript is dynamically typed. This means that every variable can have a value of every DashObject type. This means that the programmer never has to tell the compiler of what type a variable is, when defining it, since the parser & vm don't need to know the type. 

Variables will be defined as following:

```variableName = <value>;``` , where value can be of any type.

## Comments

Comments are also important for a programming language, as they offer programmers a way to organize their code.

```
// Single line comments
/*
Multiple line comments
*/
```

## Code Blocks

A code block is a collection of one or more [statements](#statements) wrapped in curly brackets (`{}`). E.g.

```
{
    <statement>*
}
```

## Expressions

Expressions are the most versatile (but also complex) part of DashScript. But in its core, an expression is an operation with one ore more arguments, which results in another value. DashScript uses the "(almost) everything is an expression" paradigm. This means that basically everything can be used both *as* and *in* an expression.

```
// The following examples are all valid expressions
<constant int | float | bool | string values>
<variable name>
<function call>
<function definition>
<expression> + | - | * | / <expression>
!<expression>
-<expression>
(<expression>)
```

## Operations

Operations, not to be confused with [statements](#statements) is the general name for functions, loops, and comparators (`if`, `else`, etc.). Their syntax is as follows:

```
// Else if statement(s)
if <expression> => <statement>
else if <expression> => <statement>
else => <statement>

```



## Statements

Statements are expressions which can be executed on a top level. This means that they can be called directly instead of as arguments. Their syntax is as follows:

```
<expression>;
// or
<code block>
```