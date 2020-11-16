# Bytecode

Our bytecode will be defined in, like the name suggests, bytes. Each byte is used for a different operation in de virtual machine, and they can make use of an "argument". This argument consists of some bytes, which can be parsed into something like an integer, bool or anything with a **fixed** size - it won't work for strings. Therefore, strings are constants, given to the vm before the bytecode is executed. The `OpCode`, which means operation code, is defined in an `enum`. So we don't have to worry about numbers, we can view an `OpCode` as a name.

```c#
enum OpCode {
    /* 
    Load operations each take one argument of their corresponding type. Constants are strings where the argument is the index in a string array (constants), located in the vm.  
    */
    LoadInt,
    LoadFloat,
    LoadBool, // Argument is only one byte.
    LoadConstant,
    
    /*
    Perform said operation in the vm, these take no argument.
    */
    Add,
    Subtract,
    Multiply,
    Divide,
    Print,
    /*
    Perform said operation in the vm, these take one integer argument (4 bytes).
    */
    GoTo,
    
    // Define a variable
    DefineVar,
    // Assign a variable with the Pop() value from the stack
    SetVar,
    // Push value of a variable to the stack
    GetVar,
}
```

