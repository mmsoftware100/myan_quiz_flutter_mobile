# Myan Quiz Mobile App



## iOS Error

UPLOAD FAILED with 2 errors.
=============
{"tool-version":"6.315.14315","tool-path":"\/Applications\/Xcode-14.3.app\/Contents\/SharedFrameworks\/ContentDeliveryServices.framework\/Versions\/A\/Frameworks\/AppStoreService.framework","os-version":"13.3.1","product-errors":[{"message":"Asset validation failed","userInfo":{"NSUnderlyingError":"Error Domain=IrisAPI Code=-19241 \"Asset validation failed\" UserInfo={status=409, detail=Invalid bundle. Because your app supports Multitasking on iPad, you need to include the Main.storyboard launch storyboard file in your com.mmsoftware100.myanquizv2 bundle. Use UILaunchScreen instead if the app’s MinimumOSVersion is 14 or higher and you prefer to configure the launch screen without storyboards. For details, see: https:\/\/developer.apple.com\/documentation\/bundleresources\/information_property_list\/uilaunchstoryboardname, id=b9e70692-122b-40b2-9792-5c2b9457b495, code=STATE_ERROR.VALIDATION_ERROR.90476, title=Asset validation failed, NSLocalizedFailureReason=Invalid bundle. Because your app supports Multitasking on iPad, you need to include the Main.storyboard launch storyboard file in your com.mmsoftware100.myanquizv2 bundle. Use UILaunchScreen instead if the app’s MinimumOSVersion is 14 or higher and you prefer to configure the launch screen without storyboards. For details, see: https:\/\/developer.apple.com\/documentation\/bundleresources\/information_property_list\/uilaunchstoryboardname, NSLocalizedDescription=Asset validation failed}","NSLocalizedDescription":"Asset validation failed","iris-code":"STATE_ERROR.VALIDATION_ERROR.90476","NSLocalizedFailureReason":"Invalid bundle. Because your app supports Multitasking on iPad, you need to include the Main.storyboard launch storyboard file in your com.mmsoftware100.myanquizv2 bundle. Use UILaunchScreen instead if the app’s MinimumOSVersion is 14 or higher and you prefer to configure the launch screen without storyboards. For details, see: https:\/\/developer.apple.com\/documentation\/bundleresources\/information_property_list\/uilaunchstoryboardname (ID: b9e70692-122b-40b2-9792-5c2b9457b495)"},"code":90476},{"message":"Asset validation failed","userInfo":{"NSUnderlyingError":"Error Domain=IrisAPI Code=-19241 \"Asset validation failed\" UserInfo={status=409, detail=Invalid App Store Icon. The App Store Icon in the asset catalog in 'Runner.app' can't be transparent nor contain an alpha channel., id=8652c084-01a8-4a05-836a-e9bf7d4725c3, code=STATE_ERROR.VALIDATION_ERROR.90717, title=Asset validation failed, NSLocalizedFailureReason=Invalid App Store Icon. The App Store Icon in the asset catalog in 'Runner.app' can't be transparent nor contain an alpha channel., NSLocalizedDescription=Asset validation failed}","NSLocalizedDescription":"Asset validation failed","iris-code":"STATE_ERROR.VALIDATION_ERROR.90717","NSLocalizedFailureReason":"Invalid App Store Icon. The App Store Icon in the asset catalog in 'Runner.app' can't be transparent nor contain an alpha channel. (ID: 8652c084-01a8-4a05-836a-e9bf7d4725c3)"},"code":90717}]}




post_install do |installer|
installer.pods_project.targets.each do |target|
flutter_additional_ios_build_settings(target)
end
end


## Login Page  က နောက်ပြန်ဆုတ်ရင် Blank

## Sign Up Page က နောက်ပြန်ဆုတ်ရင် Blacnk

## Auto Login က Credential မှားတယ်ပဲ ပြောနေ။


အနwww.facebook.com/mmsoftware100ိိ်ိ 

test2@email.com
password
post_install do |installer|
installer.pods_project.targets.each do |target|
flutter_additional_ios_build_settings(target)
target.build_configurations.each do |config| #Added this line
config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
end
end
end


## Errors

Could not build the precompiled application for the device.
Error (Xcode): File not found: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/arc/libarclite_iphoneos.a


Error (Xcode): Linker command failed with exit code 1 (use -v to see invocation)



## TO Do List for iOS Launch

- [x] မေးခွန်း နဲ့ အဖြေ စာမျက်နှာမှာ Question NA/NA အစား Question 1/1 လို့ ပြောင်းပြရန်။
- [x] Next ကို Text Button အစား Elevated Button ဖြင့်ပြရန်။
- [ ] Snack Bar Message များ ဖျောက်ရန်။
- [ ] Sign Up Form မှာ ဖုန်းနံပတ် ဖြုတ်ရန်
- [ ] Sign Up -> Play -> ပွိုင့်စုမလား မမေးသင့်။

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

