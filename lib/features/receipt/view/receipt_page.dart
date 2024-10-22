import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class ReceiptPage extends StatefulWidget {
  const ReceiptPage({super.key});

  @override
  State<ReceiptPage> createState() => _ReceiptPageState();
}

class _ReceiptPageState extends State<ReceiptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
        width: 260,
        child: Drawer(
          child: Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    color: const Color(0xFF26A69A),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 550),
                        child: IconButton(
                          onPressed: () {
                            context.push(AppRouter.homePath);
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                          color: Colors.white,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 23, top: 50),
                          child: Text(
                            'Setting',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            elevation: 0, // Ẩn đổ bóng (nếu có)
                            shadowColor:
                                Colors.transparent, // Xóa bỏ màu đổ bóng
                          ),
                          onPressed: () {
                            context.push(AppRouter.outletRegisterPath);
                          },
                          child: const Text(
                            'Outlet & Register',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            elevation: 0,
                            shadowColor:
                                Colors.transparent, 
                          ),
                          onPressed: () {
                            // context.push(AppRouter.outletRegisterPath);
                          },
                          child: const Text(
                            'Custom Order Status',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            elevation: 0, // Ẩn đổ bóng (nếu có)
                            shadowColor:
                                Colors.transparent, // Xóa bỏ màu đổ bóng
                          ),
                          onPressed: () {
                            context.push(AppRouter.receiptPath);
                          },
                          child: const Text(
                            'Receipt',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            elevation: 0, // Ẩn đổ bóng (nếu có)
                            shadowColor:
                                Colors.transparent, // Xóa bỏ màu đổ bóng
                          ),
                          onPressed: () {
                            context.push(AppRouter.receiptPath);
                          },
                          child: const Text(
                            'Tax',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            elevation: 0, // Ẩn đổ bóng (nếu có)
                            shadowColor:
                                Colors.transparent, // Xóa bỏ màu đổ bóng
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Tax Class',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            elevation: 0, // Ẩn đổ bóng (nếu có)
                            shadowColor:
                                Colors.transparent, // Xóa bỏ màu đổ bóng
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Discount',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            elevation: 0, // Ẩn đổ bóng (nếu có)
                            shadowColor:
                                Colors.transparent, // Xóa bỏ màu đổ bóng
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Hardware',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            elevation: 0, // Ẩn đổ bóng (nếu có)
                            shadowColor:
                                Colors.transparent, // Xóa bỏ màu đổ bóng
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Multi Currency',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            elevation: 0, // Ẩn đổ bóng (nếu có)
                            shadowColor:
                                Colors.transparent, // Xóa bỏ màu đổ bóng
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Language',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(10, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide.none,
                            ),
                            elevation: 0, // Ẩn đổ bóng (nếu có)
                            shadowColor:
                                Colors.transparent, // Xóa bỏ màu đổ bóng
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Flush Cache',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 50,
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
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Order',
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
          ),
        ],
      ),
    );
  }
}
