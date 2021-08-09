\ENCODING=ISO-8859-1
\Problem name: ilog.cplex

Minimize
 obj: 60 Alpha(je1)(te1)#0 + 60 Alpha(je2)(te1)#1 + 60 Alpha(je3)(te1)#2
      + 60 Alpha(je1)(te2)#3 + 60 Alpha(je2)(te2)#4 + 60 Alpha(je3)(te2)#5
      + 60 Alpha(je1)(te3)#6 + 60 Alpha(je2)(te3)#7 + 60 Alpha(je3)(te3)#8
      + 60 Alpha(je1)(te4)#9 + 60 Alpha(je2)(te4)#10 + 60 Alpha(je3)(te4)#11
      + 60 Alpha(je1)(te5)#12 + 60 Alpha(je2)(te5)#13 + 60 Alpha(je3)(te5)#14
      + 100 _Epsilon(je1)(te1)#15 - 1500 dummy#16 + 100 _Epsilon(je2)(te1)#17
      + 100 _Epsilon(je3)(te1)#18 + 100 _Epsilon(je1)(te2)#19
      + 100 _Epsilon(je2)(te2)#20 + 100 _Epsilon(je3)(te2)#21
      + 100 _Epsilon(je1)(te3)#22 + 100 _Epsilon(je2)(te3)#23
      + 100 _Epsilon(je3)(te3)#24 + 100 _Epsilon(je1)(te4)#25
      + 100 _Epsilon(je2)(te4)#26 + 100 _Epsilon(je3)(te4)#27
      + 100 _Epsilon(je1)(te5)#28 + 100 _Epsilon(je2)(te5)#29
      + 100 _Epsilon(je3)(te5)#30 + 1000 Lambda(0)#31 + 1000 Lambda(1)#32
      + 1000 Lambda(2)#33 + 1000 Lambda(3)#34 + 1000 Lambda(4)#35
Subject To
 c1:   y(1)(0)#36  = 160
 c3:   y(2)(0)#37  = 100
 c5:   y(3)(0)#38  = 0
 c7:   150 dummy#16 - y(1)(0)#36 + y(1)(1)#39 - v(ie1)(je1)(te1)#40
       - v(ie1)(je2)(te1)#41 - v(ie1)(je3)(te1)#42  = 0
 c9:   186 dummy#16 - y(1)(1)#39 + y(1)(2)#43 - v(ie1)(je1)(te2)#44
       - v(ie1)(je2)(te2)#45 - v(ie1)(je3)(te2)#46  = 0
 c11:  181 dummy#16 - y(1)(2)#43 + y(1)(3)#47 - v(ie1)(je1)(te3)#48
       - v(ie1)(je2)(te3)#49 - v(ie1)(je3)(te3)#50  = 0
 c13:  155 dummy#16 - y(1)(3)#47 + y(1)(4)#51 - v(ie1)(je1)(te4)#52
       - v(ie1)(je2)(te4)#53 - v(ie1)(je3)(te4)#54  = 0
 c15:  170 dummy#16 - y(1)(4)#51 + y(1)(5)#55 - v(ie1)(je1)(te5)#56
       - v(ie1)(je2)(te5)#57 - v(ie1)(je3)(te5)#58  = 0
 c17:  80 dummy#16 - y(2)(0)#37 + y(2)(1)#59 - v(ie2)(je1)(te1)#60
       - v(ie2)(je2)(te1)#61 - v(ie2)(je3)(te1)#62  = 0
 c19:  - y(2)(1)#59 + y(2)(2)#63 - v(ie2)(je1)(te2)#64 - v(ie2)(je2)(te2)#65
       - v(ie2)(je3)(te2)#66  = 0
 c21:  - y(2)(2)#63 + y(2)(3)#67 - v(ie2)(je1)(te3)#68 - v(ie2)(je2)(te3)#69
       - v(ie2)(je3)(te3)#70  = 0
 c23:  78 dummy#16 - y(2)(3)#67 + y(2)(4)#71 - v(ie2)(je1)(te4)#72
       - v(ie2)(je2)(te4)#73 - v(ie2)(je3)(te4)#74  = 0
 c25:  79 dummy#16 - y(2)(4)#71 + y(2)(5)#75 - v(ie2)(je1)(te5)#76
       - v(ie2)(je2)(te5)#77 - v(ie2)(je3)(te5)#78  = 0
 c27:  - y(3)(0)#38 + y(3)(1)#79 - v(ie3)(je1)(te1)#80 - v(ie3)(je2)(te1)#81
       - v(ie3)(je3)(te1)#82  = 0
 c29:  14 dummy#16 - y(3)(1)#79 + y(3)(2)#83 - v(ie3)(je1)(te2)#84
       - v(ie3)(je2)(te2)#85 - v(ie3)(je3)(te2)#86  = 0
 c31:  - y(3)(2)#83 + y(3)(3)#87 - v(ie3)(je1)(te3)#88 - v(ie3)(je2)(te3)#89
       - v(ie3)(je3)(te3)#90  = 0
 c33:  - y(3)(3)#87 + y(3)(4)#91 - v(ie3)(je1)(te4)#92 - v(ie3)(je2)(te4)#93
       - v(ie3)(je3)(te4)#94  = 0
 c35:  15 dummy#16 - y(3)(4)#91 + y(3)(5)#95 - v(ie3)(je1)(te5)#96
       - v(ie3)(je2)(te5)#97 - v(ie3)(je3)(te5)#98  = 0
 c37:  y(1)(1)#39 <= 300
 c39:  y(1)(1)#39 >= 186
 c41:  y(1)(2)#43 <= 300
 c43:  y(1)(2)#43 >= 181
 c45:  y(1)(3)#47 <= 300
 c47:  y(1)(3)#47 >= 155
 c49:  y(1)(4)#51 <= 300
 c51:  y(1)(4)#51 >= 170
 c53:  y(1)(5)#55 <= 300
 c55:  y(1)(5)#55 >= 150
 c57:  y(2)(1)#59 <= 157
 c59:  y(2)(1)#59 >= 0
 c61:  y(2)(2)#63 <= 157
 c63:  y(2)(2)#63 >= 0
 c65:  y(2)(3)#67 <= 157
 c67:  y(2)(3)#67 >= 78
 c69:  y(2)(4)#71 <= 200
 c71:  y(2)(4)#71 >= 79
 c73:  y(2)(5)#75 <= 200
 c75:  y(2)(5)#75 >= 0
 c77:  y(3)(1)#79 <= 50
 c79:  y(3)(1)#79 >= 14
 c81:  y(3)(2)#83 <= 50
 c83:  y(3)(2)#83 >= 0
 c85:  y(3)(3)#87 <= 50
 c87:  y(3)(3)#87 >= 0
 c89:  y(3)(4)#91 <= 50
 c91:  y(3)(4)#91 >= 15
 c93:  y(3)(5)#95 <= 50
 c95:  y(3)(5)#95 >= 0
 c97:  - ? dummy#16 <= 0
 c99:  - ? dummy#16 <= 0
 c101: - ? dummy#16 <= 0
 c103: - ? dummy#16 <= 0
 c105: - ? dummy#16 <= 0
 c107: - ? dummy#16 <= 0
 c109: - ? dummy#16 <= 0
 c111: - ? dummy#16 <= 0
 c113: - ? dummy#16 <= 0
 c115: - ? dummy#16 <= 0
 c117: - ? dummy#16 <= 0
 c119: - ? dummy#16 <= 0
 c121: - ? dummy#16 <= 0
 c123: - ? dummy#16 <= 0
 c125: - ? dummy#16 <= 0
 c127: v(ie1)(je1)(te1)#40 - 1.79769313486232e+308 Delta(ie1)(je1)(te1)#99 <= 0
 c129: v(ie1)(je1)(te2)#44 - 1.79769313486232e+308 Delta(ie1)(je1)(te2)#100
       <= 0
 c131: v(ie1)(je1)(te3)#48 - 1.79769313486232e+308 Delta(ie1)(je1)(te3)#101
       <= 0
 c133: v(ie1)(je1)(te4)#52 - 1.79769313486232e+308 Delta(ie1)(je1)(te4)#102
       <= 0
 c135: v(ie1)(je1)(te5)#56 - 1.79769313486232e+308 Delta(ie1)(je1)(te5)#103
       <= 0
 c137: v(ie1)(je2)(te1)#41 - 1.79769313486232e+308 Delta(ie1)(je2)(te1)#104
       <= 0
 c139: v(ie1)(je2)(te2)#45 - 1.79769313486232e+308 Delta(ie1)(je2)(te2)#105
       <= 0
 c141: v(ie1)(je2)(te3)#49 - 1.79769313486232e+308 Delta(ie1)(je2)(te3)#106
       <= 0
 c143: v(ie1)(je2)(te4)#53 - 1.79769313486232e+308 Delta(ie1)(je2)(te4)#107
       <= 0
 c145: v(ie1)(je2)(te5)#57 - 1.79769313486232e+308 Delta(ie1)(je2)(te5)#108
       <= 0
 c147: v(ie1)(je3)(te1)#42 - 1.79769313486232e+308 Delta(ie1)(je3)(te1)#109
       <= 0
 c149: v(ie1)(je3)(te2)#46 - 1.79769313486232e+308 Delta(ie1)(je3)(te2)#110
       <= 0
 c151: v(ie1)(je3)(te3)#50 - 1.79769313486232e+308 Delta(ie1)(je3)(te3)#111
       <= 0
 c153: v(ie1)(je3)(te4)#54 - 1.79769313486232e+308 Delta(ie1)(je3)(te4)#112
       <= 0
 c155: v(ie1)(je3)(te5)#58 - 1.79769313486232e+308 Delta(ie1)(je3)(te5)#113
       <= 0
 c157: v(ie2)(je1)(te1)#60 - 1.79769313486232e+308 Delta(ie2)(je1)(te1)#114
       <= 0
 c159: v(ie2)(je1)(te2)#64 - 1.79769313486232e+308 Delta(ie2)(je1)(te2)#115
       <= 0
 c161: v(ie2)(je1)(te3)#68 - 1.79769313486232e+308 Delta(ie2)(je1)(te3)#116
       <= 0
 c163: v(ie2)(je1)(te4)#72 - 1.79769313486232e+308 Delta(ie2)(je1)(te4)#117
       <= 0
 c165: v(ie2)(je1)(te5)#76 - 1.79769313486232e+308 Delta(ie2)(je1)(te5)#118
       <= 0
 c167: v(ie2)(je2)(te1)#61 - 1.79769313486232e+308 Delta(ie2)(je2)(te1)#119
       <= 0
 c169: v(ie2)(je2)(te2)#65 - 1.79769313486232e+308 Delta(ie2)(je2)(te2)#120
       <= 0
 c171: v(ie2)(je2)(te3)#69 - 1.79769313486232e+308 Delta(ie2)(je2)(te3)#121
       <= 0
 c173: v(ie2)(je2)(te4)#73 - 1.79769313486232e+308 Delta(ie2)(je2)(te4)#122
       <= 0
 c175: v(ie2)(je2)(te5)#77 - 1.79769313486232e+308 Delta(ie2)(je2)(te5)#123
       <= 0
 c177: v(ie2)(je3)(te1)#62 - 1.79769313486232e+308 Delta(ie2)(je3)(te1)#124
       <= 0
 c179: v(ie2)(je3)(te2)#66 - 1.79769313486232e+308 Delta(ie2)(je3)(te2)#125
       <= 0
 c181: v(ie2)(je3)(te3)#70 - 1.79769313486232e+308 Delta(ie2)(je3)(te3)#126
       <= 0
 c183: v(ie2)(je3)(te4)#74 - 1.79769313486232e+308 Delta(ie2)(je3)(te4)#127
       <= 0
 c185: v(ie2)(je3)(te5)#78 - 1.79769313486232e+308 Delta(ie2)(je3)(te5)#128
       <= 0
 c187: v(ie3)(je1)(te1)#80 - 1.79769313486232e+308 Delta(ie3)(je1)(te1)#129
       <= 0
 c189: v(ie3)(je1)(te2)#84 - 1.79769313486232e+308 Delta(ie3)(je1)(te2)#130
       <= 0
 c191: v(ie3)(je1)(te3)#88 - 1.79769313486232e+308 Delta(ie3)(je1)(te3)#131
       <= 0
 c193: v(ie3)(je1)(te4)#92 - 1.79769313486232e+308 Delta(ie3)(je1)(te4)#132
       <= 0
 c195: v(ie3)(je1)(te5)#96 - 1.79769313486232e+308 Delta(ie3)(je1)(te5)#133
       <= 0
 c197: v(ie3)(je2)(te1)#81 - 1.79769313486232e+308 Delta(ie3)(je2)(te1)#134
       <= 0
 c199: v(ie3)(je2)(te2)#85 - 1.79769313486232e+308 Delta(ie3)(je2)(te2)#135
       <= 0
 c201: v(ie3)(je2)(te3)#89 - 1.79769313486232e+308 Delta(ie3)(je2)(te3)#136
       <= 0
 c203: v(ie3)(je2)(te4)#93 - 1.79769313486232e+308 Delta(ie3)(je2)(te4)#137
       <= 0
 c205: v(ie3)(je2)(te5)#97 - 1.79769313486232e+308 Delta(ie3)(je2)(te5)#138
       <= 0
 c207: v(ie3)(je3)(te1)#82 - 1.79769313486232e+308 Delta(ie3)(je3)(te1)#139
       <= 0
 c209: v(ie3)(je3)(te2)#86 - 1.79769313486232e+308 Delta(ie3)(je3)(te2)#140
       <= 0
 c211: v(ie3)(je3)(te3)#90 - 1.79769313486232e+308 Delta(ie3)(je3)(te3)#141
       <= 0
 c213: v(ie3)(je3)(te4)#94 - 1.79769313486232e+308 Delta(ie3)(je3)(te4)#142
       <= 0
 c215: v(ie3)(je3)(te5)#98 - 1.79769313486232e+308 Delta(ie3)(je3)(te5)#143
       <= 0
 c217: _Epsilon(je1)(te1)#15 >= 1
 c219: _Epsilon(je2)(te1)#17 >= 1
 c221: _Epsilon(je3)(te1)#18 >= 1
 c223: _Epsilon(je1)(te2)#19 >= 1
 c225: _Epsilon(je2)(te2)#20 >= 1
 c227: _Epsilon(je3)(te2)#21 >= 1
 c229: _Epsilon(je1)(te3)#22 >= 1
 c231: _Epsilon(je2)(te3)#23 >= 1
 c233: _Epsilon(je3)(te3)#24 >= 1
 c235: _Epsilon(je1)(te4)#25 >= 1
 c237: _Epsilon(je2)(te4)#26 >= 1
 c239: _Epsilon(je3)(te4)#27 >= 1
 c241: _Epsilon(je1)(te5)#28 >= 1
 c243: _Epsilon(je2)(te5)#29 >= 1
 c245: _Epsilon(je3)(te5)#30 >= 1
 c247: 1000 Alpha(je1)(te1)#0 - _Epsilon(je1)(te1)#15 + dummy#16
       - 0.125 v(ie1)(je1)(te1)#40 - 0.166666666666667 v(ie2)(je1)(te1)#60
       - 0.125 v(ie3)(je1)(te1)#80  = 0
 c249: 1000 Alpha(je1)(te2)#3 + dummy#16 - _Epsilon(je1)(te2)#19
       - 0.125 v(ie1)(je1)(te2)#44 - 0.166666666666667 v(ie2)(je1)(te2)#64
       - 0.125 v(ie3)(je1)(te2)#84  = 0
 c251: 1000 Alpha(je1)(te3)#6 + dummy#16 - _Epsilon(je1)(te3)#22
       - 0.125 v(ie1)(je1)(te3)#48 - 0.166666666666667 v(ie2)(je1)(te3)#68
       - 0.125 v(ie3)(je1)(te3)#88  = 0
 c253: 1000 Alpha(je1)(te4)#9 + dummy#16 - _Epsilon(je1)(te4)#25
       - 0.125 v(ie1)(je1)(te4)#52 - 0.166666666666667 v(ie2)(je1)(te4)#72
       - 0.125 v(ie3)(je1)(te4)#92  = 0
 c255: 1000 Alpha(je1)(te5)#12 + dummy#16 - _Epsilon(je1)(te5)#28
       - 0.125 v(ie1)(je1)(te5)#56 - 0.166666666666667 v(ie2)(je1)(te5)#76
       - 0.125 v(ie3)(je1)(te5)#96  = 0
 c257: 1000 Alpha(je2)(te1)#1 + dummy#16 - _Epsilon(je2)(te1)#17
       - 0.125 v(ie1)(je2)(te1)#41 - 0.166666666666667 v(ie2)(je2)(te1)#61
       - 0.125 v(ie3)(je2)(te1)#81  = 0
 c259: 1000 Alpha(je2)(te2)#4 + dummy#16 - _Epsilon(je2)(te2)#20
       - 0.125 v(ie1)(je2)(te2)#45 - 0.166666666666667 v(ie2)(je2)(te2)#65
       - 0.125 v(ie3)(je2)(te2)#85  = 0
 c261: 1000 Alpha(je2)(te3)#7 + dummy#16 - _Epsilon(je2)(te3)#23
       - 0.125 v(ie1)(je2)(te3)#49 - 0.166666666666667 v(ie2)(je2)(te3)#69
       - 0.125 v(ie3)(je2)(te3)#89  = 0
 c263: 1000 Alpha(je2)(te4)#10 + dummy#16 - _Epsilon(je2)(te4)#26
       - 0.125 v(ie1)(je2)(te4)#53 - 0.166666666666667 v(ie2)(je2)(te4)#73
       - 0.125 v(ie3)(je2)(te4)#93  = 0
 c265: 1000 Alpha(je2)(te5)#13 + dummy#16 - _Epsilon(je2)(te5)#29
       - 0.125 v(ie1)(je2)(te5)#57 - 0.166666666666667 v(ie2)(je2)(te5)#77
       - 0.125 v(ie3)(je2)(te5)#97  = 0
 c267: 1000 Alpha(je3)(te1)#2 + dummy#16 - _Epsilon(je3)(te1)#18
       - 0.125 v(ie1)(je3)(te1)#42 - 0.166666666666667 v(ie2)(je3)(te1)#62
       - 0.125 v(ie3)(je3)(te1)#82  = 0
 c269: 1000 Alpha(je3)(te2)#5 + dummy#16 - _Epsilon(je3)(te2)#21
       - 0.125 v(ie1)(je3)(te2)#46 - 0.166666666666667 v(ie2)(je3)(te2)#66
       - 0.125 v(ie3)(je3)(te2)#86  = 0
 c271: 1000 Alpha(je3)(te3)#8 + dummy#16 - _Epsilon(je3)(te3)#24
       - 0.125 v(ie1)(je3)(te3)#50 - 0.166666666666667 v(ie2)(je3)(te3)#70
       - 0.125 v(ie3)(je3)(te3)#90  = 0
 c273: 1000 Alpha(je3)(te4)#11 + dummy#16 - _Epsilon(je3)(te4)#27
       - 0.125 v(ie1)(je3)(te4)#54 - 0.166666666666667 v(ie2)(je3)(te4)#74
       - 0.125 v(ie3)(je3)(te4)#94  = 0
 c275: 1000 Alpha(je3)(te5)#14 + dummy#16 - _Epsilon(je3)(te5)#30
       - 0.125 v(ie1)(je3)(te5)#58 - 0.166666666666667 v(ie2)(je3)(te5)#78
       - 0.125 v(ie3)(je3)(te5)#98  = 0
Bounds
 0 <= Alpha(je1)(te1)#0 <= 1
 0 <= Alpha(je2)(te1)#1 <= 1
 0 <= Alpha(je3)(te1)#2 <= 1
 0 <= Alpha(je1)(te2)#3 <= 1
 0 <= Alpha(je2)(te2)#4 <= 1
 0 <= Alpha(je3)(te2)#5 <= 1
 0 <= Alpha(je1)(te3)#6 <= 1
 0 <= Alpha(je2)(te3)#7 <= 1
 0 <= Alpha(je3)(te3)#8 <= 1
 0 <= Alpha(je1)(te4)#9 <= 1
 0 <= Alpha(je2)(te4)#10 <= 1
 0 <= Alpha(je3)(te4)#11 <= 1
 0 <= Alpha(je1)(te5)#12 <= 1
 0 <= Alpha(je2)(te5)#13 <= 1
 0 <= Alpha(je3)(te5)#14 <= 1
 0 <= _Epsilon(je1)(te1)#15 <= 2147483647
      dummy#16 = 1
 0 <= _Epsilon(je2)(te1)#17 <= 2147483647
 0 <= _Epsilon(je3)(te1)#18 <= 2147483647
 0 <= _Epsilon(je1)(te2)#19 <= 2147483647
 0 <= _Epsilon(je2)(te2)#20 <= 2147483647
 0 <= _Epsilon(je3)(te2)#21 <= 2147483647
 0 <= _Epsilon(je1)(te3)#22 <= 2147483647
 0 <= _Epsilon(je2)(te3)#23 <= 2147483647
 0 <= _Epsilon(je3)(te3)#24 <= 2147483647
 0 <= _Epsilon(je1)(te4)#25 <= 2147483647
 0 <= _Epsilon(je2)(te4)#26 <= 2147483647
 0 <= _Epsilon(je3)(te4)#27 <= 2147483647
 0 <= _Epsilon(je1)(te5)#28 <= 2147483647
 0 <= _Epsilon(je2)(te5)#29 <= 2147483647
 0 <= _Epsilon(je3)(te5)#30 <= 2147483647
 0 <= Lambda(0)#31 <= 1
 0 <= Lambda(1)#32 <= 1
 0 <= Lambda(2)#33 <= 1
 0 <= Lambda(3)#34 <= 1
 0 <= Lambda(4)#35 <= 1
 0 <= y(1)(0)#36 <= 2147483647
 0 <= y(2)(0)#37 <= 2147483647
 0 <= y(3)(0)#38 <= 2147483647
 0 <= y(1)(1)#39 <= 2147483647
 0 <= v(ie1)(je1)(te1)#40 <= 2147483647
 0 <= v(ie1)(je2)(te1)#41 <= 2147483647
 0 <= v(ie1)(je3)(te1)#42 <= 2147483647
 0 <= y(1)(2)#43 <= 2147483647
 0 <= v(ie1)(je1)(te2)#44 <= 2147483647
 0 <= v(ie1)(je2)(te2)#45 <= 2147483647
 0 <= v(ie1)(je3)(te2)#46 <= 2147483647
 0 <= y(1)(3)#47 <= 2147483647
 0 <= v(ie1)(je1)(te3)#48 <= 2147483647
 0 <= v(ie1)(je2)(te3)#49 <= 2147483647
 0 <= v(ie1)(je3)(te3)#50 <= 2147483647
 0 <= y(1)(4)#51 <= 2147483647
 0 <= v(ie1)(je1)(te4)#52 <= 2147483647
 0 <= v(ie1)(je2)(te4)#53 <= 2147483647
 0 <= v(ie1)(je3)(te4)#54 <= 2147483647
 0 <= y(1)(5)#55 <= 2147483647
 0 <= v(ie1)(je1)(te5)#56 <= 2147483647
 0 <= v(ie1)(je2)(te5)#57 <= 2147483647
 0 <= v(ie1)(je3)(te5)#58 <= 2147483647
 0 <= y(2)(1)#59 <= 2147483647
 0 <= v(ie2)(je1)(te1)#60 <= 2147483647
 0 <= v(ie2)(je2)(te1)#61 <= 2147483647
 0 <= v(ie2)(je3)(te1)#62 <= 2147483647
 0 <= y(2)(2)#63 <= 2147483647
 0 <= v(ie2)(je1)(te2)#64 <= 2147483647
 0 <= v(ie2)(je2)(te2)#65 <= 2147483647
 0 <= v(ie2)(je3)(te2)#66 <= 2147483647
 0 <= y(2)(3)#67 <= 2147483647
 0 <= v(ie2)(je1)(te3)#68 <= 2147483647
 0 <= v(ie2)(je2)(te3)#69 <= 2147483647
 0 <= v(ie2)(je3)(te3)#70 <= 2147483647
 0 <= y(2)(4)#71 <= 2147483647
 0 <= v(ie2)(je1)(te4)#72 <= 2147483647
 0 <= v(ie2)(je2)(te4)#73 <= 2147483647
 0 <= v(ie2)(je3)(te4)#74 <= 2147483647
 0 <= y(2)(5)#75 <= 2147483647
 0 <= v(ie2)(je1)(te5)#76 <= 2147483647
 0 <= v(ie2)(je2)(te5)#77 <= 2147483647
 0 <= v(ie2)(je3)(te5)#78 <= 2147483647
 0 <= y(3)(1)#79 <= 2147483647
 0 <= v(ie3)(je1)(te1)#80 <= 2147483647
 0 <= v(ie3)(je2)(te1)#81 <= 2147483647
 0 <= v(ie3)(je3)(te1)#82 <= 2147483647
 0 <= y(3)(2)#83 <= 2147483647
 0 <= v(ie3)(je1)(te2)#84 <= 2147483647
 0 <= v(ie3)(je2)(te2)#85 <= 2147483647
 0 <= v(ie3)(je3)(te2)#86 <= 2147483647
 0 <= y(3)(3)#87 <= 2147483647
 0 <= v(ie3)(je1)(te3)#88 <= 2147483647
 0 <= v(ie3)(je2)(te3)#89 <= 2147483647
 0 <= v(ie3)(je3)(te3)#90 <= 2147483647
 0 <= y(3)(4)#91 <= 2147483647
 0 <= v(ie3)(je1)(te4)#92 <= 2147483647
 0 <= v(ie3)(je2)(te4)#93 <= 2147483647
 0 <= v(ie3)(je3)(te4)#94 <= 2147483647
 0 <= y(3)(5)#95 <= 2147483647
 0 <= v(ie3)(je1)(te5)#96 <= 2147483647
 0 <= v(ie3)(je2)(te5)#97 <= 2147483647
 0 <= v(ie3)(je3)(te5)#98 <= 2147483647
 0 <= Delta(ie1)(je1)(te1)#99 <= 1
 0 <= Delta(ie1)(je1)(te2)#100 <= 1
 0 <= Delta(ie1)(je1)(te3)#101 <= 1
 0 <= Delta(ie1)(je1)(te4)#102 <= 1
 0 <= Delta(ie1)(je1)(te5)#103 <= 1
 0 <= Delta(ie1)(je2)(te1)#104 <= 1
 0 <= Delta(ie1)(je2)(te2)#105 <= 1
 0 <= Delta(ie1)(je2)(te3)#106 <= 1
 0 <= Delta(ie1)(je2)(te4)#107 <= 1
 0 <= Delta(ie1)(je2)(te5)#108 <= 1
 0 <= Delta(ie1)(je3)(te1)#109 <= 1
 0 <= Delta(ie1)(je3)(te2)#110 <= 1
 0 <= Delta(ie1)(je3)(te3)#111 <= 1
 0 <= Delta(ie1)(je3)(te4)#112 <= 1
 0 <= Delta(ie1)(je3)(te5)#113 <= 1
 0 <= Delta(ie2)(je1)(te1)#114 <= 1
 0 <= Delta(ie2)(je1)(te2)#115 <= 1
 0 <= Delta(ie2)(je1)(te3)#116 <= 1
 0 <= Delta(ie2)(je1)(te4)#117 <= 1
 0 <= Delta(ie2)(je1)(te5)#118 <= 1
 0 <= Delta(ie2)(je2)(te1)#119 <= 1
 0 <= Delta(ie2)(je2)(te2)#120 <= 1
 0 <= Delta(ie2)(je2)(te3)#121 <= 1
 0 <= Delta(ie2)(je2)(te4)#122 <= 1
 0 <= Delta(ie2)(je2)(te5)#123 <= 1
 0 <= Delta(ie2)(je3)(te1)#124 <= 1
 0 <= Delta(ie2)(je3)(te2)#125 <= 1
 0 <= Delta(ie2)(je3)(te3)#126 <= 1
 0 <= Delta(ie2)(je3)(te4)#127 <= 1
 0 <= Delta(ie2)(je3)(te5)#128 <= 1
 0 <= Delta(ie3)(je1)(te1)#129 <= 1
 0 <= Delta(ie3)(je1)(te2)#130 <= 1
 0 <= Delta(ie3)(je1)(te3)#131 <= 1
 0 <= Delta(ie3)(je1)(te4)#132 <= 1
 0 <= Delta(ie3)(je1)(te5)#133 <= 1
 0 <= Delta(ie3)(je2)(te1)#134 <= 1
 0 <= Delta(ie3)(je2)(te2)#135 <= 1
 0 <= Delta(ie3)(je2)(te3)#136 <= 1
 0 <= Delta(ie3)(je2)(te4)#137 <= 1
 0 <= Delta(ie3)(je2)(te5)#138 <= 1
 0 <= Delta(ie3)(je3)(te1)#139 <= 1
 0 <= Delta(ie3)(je3)(te2)#140 <= 1
 0 <= Delta(ie3)(je3)(te3)#141 <= 1
 0 <= Delta(ie3)(je3)(te4)#142 <= 1
 0 <= Delta(ie3)(je3)(te5)#143 <= 1
Generals
 Alpha(je1)(te1)#0  Alpha(je2)(te1)#1  Alpha(je3)(te1)#2  Alpha(je1)(te2)#3 
 Alpha(je2)(te2)#4  Alpha(je3)(te2)#5  Alpha(je1)(te3)#6  Alpha(je2)(te3)#7 
 Alpha(je3)(te3)#8  Alpha(je1)(te4)#9  Alpha(je2)(te4)#10  Alpha(je3)(te4)#11 
 Alpha(je1)(te5)#12  Alpha(je2)(te5)#13  Alpha(je3)(te5)#14 
 _Epsilon(je1)(te1)#15  dummy#16  _Epsilon(je2)(te1)#17  _Epsilon(je3)(te1)#18 
 _Epsilon(je1)(te2)#19  _Epsilon(je2)(te2)#20  _Epsilon(je3)(te2)#21 
 _Epsilon(je1)(te3)#22  _Epsilon(je2)(te3)#23  _Epsilon(je3)(te3)#24 
 _Epsilon(je1)(te4)#25  _Epsilon(je2)(te4)#26  _Epsilon(je3)(te4)#27 
 _Epsilon(je1)(te5)#28  _Epsilon(je2)(te5)#29  _Epsilon(je3)(te5)#30 
 y(1)(0)#36  y(2)(0)#37  y(3)(0)#38  y(1)(1)#39  v(ie1)(je1)(te1)#40 
 v(ie1)(je2)(te1)#41  v(ie1)(je3)(te1)#42  y(1)(2)#43  v(ie1)(je1)(te2)#44 
 v(ie1)(je2)(te2)#45  v(ie1)(je3)(te2)#46  y(1)(3)#47  v(ie1)(je1)(te3)#48 
 v(ie1)(je2)(te3)#49  v(ie1)(je3)(te3)#50  y(1)(4)#51  v(ie1)(je1)(te4)#52 
 v(ie1)(je2)(te4)#53  v(ie1)(je3)(te4)#54  y(1)(5)#55  v(ie1)(je1)(te5)#56 
 v(ie1)(je2)(te5)#57  v(ie1)(je3)(te5)#58  y(2)(1)#59  v(ie2)(je1)(te1)#60 
 v(ie2)(je2)(te1)#61  v(ie2)(je3)(te1)#62  y(2)(2)#63  v(ie2)(je1)(te2)#64 
 v(ie2)(je2)(te2)#65  v(ie2)(je3)(te2)#66  y(2)(3)#67  v(ie2)(je1)(te3)#68 
 v(ie2)(je2)(te3)#69  v(ie2)(je3)(te3)#70  y(2)(4)#71  v(ie2)(je1)(te4)#72 
 v(ie2)(je2)(te4)#73  v(ie2)(je3)(te4)#74  y(2)(5)#75  v(ie2)(je1)(te5)#76 
 v(ie2)(je2)(te5)#77  v(ie2)(je3)(te5)#78  y(3)(1)#79  v(ie3)(je1)(te1)#80 
 v(ie3)(je2)(te1)#81  v(ie3)(je3)(te1)#82  y(3)(2)#83  v(ie3)(je1)(te2)#84 
 v(ie3)(je2)(te2)#85  v(ie3)(je3)(te2)#86  y(3)(3)#87  v(ie3)(je1)(te3)#88 
 v(ie3)(je2)(te3)#89  v(ie3)(je3)(te3)#90  y(3)(4)#91  v(ie3)(je1)(te4)#92 
 v(ie3)(je2)(te4)#93  v(ie3)(je3)(te4)#94  y(3)(5)#95  v(ie3)(je1)(te5)#96 
 v(ie3)(je2)(te5)#97  v(ie3)(je3)(te5)#98  Delta(ie1)(je1)(te1)#99 
 Delta(ie1)(je1)(te2)#100  Delta(ie1)(je1)(te3)#101  Delta(ie1)(je1)(te4)#102 
 Delta(ie1)(je1)(te5)#103  Delta(ie1)(je2)(te1)#104  Delta(ie1)(je2)(te2)#105 
 Delta(ie1)(je2)(te3)#106  Delta(ie1)(je2)(te4)#107  Delta(ie1)(je2)(te5)#108 
 Delta(ie1)(je3)(te1)#109  Delta(ie1)(je3)(te2)#110  Delta(ie1)(je3)(te3)#111 
 Delta(ie1)(je3)(te4)#112  Delta(ie1)(je3)(te5)#113  Delta(ie2)(je1)(te1)#114 
 Delta(ie2)(je1)(te2)#115  Delta(ie2)(je1)(te3)#116  Delta(ie2)(je1)(te4)#117 
 Delta(ie2)(je1)(te5)#118  Delta(ie2)(je2)(te1)#119  Delta(ie2)(je2)(te2)#120 
 Delta(ie2)(je2)(te3)#121  Delta(ie2)(je2)(te4)#122  Delta(ie2)(je2)(te5)#123 
 Delta(ie2)(je3)(te1)#124  Delta(ie2)(je3)(te2)#125  Delta(ie2)(je3)(te3)#126 
 Delta(ie2)(je3)(te4)#127  Delta(ie2)(je3)(te5)#128  Delta(ie3)(je1)(te1)#129 
 Delta(ie3)(je1)(te2)#130  Delta(ie3)(je1)(te3)#131  Delta(ie3)(je1)(te4)#132 
 Delta(ie3)(je1)(te5)#133  Delta(ie3)(je2)(te1)#134  Delta(ie3)(je2)(te2)#135 
 Delta(ie3)(je2)(te3)#136  Delta(ie3)(je2)(te4)#137  Delta(ie3)(je2)(te5)#138 
 Delta(ie3)(je3)(te1)#139  Delta(ie3)(je3)(te2)#140  Delta(ie3)(je3)(te3)#141 
 Delta(ie3)(je3)(te4)#142  Delta(ie3)(je3)(te5)#143 
End
