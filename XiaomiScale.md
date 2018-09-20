#### 小米体重秤数据说明

| byte | function                                                     |
| ---- | ------------------------------------------------------------ |
| 0    | -Bit 0: lbs unit                                             |
|      | -Bit 1-3: unknown                                            |
|      | -Bit 4: jin unit                                             |
|      | -Bit 5: stabilized                                           |
|      | -Bit 6: unknown                                              |
|      | -Bit 7: weight removed  选定为公斤,稳定状态为真移除状态为假: `22` |
| 1-2  | weight(little endian) 例如: `10 31` 则为`0x3110`= 12560, 12560/200 = 62.8Kg |
| 3-4  | year(little endian)                                          |
| 5    | month                                                        |
| 6    | day                                                          |
| 7    | hour                                                         |
| 8    | minute                                                       |
| 9    | second                                                       |

| Service                                                      | Characteristics                                              |
| ------------------------------------------------------------ | :----------------------------------------------------------- |
| **Device Information**<br>0000180a-0000-1000-8000-00805f9b34fb | **Serial Number String  **<br>00002a25-0000-1000-8000-00805f9b34fb<br>**Software Revision String**<br>00002a28-0000-1000-8000-00805f9b34fb <br>**System ID**<br>00002a23-0000-1000-8000-00805f9b34fb<br>**PNP ID**<br>00002a50-0000-1000-8000-00805f9b34fb |
| **Generic Access**<br> 00001800-0000-1000-8000-00805f9b34fb  | **Device Name**  <br>00002a00-0000-1000-8000-00805f9b34fb  <br>**Appearance**  <br>00002a01-0000-1000-8000-00805f9b34fb  <br>**Peripheral Privacy Flag**  <br>00002a02-0000-1000-8000-00805f9b34fb  <br>**Reconnection Address**  <br>00002a03-0000-1000-8000-00805f9b34fb |
| **Generic Attribute**  <br>00001801-0000-1000-8000-00805f9b34fb | **Service Changed** <br>00002a05-0000-1000-8000-00805f9b34fb |
| ==**Weight Scale**==  <br>0000181d-0000-1000-8000-00805f9b34fb | **Current Time**  <br>00002a2b-0000-1000-8000-00805f9b34fb  <br>**Weight Scale Feature**  <br>00002a9e-0000-1000-8000-00805f9b34fb  <br>==**Weight Measurement**==  <br>00002a9d-0000-1000-8000-00805f9b34fb  <br>**History Weight Measurement [Custom Characteristics]**  <br>00002a2f-0000-3512-2118-0009af100700 |
| **Custom Service**  <br>00001530-0000-3512-2118-0009af100700 | **Custom Characteristics**  <br>00001531-0000-3512-2118-0009af100700  <br>**Custom Characteristic**  <br>00001532-0000-3512-2118-0009af100700  <br>**Peripheral Preferred Connection Parameters**  <br>00002a04-0000-1000-8000-00805f9b34fb  <br>**Custom Characteristic**  <br>00001542-0000-3512-2118-0009af100700  <br>**Custom Characteristic**  <br>00001543-0000-3512-2118-0009af100700 |

#### 发光二极管和蜂鸣器配置

![](/home/jimmyli/Documents/Markdown/RaspberryPi3.jpg)

LED正极连接GPIO引脚（如图中BCM6)

蜂鸣器正极连接PWM1引脚（图中BCM13)

#### App结构说明

- 蓝牙连接传输数据模块

- websocket传输数据模块

- 外设IO（LED，蜂鸣器）模块

- Camera模块（可包含图片预处理过程）
