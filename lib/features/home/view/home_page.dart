import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/product/bloc/product_bloc.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              Injector.instance<HomeBloc>()..add(const HomeEvent.loadList()),
        ),
        BlocProvider(
          create: (context) => Injector.instance<ProductBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF26A69A),
          title: const Text('Select Register'),
          shadowColor: Colors.grey,
          elevation: 5,
        ),
        body: const _Body(),
        bottomNavigationBar: const _Bottom(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: DropdownButtonFormField<String>(
            value: "https://www.kitkat.com.au",
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.2), width: 1.0)),
            ),
            items: const [
              DropdownMenuItem(
                value: "https://www.kitkat.com.au",
                child: Text("https://www.kitkat.com.au"),
              ),
            ],
            onChanged: (value) {},
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state.items.isNotEmpty) {
                  return ListView.builder(
                    itemCount: state.items.length,
                    itemBuilder: (context, index) {
                      final item = state.items[index];
                      return Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: Colors.white, // Màu nền giống trong hình
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${item.name}',
                                style: const TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${item.street}, ${item.city}, ${item.region}, ${item.country}',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              ...item.registers.map((register) {
                                return Column(
                                  children: [
                                    const SizedBox(height: 16),
                                    ElevatedButton(
                                      onPressed: () {
                                        context.read<ProductBloc>().add(
                                            ProductEvent.selectRegister(
                                                register));
                                        context.push(AppRouter.productPath);
                                      },
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/images/cash.png',
                                          width: 100,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '${register.name}',
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                );
                              }).toList(),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: Text('No items available'),
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton.icon(
                  onPressed: () {
                    context.push(AppRouter.outletRegisterPath);
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Manage',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF26A69A),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      minimumSize: Size(100, 50)),
                ),
              )),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton.icon(
                onPressed: () {
                  context.push(AppRouter.loginPath);
                },
                icon: const Icon(Icons.logout),
                label: const Text('Logout'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    minimumSize: Size(100, 50)),
              ),
            ),
          )
        ],
      ),
      // ),
    );
  }
}
