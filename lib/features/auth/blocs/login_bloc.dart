import 'package:bloc/bloc.dart';
import 'package:kaskus/data/dataresource/auth_remote_datasource.dart';
import 'package:kaskus/data/model/response/auth_response_datasource.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource authRemoteDatasource;

  LoginBloc(this.authRemoteDatasource) : super(LoginInitial())  {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());

      final response = await authRemoteDatasource.login(event.email, event.password);

      response.fold(
              (error) => emit(LoginFailure(message: error)),
              (success) => emit(LoginSuccess(authResponseModel: success))
      );
    });
  }
}