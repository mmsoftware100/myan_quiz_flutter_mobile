# Myan Quiz Mobile App

## 2023-03-14 TO Do List

အမြဲလိုလို သုံးဖြစ်တဲ့ 
FCM
Firebase Auth
စတာတွေကို 
Page တစ်ခုစီ သပ်သပ်ခွဲခွဲရေးထားရမယ်။
နောက်ပိုင်း လိုရင် အဲ့မှာ ကြည့်မယ် ကူးမယ်ပေါ့။


Guys
I deployed Myan Quiz at https://mmsoftware100.com/mq/public/admin
and mobile app also up and running with following api's 

- [x] Random Category Select
- [x] Question select by category id
- [x] Submit Answer
- [x] Select Telephone Operator
- [x] Select Exchange Rates
- [x] Select Bill
- [x] Select Exchanges
- [x] Request Exchange

### 2022-10-10 TDL
- [ ] Exchange Rates အစား Bill ဆိုပြီး တစ်ခု တိုးရန်။

### Error Log
Reassembling main.dart$main-3980936371342155 failed: ext.flutter.reassemble: (-32000) Server error
{"exception":"Bad state: Tried to read a provider that threw during the creation of its value.\nThe exception occurred during the creation of type RewardProvider.\n\n══╡ EXCEPTION CAUGHT
BY PROVIDER ╞═══════════════════════════════\nThe following StackOverflowError was thrown:\nStack Overflow\n\nWhen the exception was thrown, this was the stack:\n#0
BillExchange.sample (package:myan_quiz/domain/entities/bill_exchange.dart:37:3)\n#1      BillExchange.sample (package:myan_quiz/domain/entities/bill_exchange.dart:43:44)\n#2


Stack Overflow Error တဲ့ စပြီ။
နာမည်ကျော် Error။
ဘာမှန်းမသိပေမယ့် နာမည်ကြီးတာတော့ သိတယ် :P


### Data Format တစ်ခု အသစ်ထည့်ချင်တဲ့အခါ
- entity ရေးပါ
- ဒီ entity ကို CRUD လုပ်ပေးမယ့် Repository ရေးပါ။ ( abstract class အနေနဲ့ပဲ။ )
- CRUD ပါရင် C / R / U / D ဆိုပြီး use case လေးခုခွဲပြီး class လေးခုရေးပါ။ 
- Use Case တွေကို Provider ထဲမှာ ထည့်သုံးပါ။

- Data Source တွေအတွက် Abstract Class တစ်ခု ရေးပါ။ ဒီ data source တွေကို Entity ရဲ့ အဓိက Repository တွေက ယူသုံးမှာ။
- Entity Repository ကို implement လုပ်ပါ။ ဒီနေရာမှာ လိုတဲ့ data ကို data source abstract class  ကနေ သုံးမယ်။

UI <-> Provider <-> Usecase <-> Repository Abstract <-> Repository Implementation <-> Data Source Abstract <-> Data Source Implementation

ဒါမျိုး အဆင့်ဆင့် ချိတ်ထားမယ်။

Server ကို ပို့ပေးရမယ့် id token

https://flutteragency.com/get-id-token-firebaseauth-flutter/

