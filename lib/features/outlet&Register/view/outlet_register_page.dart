import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/home/model/home.dart';
import 'package:boilerplate/features/outlet&Register/bloc/outlet_bloc.dart';
import 'package:boilerplate/features/temp/appBar.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class OutletPage extends StatelessWidget {
  const OutletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OutletBloc>(
      create: (context) =>
          Injector.instance<OutletBloc>()..add(const OutletEvent.loadList()),
      child: const Scaffold(
        drawer: AppBarDrawer(),
        appBar: _appBar(),
        body: Body(),
        bottomNavigationBar: _bottom(),
      ),
    );
  }
}

class _appBar extends StatelessWidget implements PreferredSizeWidget {
  const _appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Sử dụng `flexibleSpace` để thêm tùy chỉnh bên trong AppBar
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
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Outlet & Register',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
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

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header phần 'Outlet Management'
        const Padding(
          padding: EdgeInsets.only(left: 10, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Outlet Management',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Click to edit outlet settings',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1),
          ),
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  child: Center(
                    child: Text('OUTLET NAME'),
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text('STATUS'),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: BlocBuilder<OutletBloc, OutletState>(
            builder: (context, state) {
              if (state.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.isSuccess) {
                return ListView.builder(
                  itemCount: state.outlets.length,
                  itemBuilder: (context, index) {
                    final outlet = state.outlets[index];
                    // print(outlet.toString());
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                      color: Colors.white,
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: () {
                              context
                                  .read<OutletBloc>()
                                  .add(OutletEvent.selectOutlet(outlet));
                              context.push(AppRouter.updatePath);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text(outlet.name),
                                  ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      outlet.status ? 'active' : 'inactive',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                );
              } else {
                return Center(
                  child: Text(
                    state.errorMessage ?? 'Failed to load data.',
                    style: const TextStyle(color: Colors.red),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

class _bottom extends StatelessWidget {
  const _bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
      color: Colors.white,
      height: 100,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 150,
          child: ElevatedButton(
            onPressed: () {
              context.push(AppRouter.newStorePath);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF26A69A),
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            child: const Text('NEW OUTLET'),
          ),
        ),
      ),
    );
  }
}
