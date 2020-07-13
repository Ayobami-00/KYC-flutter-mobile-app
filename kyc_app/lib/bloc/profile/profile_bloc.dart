import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kyc_app/domain/core/user_services_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:kyc_app/domain/user_profile.dart';

part 'profile_event.dart';
part 'profile_state.dart';


@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserServicesInterface _userServicesInterface;

  ProfileBloc(this._userServicesInterface) : super(null);

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if(event is LoadProfile){
      // yield ProfileInitial();
      var failureOrSuccess = await _userServicesInterface.getUserInformation();
       yield ProfileLoaded(failureOrSuccess);
    }
  }
}
