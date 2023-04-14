# Myan Quiz Mobile App

## 2023-04-14

Myan QUIZ PLAYSTORE မှာ ဘာအဆင်မေပြတာ ရှိလဲ?


- [ ] Sign Up Form မှာ Name, Email နဲ့ Password ပဲ Required လုပ်ရန်။
- [ ] Password Field က ေအာက်ို ကျ နေတယ်။
- [ ] Password Field ကို နှစ်ခု ထားပြီး Text ကို hide ထားရန်။
- [ ] Register Page မှာ Login စာေကြာင်းက ေအာက်ကို ကပ်ေနတယ်>  padding ထည့်ရန်။
- [ ] Avatar Photo က ဘဲဉ ပုံဖြစ်ေနတယ်
- [ ] More Page မှာ User Data အမှန် ပြရန်။
- [ ] Auto Login ရရန်။
- [ ] Forget Password နှိပ်လျှင် Dialog Box တက်လာပြီး Facebook Page ကတဆင့် ဆက်သွယ်ဖို့ ေပြာရန်။
- [ ] Login ခလုပ်ကို နှိပ်လျှင် Form validation လုပ်ရန်။ (blank input, email input)

### Backend API

- [ ] User Statistics ေတွက အေသဖြစ်ေနတယ်။
- [ ] Check Answer API ရဲ့ Response မှာ User Data က အ သေဖြစ်ေနတယ်။
- [ ] Register API ဘက်က ထည့်ေပးလိုက်တဲ့ Gender , Age, City စတာေတွ insert မဖြစ်။

##  Migration to original version

- [ ] update package name
- [ ] google signin auth integration with keystore
- [ ] playstore keystore



Unhandled Exception: PlatformException(sign_in_failed, com.google.android.gms.common.api.ApiException: 10:

Gradle Report မှာ Keystore 

gradlew signingReport
or
./gradlew signingReport


## 2023-03-21 Tue Bug List

- [ ] Audio Message send api 
- 
## 2023-03-20 Mon To Do List

- [ ] Check up and running in Mobile
- [ ] UI Improvement List

### Test Case

- [ ] Register using email and password
- [ ] Login with email and password
- [ ] Login with Google
- [ ] Account Info Screen should show update info
- [ ] Random Category
- [ ] Question and answer
- [ ] Answer feedback with green and red
- [ ] Submit data and update user statistics


 
## 2023-03-18 Sat To Do List

- [x] Login with email and password
- [x] User with static data
- [x] Register with email and other basic data
- [x] Get random categories
- [x] Get question by id
- [x] Submit Answer

all api integration need to be perfect.
no more serialization error 
no more data
or we'll add error handling
status update likes getting, error or data 


ဒါပြီးရင် Chat up and running စမ်းကြည့်မယ်။
ပြီးရင် Admin Panel မှာ user - reward ထုတ်ပေးတဲ့ စနစ်ကို ပြင်မယ်။

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

flutter pub run build_runner build --delete-conflicting-outputs

