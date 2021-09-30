import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:try_chopper/Redux/Utils/error_notifire.dart';
import 'package:try_chopper/Redux/src/Actions/login_actions.dart';
import 'package:try_chopper/Redux/src/Models/LoginModel/built_login.dart';
import 'package:try_chopper/Redux/src/Store/app_store.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userName = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: ErrorNotifier(
        child: StoreConnector<AppState, LoginViewModel>(
          builder: (BuildContext context, LoginViewModel loginViewModel) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlutterLogo(
                      size: 100,
                    ),
                  ),
                  
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        userName = val;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'UserName',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (val) {
                      setState(() {
                        password = val;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  () {
                    if (loginViewModel.isLoading ?? false) {
                      return CupertinoActivityIndicator();
                    } else {
                      return TextButton(
                          onPressed: () {
                            loginViewModel.login!(userName, password);
                          },
                          child: Text('Login'));
                    }
                  }(),
                ],
              ),
            );
          },
          converter: (Store<AppState?> store) => LoginViewModel.fromStore(store),
        ),
      ),
    );
  }
}

class LoginViewModel {
  //states
  final bool? isLoading;
  final bool? hasError;
  final dynamic errorDetails;
  final BuiltLogin? loginData;

  //Action
  final Function? login;
  // final Function? getUserName;
  // final Function? getPassword;

  LoginViewModel({
    this.isLoading,
    this.hasError,
    this.errorDetails,
    this.loginData,
    this.login,
    // this.getUserName,
    // this.getPassword,
  });

  static LoginViewModel fromStore(Store<AppState?> store) {
    return LoginViewModel(
      isLoading: store.state?.loginState.isLoading,
      hasError: store.state?.loginState.hasError,
      errorDetails: store.state?.loginState.error,
      loginData: store.state?.loginState.loginData,
      // getUserName: (String name) {},
      // getPassword: (String password) {},
      login: (String userName, String password) {
        print("input data =-=-=> $userName $password");
        store
            .dispatch(loginThunkAction(password: password, userName: userName));
      },
    );
  }
}
