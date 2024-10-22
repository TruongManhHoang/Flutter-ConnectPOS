import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/outlet&Register/bloc/outlet_bloc.dart';
import 'package:boilerplate/generated/l10n.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateOutletPage extends StatelessWidget {
  const UpdateOutletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OutletBloc>(
      create: (context) => Injector.instance<OutletBloc>(),
      child: Scaffold(
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
    return BlocConsumer<OutletBloc, OutletState>(
      listener: (context, state) {},
      buildWhen: (prev, next) {
        return prev.outlet != next.outlet;
      },
      builder: (context, state) {
        if (state.outlet == null) {
          return Center(child: Text('Outlet not found'));
        }
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
            // SizedBox(
            //   height: ,
            // ),
            Container(
              padding: EdgeInsets.all(20),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTextFormField(
                        labelText: 'Outlet name',
                        initialValue: state.outlet?.name ?? '',
                        onChanged: (value) {
                          state.outlet?.name = value;
                        },
                      ),
                      SizedBox(height: 30),
                      _buildTextFormField(
                        labelText: 'Street',
                        initialValue: state.outlet?.street ?? '',
                        onChanged: (value) {
                          state.outlet?.street = value;
                        },
                      ),
                      SizedBox(height: 30),
                      _buildTextFormField(
                        labelText: 'City',
                        initialValue: state.outlet?.city ?? '',
                        onChanged: (value) {
                          state.outlet?.city = value;
                        },
                      ),
                      SizedBox(height: 30),
                      _buildTextFormField(
                        labelText: 'Zip/Postal Code',
                        initialValue: state.outlet?.zip ?? '',
                        onChanged: (value) {
                          state.outlet?.zip = value;
                        },
                      ),
                      SizedBox(height: 30),
                      _buildTextFormField(
                        labelText: 'Telephone',
                        initialValue: state.outlet?.telephone ?? '',
                        onChanged: (value) {
                          state.outlet?.telephone = value;
                        },
                      ),
                      SizedBox(height: 30),
                      _buildTextFormField(
                        labelText: 'Country',
                        initialValue: state.outlet?.country ?? '',
                        onChanged: (value) {
                          state.outlet?.country = value;
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
                          context
                              .read<OutletBloc>()
                              .add(const OutletEvent.updateOutlet());
                        },
                        child: Text('Save', style: TextStyle(fontSize: 16)),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}

Widget _buildTextFormField(
    {required String labelText,
    required String initialValue,
    required ValueChanged<String> onChanged}) {
  return TextFormField(
    decoration: InputDecoration(
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    initialValue: initialValue,
    onChanged: onChanged,
  );
}
