# Language Design

The designing the language is both exciting and creative. Basically, you can decide everything about the language yourself. You can follow along with my decisions, but you can also deviate here and there. I called my language 'DashScript'. Let's begin! 

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



