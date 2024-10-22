import 'package:boilerplate/features/product/bloc/product_bloc.dart';
import 'package:boilerplate/features/temp/appBar.dart';
import 'package:boilerplate/features/temp/bottom_cart.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  late ProductBloc _productBloc;

  @override
  void initState() {
    super.initState();
    _productBloc = Injector.instance<ProductBloc>()
      ..add(const ProductEvent.loadList());
  }

  @override
  void dispose() {
    _productBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductBloc>.value(
      value: _productBloc,
      child: Scaffold(
        drawer: AppBarDrawer(),
        appBar: const _appBar(),
        body: const _Body(),
        bottomNavigationBar: CartBottom(),
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
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Container(
                child: const Text(
                  'abc1/register1',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
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

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state.loading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state.isSuccess) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  onChanged: (value) {
                    context
                        .read<ProductBloc>()
                        .add(ProductEvent.searchProduct(value));
                  },
                  decoration: InputDecoration(
                    labelText: 'Search Products',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    final product = state.products[index];
                    return GestureDetector(
                      onTap: () {
                        context
                            .read<ProductBloc>()
                            .add(ProductEvent.selectProduct(product));
                        context.push(AppRouter.productDetailPath);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (product.imageUrl != null &&
                                product.imageUrl.isNotEmpty)
                              Image.network(
                                product.imageUrl,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              )
                            else
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.grey[300],
                                child: const Center(
                                  child: Text('No Image'),
                                ),
                              ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                product.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 14),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }

        if (state.errorMessage != null) {
          return Center(child: Text(state.errorMessage!));
        }

        return Center(child: Text('No products found.'));
      },
    );
  }
}
