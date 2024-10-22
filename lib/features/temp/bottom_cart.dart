import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartBottom extends StatelessWidget {
  const CartBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 80,
      color: const Color(0xFF26A69A),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Action for 'Product'
                    context.push(AppRouter.productPath);
                  },
                  icon: const Icon(Icons.abc_rounded, color: Colors.white),
                ),
                Flexible(
                  child: Text(
                    'Product',
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                    textAlign: TextAlign.center,
                    overflow:
                        TextOverflow.ellipsis, // Ensure text doesn't overflow
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Action for 'Another'
                    // context.push(AppRouter.anotherPath);
                  },
                  icon: const Icon(Icons.abc_rounded, color: Colors.white),
                ),
                Flexible(
                  child: Text(
                    'Another',
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                    textAlign: TextAlign.center,
                    overflow:
                        TextOverflow.ellipsis, // Ensure text doesn't overflow
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Action for 'Option'
                    // context.push(AppRouter.optionPath);
                  },
                  icon: const Icon(Icons.abc_rounded, color: Colors.white),
                ),
                Flexible(
                  child: Text(
                    'Option',
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                    textAlign: TextAlign.center,
                    overflow:
                        TextOverflow.ellipsis, // Ensure text doesn't overflow
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.push(AppRouter.cartPath);
                  },
                  icon: const Icon(Icons.shop, color: Colors.white),
                ),
                Flexible(
                  child: Text(
                    'Cart',
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                    textAlign: TextAlign.center,
                    overflow:
                        TextOverflow.ellipsis, // Ensure text doesn't overflow
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
