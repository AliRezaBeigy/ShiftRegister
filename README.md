[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# Shift Register
A Parallel Shift Register with ability to change its direction.

## Test
Each verilog file has its own test file that contains related test module which the filename end with "_test"

## Shift Register Test Result
```
# 0 Clock:1 Data:1111 Q:xxx1 NotQ:xxx0 Load:0 RTL:1
# 10 Clock:0 Data:1111 Q:xxx1 NotQ:xxx0 Load:0 RTL:1
# 20 Clock:1 Data:1110 Q:xx10 NotQ:xx01 Load:0 RTL:1
# 30 Clock:0 Data:1110 Q:xx10 NotQ:xx01 Load:0 RTL:1
# 40 Clock:1 Data:1110 Q:x100 NotQ:x011 Load:0 RTL:1
# 50 Clock:0 Data:1110 Q:x100 NotQ:x011 Load:0 RTL:1
# 60 Clock:1 Data:1111 Q:1001 NotQ:0110 Load:0 RTL:1
# 70 Clock:0 Data:1111 Q:1001 NotQ:0110 Load:0 RTL:1
# 80 Clock:1 Data:1011 Q:1011 NotQ:0100 Load:1 RTL:1
# 90 Clock:0 Data:1011 Q:1011 NotQ:0100 Load:1 RTL:1
# 100 Clock:1 Data:0000 Q:0000 NotQ:1111 Load:0 RTL:0
# 110 Clock:0 Data:0000 Q:0000 NotQ:1111 Load:0 RTL:0
# 120 Clock:1 Data:1111 Q:1000 NotQ:0111 Load:0 RTL:0
# 130 Clock:0 Data:1111 Q:1000 NotQ:0111 Load:0 RTL:0
# 140 Clock:1 Data:0111 Q:0100 NotQ:1011 Load:0 RTL:0
# 150 Clock:0 Data:0111 Q:0100 NotQ:1011 Load:0 RTL:0
# 160 Clock:1 Data:1111 Q:1010 NotQ:0101 Load:0 RTL:0
```

## License
 
The MIT License (MIT)

Copyright (c) 2020 AliReza Beigy

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.