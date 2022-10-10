# Myan Quiz Mobile App
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