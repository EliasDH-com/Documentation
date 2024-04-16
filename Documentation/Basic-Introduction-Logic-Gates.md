![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Basic Introduction Logic Gates🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [🧩Logic Gates](#🧩logic-gates)
    1. [👉AND Gate](#👉and-gate)
    2. [👉OR Gate](#👉or-gate)
    3. [👉NOT Gate](#👉not-gate)
    4. [👉NAND Gate](#👉nand-gate)
    5. [👉NOR Gate](#👉nor-gate)
    6. [👉XOR Gate](#👉xor-gate)
    7. [👉XNOR Gate](#👉xnor-gate)
    8. [👉Buffer Gate](#👉buffer-gate)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

Logic circuits deal with digital signals or digital inputs and produce digital outputs. They manipulate information that is in a digital format. This is useful because digital signals can be used to represent binary numbers and so logic circuits can manipulate binary mathematics - this makes them very powerful. Many modern devices use digital electronics and logic circuits are fundamental to using digital electronics.

There are two distinct types of digital circuit:

1. Combinational logic circuits
    Logic Circuits are circuits where the output only depends on the inputs. If the inputs change, the output immediately changes too. The combination of the inputs determines what the output(s) will be. Examples of combinational logic circuits include:
    - Simple logic gates 
    - Logic circuits containing multiple logic gates 
    - Logic circuits with multiple inputs 
    - Logic operators such as Full Adders, Half Adders and Multiplexers 

2. Sequential logic circuits
    Logic Circuits are circuits where the output depends on the inputs and also what the inputs were previously. When the inputs change the outputs do not necessarily change immediately. The output depends on the state of the inputs and how the inputs have changed some time before. Examples of synchronous logic circuits include: 
    - Monostable circuits 
    - Bistable circuits, latches and flip flops 
    - Astable circuits 
    - Counters 
    - Shift registers 

## 🧩Logic Gates

### 👉AND Gate
The AND gate is a basic digital logic gate that implements logical conjunction - it behaves according to the truth table to the right. A HIGH output (1) results only if all the inputs to the AND gate are HIGH (1). If none or not all inputs to the AND gate are HIGH, a LOW output results. The function can be extended to any number of inputs. The AND gate is sometimes called an **inhibition gate** since it behaves in a manner similar to the **inhibitory** synapse in neuroscience.

- Logic Function: **AND GATE**
- Boolean Expression: **Y = A.B**
- Truth Table: 
    | A | B | Y |
    | - | - | - |
    | 0 | 0 | 0 |
    | 0 | 1 | 0 |
    | 1 | 0 | 0 |
    | 1 | 1 | 1 |
- Logic Symbol (ANSI/IEEE Symbol):

    ![AND Gate](/Images/Basic-Introduction-Logic-Gate_AND-1.png)

- Logic Symbol (IEC and ANSI/IEEE Symbol):

    ![AND Gate](/Images/Basic-Introduction-Logic-Gate_AND-2.png)

- Logic Symbol (DIN Symbol {obsolete}):

    ![AND Gate](/Images/Basic-Introduction-Logic-Gate_AND-3.png)

### 👉OR Gate
The OR gate is a digital logic gate that implements logical disjunction - it behaves according to the truth table to the right. A HIGH output (1) results if one or both the inputs to the gate are HIGH (1). If neither input is HIGH, a LOW output (0) results. In another sense, the function of OR effectively finds the maximum between two binary digits, just as the complementary AND function finds the minimum.

- Logic Function: **OR GATE**
- Boolean Expression: **Y = A + B**
- Truth Table: 
    | A | B | Y |
    | - | - | - |
    | 0 | 0 | 0 |
    | 0 | 1 | 1 |
    | 1 | 0 | 1 |
    | 1 | 1 | 1 |
- Logic Symbol (ANSI/IEEE Symbol):

    ![OR Gate](/Images/Basic-Introduction-Logic-Gate_OR-1.png)

- Logic Symbol (IEC and ANSI/IEEE Symbol):

    ![OR Gate](/Images/Basic-Introduction-Logic-Gate_OR-2.png)

- Logic Symbol (DIN Symbol {obsolete}):

    ![OR Gate](/Images/Basic-Introduction-Logic-Gate_OR-3.png)

### 👉NOT Gate
The inverter is a basic building block in digital electronics. Multiplexers, decoders, state machines, and other sophisticated digital devices may use inverters. The hex inverter is an integrated circuit that contains six inverters. Hex inverter is the most common example. The digital inverter is a basic building block in digital electronics. Multiplexers, decoders, state machines, and other sophisticated digital devices may use inverters. The hex inverter is an integrated circuit that contains six inverters. Hex inverter is the most common example.

- Logic Function: **NOT GATE**
- Boolean Expression: **Y = A'**
- Truth Table: 
    | A | Y |
    | - | - |
    | 0 | 1 |
    | 1 | 0 |
- Logic Symbol (ANSI/IEEE Symbol):

    ![NOT Gate](/Images/Basic-Introduction-Logic-Gate_NOT-1.png)

- Logic Symbol (IEC and ANSI/IEEE Symbol):

    ![NOT Gate](/Images/Basic-Introduction-Logic-Gate_NOT-2.png)

- Logic Symbol (DIN Symbol {obsolete}):

    ![NOT Gate](/Images/Basic-Introduction-Logic-Gate_NOT-3.png)

### 👉NAND Gate
The NAND gate is a digital logic gate that implements logical NAND - it behaves according to the truth table to the right. A LOW output (0) results only if all the inputs to the gate are HIGH (1); if any input is LOW (0), a HIGH output (1) results. The function can be extended to any number of inputs. It may also be used as a universal logic gate; that is, a NAND gate can be used to implement any boolean function without the need to use any other logic gate type.

- Logic Function: **NAND GATE**
- Boolean Expression: **Y = (A.B)'**
- Truth Table: 
    | A | B | Y |
    | - | - | - |
    | 0 | 0 | 1 |
    | 0 | 1 | 1 |
    | 1 | 0 | 1 |
    | 1 | 1 | 0 |
- Logic Symbol (ANSI/IEEE Symbol):

    ![NAND Gate](/Images/Basic-Introduction-Logic-Gate_NAND-1.png)

- Logic Symbol (IEC and ANSI/IEEE Symbol):
    
    ![NAND Gate](/Images/Basic-Introduction-Logic-Gate_NAND-2.png)

- Logic Symbol (DIN Symbol {obsolete}):
        
    ![NAND Gate](/Images/Basic-Introduction-Logic-Gate_NAND-3.png)

### 👉NOR Gate
The NOR gate is a digital logic gate that implements logical NOR - it behaves according to the truth table to the right. A HIGH output (1) results if both the inputs to the gate are LOW (0); if one or both input is HIGH (1), a LOW output (0) results. NOR is the result of the negation of the OR operator. It can also be seen as an AND gate with all the inputs inverted. If any of the inputs are 1, the output will be 0. Only when all inputs are 0, the output will be 1.

- Logic Function: **NOR GATE**
- Boolean Expression: **Y = (A + B)'**
- Truth Table: 
    | A | B | Y |
    | - | - | - |
    | 0 | 0 | 1 |
    | 0 | 1 | 0 |
    | 1 | 0 | 0 |
    | 1 | 1 | 0 |
- Logic Symbol (ANSI/IEEE Symbol):

    ![NOR Gate](/Images/Basic-Introduction-Logic-Gate_NOR-1.png)

- Logic Symbol (IEC and ANSI/IEEE Symbol):
    
    ![NOR Gate](/Images/Basic-Introduction-Logic-Gate_NOR-2.png)

- Logic Symbol (DIN Symbol {obsolete}):

    ![NOR Gate](/Images/Basic-Introduction-Logic-Gate_NOR-3.png)

### 👉XOR Gate
The XOR gate is a digital logic gate that implements exclusive disjunction - it behaves according to the truth table to the right. A HIGH output (1) results if one, and only one, of the inputs to the gate are HIGH (1). If both inputs are LOW (0) or both are HIGH (1), a LOW output (0) results. XOR represents the inequality function, i.e., the output is HIGH if the inputs are not alike otherwise the output is LOW. A way to remember XOR is "must have one or the other but not both".

- Logic Function: **XOR GATE**
- Boolean Expression: **Y = A ⊕ B**
- Truth Table: 
    | A | B | Y |
    | - | - | - |
    | 0 | 0 | 0 |
    | 0 | 1 | 1 |
    | 1 | 0 | 1 |
    | 1 | 1 | 0 |
- Logic Symbol (ANSI/IEEE Symbol):

    ![XOR Gate](/Images/Basic-Introduction-Logic-Gate_XOR-1.png)

- Logic Symbol (IEC and ANSI/IEEE Symbol):

    ![XOR Gate](/Images/Basic-Introduction-Logic-Gate_XOR-2.png)

- Logic Symbol (DIN Symbol {obsolete}):

    ![XOR Gate](/Images/Basic-Introduction-Logic-Gate_XOR-3.png)

### 👉XNOR Gate
The XNOR gate is a digital logic gate that implements exclusive NOR - it behaves according to the truth table to the right. A HIGH output (1) results if both of the inputs to the gate are the same. If one but not both inputs are HIGH (1), a LOW output (0) results. It is sometimes useful to consider the XNOR gate as an XOR gate with an additional NOT gate connected to its output. This representation can be helpful when constructing a logic circuit diagram to solve a problem.

- Logic Function: **XNOR GATE**
- Boolean Expression: **Y = (A ⊕ B)'**
- Truth Table: 
    | A | B | Y |
    | - | - | - |
    | 0 | 0 | 1 |
    | 0 | 1 | 0 |
    | 1 | 0 | 0 |
    | 1 | 1 | 1 |
- Logic Symbol (ANSI/IEEE Symbol):

    ![XNOR Gate](/Images/Basic-Introduction-Logic-Gate_XNOR-1.png)

- Logic Symbol (IEC and ANSI/IEEE Symbol):

    ![XNOR Gate](/Images/Basic-Introduction-Logic-Gate_XNOR-2.png)

- Logic Symbol (DIN Symbol {obsolete}):

    ![XNOR Gate](/Images/Basic-Introduction-Logic-Gate_XNOR-3.png)

### 👉Buffer Gate
A buffer gate is a logic gate that changes its input signal to the opposite state. Therefore, if the input is 1, then the output will be 0. If the input is 0, then the output will be 1. In other words, the output signal is the same as the input signal but inverted. The buffer gate is also called a unity gain amplifier, a voltage follower, or a buffer amplifier. The buffer gate is a unity gain amplifier, which means that the voltage of the output equals the voltage of the input. The buffer gate is used to isolate the input from the output. The buffer gate is used to isolate the input from the output. The buffer gate is used to isolate the input from the output.

- Logic Function: **BUFFER GATE**
- Boolean Expression: **Y = A**
- Truth Table: 
    | A | Y |
    | - | - |
    | 0 | 0 |
    | 1 | 1 |
- Logic Symbol (ANSI/IEEE Symbol):

    ![BUFFER Gate](/Images/Basic-Introduction-Logic-Gate_BUFFER-1.png)

- Logic Symbol (IEC and ANSI/IEEE Symbol):

    ![BUFFER Gate](/Images/Basic-Introduction-Logic-Gate_BUFFER-2.png)

- Logic Symbol (DIN Symbol {obsolete}):

    ![BUFFER Gate](/Images/Basic-Introduction-Logic-Gate_BUFFER-3.png)

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com