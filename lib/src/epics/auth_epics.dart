import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

import '../actions/index.dart';
import '../data/auth_api.dart';
import '../models/index.dart';

class AuthEpics implements EpicClass<AppState> {
  AuthEpics(this._api);

  final AuthApi _api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, InitializeAppStart>(_initializeAppStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
      TypedEpic<AppState, LoginUserStart>(_loginUserStart).call,
      TypedEpic<AppState, LogOutUserStart>(_logOutUserStart).call,
    ])(actions, store);
  }

  Stream<dynamic> _initializeAppStart(Stream<InitializeAppStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((InitializeAppStart action) {
      return Stream<void>.value(null)
          .flatMap((_) => _api.currentUser())
          .startWith(null)
          .pairwise()
          .expand((List<AppUser?> users) {
        final bool hasLoggedIn = users.first == null && users.last != null;
        //final bool wasUpdated = users.first != null && users.last != null;
        //final bool hasLoggedOut = users.first != null && users.last == null;

        return <dynamic>[
          InitializeApp.successful(users.last),
          if (hasLoggedIn) ...<dynamic>[
            const ListCategory.start(),
            const ListVendors.start(),
          ]
        ];
      }).onErrorReturnWith((Object error, StackTrace stackTrace) => InitializeApp.error(error, stackTrace));
    });
  }

  Stream<dynamic> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null).asyncMap((_) => _api.createUser(email: action.email, password: action.password))
        ..mapTo(const CreateUser.successful())
            .onErrorReturnWith((Object error, StackTrace stackTrace) => CreateUser.error(error, stackTrace))
            .doOnData(action.result);
    });
  }

  Stream<dynamic> _loginUserStart(Stream<LoginUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginUserStart action) {
      return Stream<void>.value(null).asyncMap((_) => _api.loginUser(email: action.email, password: action.password))
        ..mapTo(const LoginUser.successful())
            .onErrorReturnWith((Object error, StackTrace stackTrace) => LoginUser.error(error, stackTrace))
            .doOnData(action.result);
    });
  }

  Stream<dynamic> _logOutUserStart(Stream<LogOutUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogOutUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _api.logOut())
          .mapTo(const LogOutUser.successful())
          .onErrorReturnWith((Object error, StackTrace stackTrace) => LogOutUser.error(error, stackTrace));
    });
  }
}
