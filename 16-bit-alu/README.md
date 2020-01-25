# 16-bit ALU
16-bit 2-input ALU using the Lucid programming language (HDL) on the Mojo v3 FPGA development board

# ALU Functionality

### Core ALU Functionality
* Addition & Subtraction
* Boolean (AND, OR, XOR)
* Shift Left/Right (with optional signed extension)
* Comparison (less than and/or equal)
* Multiplication & Division

### Additional Functionality
* Manual Testing
* Automated Testing
* Ability to detect errors:
    * Addition & Multiplication Overflow
    * Division by 0
    * Invalid `ALUFN` signals

# Using the ALU on Mojo v3 with IO Shield
| `io_button` | Function |
| --- | --- |
| `[0]` | Pressing the "UP" button stores 16-bit value of `a` to `dff a` |
| `[1]` | Pressing the "CENTRE" button starts Automated **Success** Testing |
| `[2]` | Pressing the "DOWN" button stores 16-bit value of `b` to `dff b` |
| `[3]` | Pressing the "LEFT" button starts Automated **Failure** Testing |
| `[4]` | Pressing the "RIGHT" button calculates the `OPERATION(a, b)` |

### Manual Testing
| `io_dip` | Function |
| --- | --- |
| `[1:0]` | Reserved for changing the values of `a` and `b` |
| `[2][5:0]` | Reserved for changing the value of `ALUFN` signal |

| `io_led` | Function |
| --- | --- |
| `[1:0]` | Reflect the values of `a`, `b` and `OPERATION(a, b)` |
| `[2][6:4]` | Reflect `ERROR` signal |
| `[2][7]` | Reflect `OVERFLOW` signal |

### Automated Testing
#### Failure
| State | Seg values |
| --- | --- |
| IDLE | H111 |
| WRONGADD | 0000 |
| FAIL | NAY1 |

#### Success
| State | Seg values |
| --- | --- |
| IDLE | H111 |
| ADD1 | 0001 |
| ADD2 | 0002 |
| ADD3 | 0003 |
| ADD4 | 0004 |
| SUB1 | 0005 |
| SUB2 | 0006 |
| SUB3 | 0007 |
| SUB4 | 0008 |
| AND1 | 0009 |
| AND2 | 0010 |
| OR1 | 0011 |
| OR2 | 0012 |
| XOR1 | 0013 |
| XOR2 | 0014 |
| A1 | 0015 |
| A2 | 0016 |
| SHL1 | 0017 |
| SHL2 | 0018 |
| SHR1 | 0019 |
| SHR2 | 0020 |
| SRA1 | 0021 |
| SRA2 | 0022 |
| CMPEQ1 | 0023 |
| CMPEQ2 | 0024 |
| CMPLT1 | 0025 |
| CMPLT2 | 0026 |
| CMPLT3 | 0027 |
| CMPLE1 | 0028 |
| CMPLE2 | 0029 |
| CMPLE3 | 0030 |
| MUL1 | 0031 |
| MUL2 | 0032 |
| DIV1 | 0033 |
| DIV2 | 0034 |
| SUCCESS | YAY1 |
