part of 'login_form_bloc.dart';

@freezed
abstract class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Password password,
    @required PhoneNumber phoneNumber,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
        username: Username(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        phoneNumber: PhoneNumber(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}