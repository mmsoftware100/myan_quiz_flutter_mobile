
import 'package:get_it/get_it.dart';
import 'package:myan_quiz/providers/game_play_provider.dart';
import 'package:myan_quiz/providers/reward_provider.dart';
import 'package:myan_quiz/providers/user_provider.dart';

final sl = GetIt.instance;


Future<void> init() async {
  sl.registerFactory(
          () => UserProvider(userLogin: sl())
  );
  sl.registerFactory(
          () => GamePlayProvider()
  );
  sl.registerFactory(
          () => RewardProvider()
  );

  /* Factory ဆိုတာက App တစ်ခုလုံးမှာမှ တစ်ခုပဲ ရှိမယ့် ဟာမျိုးကို ဆိုလိုတာလား မသိ */
  /// Providers
  ///
  /*
  sl.registerFactory(
          () => PromotionProvider(getPromotionListUsecase: sl())
  );

  sl.registerFactory(
          () => GoodsProvider(
          getCategoryListUseCase: sl(),
          getGoodsListByCategory: sl(),
          getGoodsListByMultipleFilter: sl(),
          addToFavoriteUseCase: sl(),
          getFavoriteListUseCase: sl(),
          removeFromFavoriteUseCase: sl(),
          addToCartUseCase: sl(),
          getCartItemListUseCase: sl(),
          getGoodsListBySearch: sl(),
          getGoodsListBySubCategoryWithSorting: sl(),
          getSubCategoryList: sl(),
          removeFromCart: sl(),
          updateCartQuantity: sl()
      )
  );

  sl.registerFactory(
          () => UserProvider(
          userLogin: sl(),
          insertUser: sl(),
          verifyOtp: sl(),
          updateUser: sl(),
          requestPasswordResetOtp: sl(),
          passwordReset: sl(),
          localStorage: sl()
      )
  );


  sl.registerFactory(
          () => OrderDataProvider(
          getOrderDataListUseCase: sl(),
          insertOrderDataUseCase: sl(),
          updateOrderData: sl()
      )
  );


  sl.registerFactory(
          () => PromoCodeProvider(
          getPromoCodeDetailUseCase: sl()
      )
  );


  sl.registerFactory(
          () => JpStateProvider(
          getStateList: sl()
      )
  );


  sl.registerFactory(
          () => PaymentMethodProvider(
          getPaymentMethodListUseCase: sl()
      )
  );


  sl.registerFactory(
          () => BankInfoProvider(
          getBankInfoList: sl()
      )
  );


  sl.registerFactory(
          () => CvFormProvider(
          createCvForm: sl(),
          queryCvForm: sl(),
          getDriverLicensedStatusList: sl(),
          getJapanLevelList: sl(),
          getMartialStatusList: sl(),
          getNationalitiesList:  sl(),
          getSchoolStatusList:  sl(),
          getVisaStatusList:  sl(),
          getResidentialStatuses: sl(),
          getResidentialCards: sl(),
          createResidentialCard: sl()
      )
  );


  sl.registerFactory(
          () => JobProvider(
          getJobListByCategoryId: sl(),
          applyJob: sl(),
          getJobCategoryList: sl(),
          getJobSubCategoryList: sl(),
          searchJob: sl(),
          getAppliedJobList: sl(),
          toggleFabJob: sl(),
          getFavJobList: sl()
      )
  );
  sl.registerFactory(
          () => SimProvider()
  );

  // ဒီကောင်က implement လုပ်ထားတဲ့ class
  /// Use Cases
  sl.registerLazySingleton<GetPromotionList>(() =>  GetPromotionList(promotionRepository: sl()));
  sl.registerLazySingleton<GetCategoryList>(() => GetCategoryList(categoryRepository: sl()));
  sl.registerLazySingleton<GetGoodsListByCategory>(() => GetGoodsListByCategory(goodsRepository: sl()));
  sl.registerLazySingleton<GetGoodsListByMultipleFilter>(() => GetGoodsListByMultipleFilter(goodsRepository: sl()));
  sl.registerLazySingleton<UserLogin>(() => UserLogin(userRepository: sl()));
  sl.registerLazySingleton<AddToFavorite>(() => AddToFavorite(goodsRepository: sl()));
  sl.registerLazySingleton<RemoveFromFavorite>(() => RemoveFromFavorite(goodsRepository: sl()));
  sl.registerLazySingleton<AddToCart>(() => AddToCart(goodsRepository: sl()));
  sl.registerLazySingleton<GetCartItemList>(() => GetCartItemList(goodsRepository: sl()));
  sl.registerLazySingleton<InsertOrderData>(() => InsertOrderData(orderDataRepository: sl()));
  sl.registerLazySingleton<GetOrderDataList>(() => GetOrderDataList(orderDataRepository: sl()));
  sl.registerLazySingleton<InsertUser>(() => InsertUser(userRepository: sl()));
  sl.registerLazySingleton<VerifyOtp>(() => VerifyOtp(userRepository: sl()));
  sl.registerLazySingleton<GetPromoCodeDetail>(() => GetPromoCodeDetail(promoCodeRepository: sl()));
  sl.registerLazySingleton<GetFavoriteList>(() => GetFavoriteList(goodsRepository: sl()));
  sl.registerLazySingleton<UpdateUser>(() => UpdateUser(userRepository: sl()));
  sl.registerLazySingleton<GetGoodsListBySearch>(() => GetGoodsListBySearch( goodsRepository: sl()));
  sl.registerLazySingleton<GetGoodsListBySubCategoryWithSorting>(() => GetGoodsListBySubCategoryWithSorting( goodsRepository: sl()));
  sl.registerLazySingleton<GetSubCategoryList>(() => GetSubCategoryList( categoryRepository: sl()));
  sl.registerLazySingleton<RemoveFromCart>(() => RemoveFromCart(goodsRepository: sl()));
  sl.registerLazySingleton<UpdateCartQuantity>(() => UpdateCartQuantity(goodsRepository: sl()));
  sl.registerLazySingleton<GetStateList>(() => GetStateList(stateRepository: sl()));
  sl.registerLazySingleton<GetPaymentMethodList>(() => GetPaymentMethodList(paymentMethodRepository: sl()));
  sl.registerLazySingleton<UpdateOrderData>(() => UpdateOrderData( orderDataRepository: sl()));
  sl.registerLazySingleton<InsertPhoto>(() => InsertPhoto(  photoRepository: sl()));
  sl.registerLazySingleton<GetBankInfoList>(() => GetBankInfoList(  bankInfoRepository: sl()));
  sl.registerLazySingleton<CreateCvForm>(() => CreateCvForm(  cvFormRepository: sl()));
  sl.registerLazySingleton<GetJobListByCategoryId>(() => GetJobListByCategoryId(  jobRepository: sl()));
  sl.registerLazySingleton<QueryCvForm>(() => QueryCvForm(  cvFormRepository: sl()));
  sl.registerLazySingleton<ApplyJob>(() => ApplyJob(  jobRepository: sl()));
  sl.registerLazySingleton<GetJobCategoryList>(() => GetJobCategoryList(  categoryRepository: sl()));
  sl.registerLazySingleton<GetJobSubCategoryList>(() => GetJobSubCategoryList(  categoryRepository: sl()));
  sl.registerLazySingleton<GetDriverLicensedStatusList>(() => GetDriverLicensedStatusList(  cvFormRepository: sl()));
  sl.registerLazySingleton<GetJapanLevelList>(() => GetJapanLevelList(  cvFormRepository: sl()));
  sl.registerLazySingleton<GetMartialStatusList>(() => GetMartialStatusList(  cvFormRepository: sl()));
  sl.registerLazySingleton<GetNationalitiesList>(() => GetNationalitiesList(  cvFormRepository: sl()));
  sl.registerLazySingleton<GetSchoolStatusList>(() => GetSchoolStatusList(  cvFormRepository: sl()));
  sl.registerLazySingleton<GetVisaStatusList>(() => GetVisaStatusList(  cvFormRepository: sl()));
  sl.registerLazySingleton<SearchJob>(() => SearchJob(  jobRepository: sl()));
  sl.registerLazySingleton<GetAppliedJobList>(() => GetAppliedJobList(  jobRepository: sl()));
  sl.registerLazySingleton<ToggleFabJob>(() => ToggleFabJob(  jobRepository: sl()));
  sl.registerLazySingleton<GetFavJobList>(() => GetFavJobList(  jobRepository: sl()));
  sl.registerLazySingleton<GetResidentialStatuses>(() => GetResidentialStatuses(  cvFormRepository: sl()));
  sl.registerLazySingleton<GetResidentialCards>(() => GetResidentialCards(  cvFormRepository: sl()));
  sl.registerLazySingleton<CreateResidentialCard>(() => CreateResidentialCard(  cvFormRepository: sl()));
  sl.registerLazySingleton<RequestPasswordResetOtp>(() => RequestPasswordResetOtp( userRepository: sl()));
  sl.registerLazySingleton<PasswordReset>(() => PasswordReset( userRepository: sl()));

  // ဒါလည်း အတူတူပဲ
  /// Repositories
  sl.registerLazySingleton<PromotionRepository>(() => PromotionRepositoryImpl(promotionRemoteDataSource: sl()));
  sl.registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(categoryRemoteDataSource: sl()));
  sl.registerLazySingleton<GoodsRepository>(() => GoodsRepositoryImpl(goodsRemoteDataSource: sl()));
  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(userRemoteDataSource: sl()));
  sl.registerLazySingleton<OrderDataRepository>(() => OrderDataRepositoryImpl(orderDataRemoteDataSource: sl()));
  sl.registerLazySingleton<PromoCodeRepository>(() => PromoCodeRepositoryImpl(promoCodeRemoteDataSource: sl()));
  sl.registerLazySingleton<PaymentMethodRepository>(() => PaymentMethodRepositoryImpl(paymentMethodRemoteDataSource: sl()));
  sl.registerLazySingleton<StateRepository>(() => StateRepositoryImpl(stateRemoteDataSource: sl()));
  sl.registerLazySingleton<PhotoRepository>(() => PhotoRepositoryImpl(photoRemoteDataSource: sl()));
  sl.registerLazySingleton<BankInfoRepository>(() => BankInfoRepositoryImpl(bankInfoRemoteDataSource: sl()));
  sl.registerLazySingleton<CvFormRepository>(() => CvFormRepositoryImpl(cvFormRemoteDataSource: sl()));
  sl.registerLazySingleton<JobRepository>(() => JobRepositoryImpl(jobRemoteDataSource: sl()));

  // ဆိုလိုတာက ဒီ interface နဲ့ လိုနေရင် ဒီ impl class ကို ယူသုံးပါ ဆိုတာမျိုး။
  // Data Sources
  sl.registerLazySingleton<PromotionRemoteDataSource>(() => PromotionRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<CategoryRemoteDataSource>(() => CategoryRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<GoodsRemoteDataSource>(() => GoodsRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<UserRemoteDataSource>(() => UserRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<OrderDataRemoteDataSource>(() => OrderDataRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<PromoCodeRemoteDataSource>(() => PromoCodeRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<PaymentMethodRemoteDataSource>(() => PaymentMethodRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<StateRemoteDataSource>(() => StateRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<PhotoRemoteDataSource>(() => PhotoRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<BankInfoRemoteDataSource>(() => BankInfoRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<CvFormRemoteDataSource>(() => CvFormRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<JobRemoteDataSource>(() => JobRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<LocalStorage>(() => LocalStorageImpl(sharedPreferences: sl()));

  // external
  // DIO က လည်း အမှန်တော့ Abstract တစ်ခု ခံပြီးသုံးသင့်တာ။
  // အခုတော့ ဒီအတိုင်း သုံးထားတယ်၊ နောက်တော့ ပြောင်းရမယ်
  sl.registerLazySingleton(() => Dio());
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

   */
}
