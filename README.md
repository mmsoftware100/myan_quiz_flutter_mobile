# Myan Quiz Mobile App
### 2022-10-10 TDL
- [ ] Exchange Rates အစား Bill ဆိုပြီး တစ်ခု တိုးရန်။
### Data Format တစ်ခု အသစ်ထည့်ချင်တဲ့အခါ
- entity ရေးပါ
- ဒီ entity ကို CRUD လုပ်ပေးမယ့် Repository ရေးပါ။ ( abstract class အနေနဲ့ပဲ။ )
- CRUD ပါရင် C / R / U / D ဆိုပြီး use case လေးခုခွဲပြီး class လေးခုရေးပါ။ 
- Use Case တွေကို Provider ထဲမှာ ထည့်သုံးပါ။

- Data Source တွေအတွက် Abstract Class တစ်ခု ရေးပါ။ ဒီ data source တွေကို Entity ရဲ့ အဓိက Repository တွေက ယူသုံးမှာ။
- Entity Repository ကို implement လုပ်ပါ။ ဒီနေရာမှာ လိုတဲ့ data ကို data source abstract class  ကနေ သုံးမယ်။

UI <-> Provider <-> Usecase <-> Repository Abstract <-> Repository Implementation <-> Data Source Abstract <-> Data Source Implementation

ဒါမျိုး အဆင့်ဆင့် ချိတ်ထားမယ်။