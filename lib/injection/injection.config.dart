// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:ecommerce_app/services/app_module.dart' as _i6;
import 'package:ecommerce_app/services/firebase_service.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.FirebaseAuth>(() => appModule.auth);
    gh.factory<_i4.FirebaseFirestore>(() => appModule.store);
    await gh.factoryAsync<_i5.FirebaseService>(
      () => appModule.fireService,
      preResolve: true,
    );
    return this;
  }
}

class _$AppModule extends _i6.AppModule {}
