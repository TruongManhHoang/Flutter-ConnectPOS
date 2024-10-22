import 'package:boilerplate/features/cart/bloc/cart_bloc.dart';
import 'package:boilerplate/features/home/bloc/home_bloc.dart';
import 'package:boilerplate/features/product/bloc/product_bloc.dart';
import 'package:boilerplate/features/temp/appBarUser.dart';
import 'package:boilerplate/features/temp/bottom_cart.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late ProductBloc _cartBloc;

  @override
  void initState() {
    super.initState();
    _cartBloc = Injector.instance<ProductBloc>();
    // _cartBloc = Injector.instance<CartBloc>()..add(const CartEvent.loadList());
  }

  @override
  void dispose() {
    _cartBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductBloc>.value(
      value: _cartBloc,
      child: Scaffold(
        drawer: AppBarUser(),
        appBar: const _appBar(),
        body: const _Body(),
        bottomNavigationBar: const CartBottom(),
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
          color: Colors.white,
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

class _Body extends StatefulWidget {
  const _Body({super.key});

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  List<TextEditingController> discountControllers = [];
  List<double> discountedPrices = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
            if (state.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.addCart.isNotEmpty) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.addCart.length,
                itemBuilder: (context, index) {
                  final item = state.addCart[index];
                  final discountController = TextEditingController();
                  double itemPrice = double.tryParse(item.price) ?? 0.0;
                  double discountValue = 0.0;

                  // Ensure discountedPrices list is big enough
                  if (discountedPrices.length <= index) {
                    discountedPrices
                        .add(itemPrice); // Initial price without discount
                  }

                  return Card(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ExpansionTile(
                          title: Row(
                            children: [
                              Text(
                                item.name,
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                '\$${discountedPrices[index].toStringAsFixed(2)}',
                                style: const TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Quantity',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 10),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(1),
                                            ),
                                          ),
                                          initialValue: '1',
                                          textAlign: TextAlign.right,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Discount',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: TextFormField(
                                                controller: discountController,
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          vertical: 10),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1),
                                                  ),
                                                ),
                                                keyboardType: TextInputType
                                                    .numberWithOptions(
                                                        decimal: true),
                                                textAlign: TextAlign.right,
                                                onChanged: (value) {
                                                  setState(() {
                                                    double discountValue =
                                                        double.tryParse(
                                                                value) ??
                                                            0.0;
                                                    if (discountValue > 100) {
                                                      discountValue = 100;
                                                      discountController.text =
                                                          '100.00';
                                                      discountController
                                                              .selection =
                                                          TextSelection
                                                              .fromPosition(
                                                        TextPosition(
                                                            offset:
                                                                discountController
                                                                    .text
                                                                    .length),
                                                      );
                                                    }
                                                    discountedPrices[index] =
                                                        itemPrice *
                                                            (1 -
                                                                discountValue /
                                                                    100);
                                                  });
                                                },
                                              ),
                                            ),
                                            Container(
                                              width: 40,
                                              height: 49,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors
                                                    .blue, // Màu nền cho phần "%"
                                                borderRadius:
                                                    BorderRadius.circular(1),
                                              ),
                                              child: const Text(
                                                '%',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                      width: 10), // Khoảng cách giữa các ô
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Price',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 10),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(1),
                                            ),
                                          ),
                                          initialValue:
                                              '\$${itemPrice.toStringAsFixed(2)}',
                                          textAlign: TextAlign
                                              .right, // Căn phải cho giá tiền
                                          readOnly: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        ExpansionTile(
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                'Shipping    Note',
                                style: TextStyle(color: Colors.blue),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz),
                              ),
                            ],
                          ),
                          children: [
                            _buildRowWithDivider('Group', 'Default'),
                            _buildRowWithDivider('Subtotal',
                                '\$${discountedPrices[index].toStringAsFixed(2)}'),
                            _buildRowWithDivider('Discount',
                                '\$${(itemPrice - discountedPrices[index]).toStringAsFixed(2)}'),
                            _buildRowWithDivider('Shipping', '\$0.00'),
                            _buildRowWithDivider('Tax', '\$0.00'),
                          ],
                        ),
                      ],
                    ),
                  ));
                },
              );
            } else {
              return const Center(
                child: Text('No items available'),
              );
            }
          }),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                // Hành động của nút tại đây
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button pressed!')),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
                backgroundColor: const Color(0xFF26A69A),
                foregroundColor: Colors.white,
              ),
              child: const Text('Confirm Order'), // Văn bản nút
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildRowWithDivider(String title, String value) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.blue),
            ),
            Text(
              value,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
      const Divider(
        thickness: 0.5,
        height: 0,
        color: Colors.grey,
      ),
    ],
  );
}

Widget _buildTextFormField(
    {required String initialValue, required ValueChanged<String> onChanged}) {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    initialValue: initialValue,
    onChanged: onChanged,
  );
}
