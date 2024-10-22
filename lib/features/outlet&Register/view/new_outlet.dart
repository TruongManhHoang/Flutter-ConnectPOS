import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/outlet&Register/bloc/outlet_bloc.dart';
import 'package:boilerplate/features/temp/appBar.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewOutletPage extends StatelessWidget {
  const NewOutletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OutletBloc>(
      create: (context) => Injector.instance<OutletBloc>(),
      child: Scaffold(
        drawer: AppBarDrawer(),
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }
}

class _appBar extends StatelessWidget implements PreferredSizeWidget {
  const _appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        width: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xFF26A69A),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 45,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Edit Outlet',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 40),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _body extends StatelessWidget {
  const _body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OutletBloc, OutletState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Outlet Information',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(204, 183, 189, 183),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextFormField(
                    labelText: 'Outlet name',
                    onChanged: (value) {
                      context
                          .read<OutletBloc>()
                          .add(OutletEvent.changeName(value));
                    },
                  ),
                  SizedBox(height: 30),
                  _buildTextFormField(
                    labelText: 'Street',
                    onChanged: (value) {
                      context
                          .read<OutletBloc>()
                          .add(OutletEvent.changeStreet(value));
                    },
                  ),
                  SizedBox(height: 30),
                  _buildTextFormField(
                    labelText: 'City',
                    onChanged: (value) {
                      context
                          .read<OutletBloc>()
                          .add(OutletEvent.changeCity(value));
                    },
                  ),
                  SizedBox(height: 30),
                  _buildTextFormField(
                    labelText: 'Zip/Postal Code',
                    onChanged: (value) {
                      context
                          .read<OutletBloc>()
                          .add(OutletEvent.changeZip(value));
                    },
                  ),
                  SizedBox(height: 30),
                  _buildTextFormField(
                    labelText: 'Telephone',
                    onChanged: (value) {
                      context
                          .read<OutletBloc>()
                          .add(OutletEvent.changeTelephone(value));
                    },
                  ),
                  SizedBox(height: 30),
                  _buildTextFormField(
                    labelText: 'Country',
                    onChanged: (value) {
                      context
                          .read<OutletBloc>()
                          .add(OutletEvent.changeCountry(value));
                    },
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF26A69A),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(500, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      print(state.city);
                      context
                          .read<OutletBloc>()
                          .add(const OutletEvent.newOutlet());
                    },
                    child: Text('Save', style: TextStyle(fontSize: 16)),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

Widget _buildTextFormField(
    {required String labelText, required ValueChanged<String> onChanged}) {
  return TextFormField(
    decoration: InputDecoration(
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    onChanged: onChanged,
  );
}
