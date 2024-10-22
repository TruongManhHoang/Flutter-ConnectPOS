import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/product/bloc/product_bloc.dart';
import 'package:boilerplate/features/temp/appBar.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          Injector.instance<ProductBloc>()..add(const ProductEvent.loadList()),
      child: Scaffold(
        // drawer: AppBarDrawer(),
        appBar: _appBar(),
        body: _body(),
        bottomNavigationBar: _Bottom(),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 60),
            const Expanded(
              child: Text(
                'Product Detail',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
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
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state.loading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state.isSuccess) {
          return SingleChildScrollView(
            // Thêm SingleChildScrollView để cuộn
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                  child: state.product?.imageUrl != null &&
                          state.product!.imageUrl.isNotEmpty
                      ? Image.network(
                          state.product!.imageUrl,
                          width: 250,
                          height: 300,
                          alignment: Alignment.center,
                        )
                      : Container(
                          width: 80,
                          height: 80,
                          color: Colors.grey[300],
                          child: const Center(
                            child: Text('No Image'),
                          ),
                        )),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  state.product?.name ?? '',
                  style: const TextStyle(fontSize: 17),
                ),
              ),
              // ...state.product.presentmentPrices.map((presentmentPrice){
              // }).toList()
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  '\$${state.product?.price ?? ''}',
                  style:
                      const TextStyle(color: Color(0xFF26A69A), fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 80,
                        height: 50,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(0),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Details',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 80,
                        height: 50,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Warehouse',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              ExpansionTile(
                tilePadding: EdgeInsets.only(left: 10),
                backgroundColor: Colors.transparent,
                collapsedBackgroundColor: Colors.transparent,
                title: Text(
                  'General',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SKU',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.product?.sku ?? 'N/A',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(height: 5),
                            HtmlWidget(
                              state.product?.description ?? 'N/A',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ]),
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

class _Bottom extends StatelessWidget {
  const _Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: 70,
        color: Colors.white,
        child: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF26A69A),
                  foregroundColor: Colors.white,
                  minimumSize: Size(120, 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2))),
              onPressed: () {
                final product = context.read<ProductBloc>().state.product;
                if (product != null) {
                  context
                      .read<ProductBloc>()
                      .add(ProductEvent.addProductToCart(product));
                }
                // } else {
                //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                //       content: Text('Product is not available!')));
                // }
              },
              child: const Text('Add to cart')),
        ));
  }
}
