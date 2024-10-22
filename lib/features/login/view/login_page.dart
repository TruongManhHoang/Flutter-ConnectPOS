import 'package:another_flushbar/flushbar.dart';
import 'package:boilerplate/features/login/bloc/login_bloc.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:boilerplate/widgets/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => Injector.instance<LoginBloc>(),
      child: const Scaffold(
        // appBar: _AppBar(),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<LoginBloc, LoginState>(
        listenWhen: (prev, next) => prev.loading != next.loading,
        listener: (context, state) {
          state.notification?.when(
            insertSuccess: (message) {
              Flushbar(
                message: message,
                duration: const Duration(seconds: 3),
                backgroundColor: Colors.green,
              ).show(context);
              context.push(AppRouter.homePath);
            },
            insertFailed: (message) {
              Flushbar(
                message: message,
                duration: const Duration(seconds: 3),
                backgroundColor: Colors.red,
              ).show(context);
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              _buildLoginForm(context, state.username, state.password),
              if (state.loading) const LoadingPage(),
            ],
          );
        },
      ),
    );
  }

  Widget _buildLoginForm(
      BuildContext context, String username, String password) {
    return Center(
      child: Container(
          width: 300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/1.jpg',
                  width: 250,
                  height: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'ConnectPOS',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: S.current.username,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  initialValue: username,
                  onChanged: (value) {
                    context
                        .read<LoginBloc>()
                        .add(LoginEvent.changeUsername(value));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: S.current.password,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  obscureText: true,
                  initialValue: password,
                  onChanged: (value) {
                    context
                        .read<LoginBloc>()
                        .add(LoginEvent.changePassword(value));
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF26A69A),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(307, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9))),
                    onPressed: () {
                      context.read<LoginBloc>().add(const LoginEvent.login());
                    },
                    child: Text(
                      S.current.login,
                      style: TextStyle(fontSize: 16),
                    )),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Forgot Password? Get support',
                  style: TextStyle(color: Color(0xFF26A69A), fontSize: 15),
                )
              ],
            ),
          )),
    );
  }
}
