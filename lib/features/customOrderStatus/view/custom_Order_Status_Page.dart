import 'package:boilerplate/features/customOrderStatus/bloc/order_bloc.dart';
import 'package:boilerplate/features/temp/appBar.dart';
import 'package:boilerplate/injector/injector.dart';
import 'package:boilerplate/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CustomOrderStatusPage extends StatelessWidget {
  const CustomOrderStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderBloc>(
      create: (context) =>
          Injector.instance<OrderBloc>()..add(const OrderEvent.loadList()),
      child: Scaffold(
        drawer: AppBarDrawer(),
        appBar: const CustomAppBar(),
        body: const Body(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

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
                  'Order Settings',
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Fixed Statuses
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 245, 247, 247),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                'Fixed Statuses',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 192, 188, 188),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Wrap(
              spacing: 10,
              runSpacing: 7,
              children: [
                _buildStatusContainer('New', Colors.grey),
                _buildStatusContainer('Confirmed', Colors.blue),
                _buildStatusContainer('Processing', Colors.teal),
                _buildStatusContainer('Shipping', Colors.brown),
                _buildStatusContainer('Partially Delivered', Colors.blueAccent),
                _buildStatusContainer('Delivered', Colors.indigo),
                _buildStatusContainer('Partially Returned', Colors.orange),
                _buildStatusContainer('Returned', Colors.purple),
                _buildStatusContainer('Completed', Colors.green),
                _buildStatusContainer('Canceled', Colors.red),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Custom Statuses Section
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 245, 247, 247),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                'Custom Statues',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 192, 188, 188),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Wrap(
              spacing: 10,
              runSpacing: 7,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name',
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 15,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Vui lòng nhập nội dung';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          context
                              .read<OrderBloc>()
                              .add(OrderEvent.changeLabel(value));
                        },
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ColorPickerButton()],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 55),
                        backgroundColor: const Color(0xFF26A69A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        context.read<OrderBloc>().add(OrderEvent.newOrder());
                      },
                      child: const Text(
                        'Add',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.tempOrders.length,
              itemBuilder: (context, index) {
                final order = state.tempOrders[index];

                // final Color orderColor = _hexToColor(order.color);

                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 67,
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              order.label,
                              style: const TextStyle(fontSize: 16),
                            ),
                            if (MediaQuery.of(context).size.width > 200)
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  // color: orderColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            if (MediaQuery.of(context).size.width > 400)
                              Checkbox(
                                value: order.is_published,
                                onChanged: (bool? value) {
                                  // setState(() {
                                  //   // Cập nhật giá trị khi checkbox thay đổi
                                  //   state.orders[index] = order.copyWith(
                                  //     is_published: value,
                                  //   );
                                  // });
                                },
                                activeColor: Colors.teal,
                              ),
                            if (MediaQuery.of(context).size.width > 500)
                              const Icon(Icons.delete, color: Colors.red),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }),
          Padding(
            padding: const EdgeInsets.only(left: 11),
            child: Container(
              height: 60,
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
                color: Colors.grey[300],
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 2,
                                child: const Text(
                                  'NAME',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              if (constraints.maxWidth > 200)
                                Expanded(
                                  flex: 2,
                                  child: const Text(
                                    'COLOR',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              if (constraints.maxWidth > 440)
                                Expanded(
                                  flex: 2,
                                  child: const Text(
                                    'PUBLISH',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              if (constraints.maxWidth > 450)
                                Expanded(
                                  flex: 1,
                                  child: const Text(
                                    'DELETE',
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          const IsCheckBox(),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildStatusContainer(String label, Color borderColor) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: borderColor,
        width: 1,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          color: borderColor,
        ),
      ),
    ),
  );
}

class IsCheckBox extends StatefulWidget {
  const IsCheckBox({super.key});

  @override
  State<IsCheckBox> createState() => _IsCheckBoxState();
}

class _IsCheckBoxState extends State<IsCheckBox> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.orders.length,
          itemBuilder: (context, index) {
            final order = state.orders[index];
            final Color orderColor = _hexToColor(order.color);

            return LayoutBuilder(builder: (context, constraints) {
              return Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                          height: 67,
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  order.label,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                              if (constraints.maxWidth > 200)
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: orderColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              if (constraints.maxWidth > 420)
                                Expanded(
                                  flex: 2,
                                  child: Checkbox(
                                    value: order.is_published,
                                    onChanged: (bool? value) {
                                      if (value != null) {
                                        // Phát sự kiện để thay đổi trạng thái is_published
                                        // context.read<OrderBloc>().add(
                                        //     OrderEvent.updateOrderPublishStatus(
                                        //         order, value));
                                      }
                                    },
                                    activeColor: Colors.teal,
                                  ),
                                ),
                              if (constraints.maxWidth > 450)
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: const Icon(Icons.delete,
                                        color: Colors.red),
                                    onPressed: () {
                                      // context.read<>()
                                      context
                                          .read<OrderBloc>()
                                          .add(OrderEvent.deleteOrder());
                                    },
                                  ),
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ));
            });
          },
        );
      },
    );
  }

  // Hàm chuyển đổi mã hex sang Color
  Color _hexToColor(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    return Color(int.parse("FF$hexColor", radix: 16));
  }
}

class ColorPickerButton extends StatefulWidget {
  @override
  _ColorPickerButtonState createState() => _ColorPickerButtonState();
}

class _ColorPickerButtonState extends State<ColorPickerButton> {
  Color selectedColor = Colors.black;
  String colorCode = '#000000'; // Biến để lưu mã màu

  // Hàm mở bảng chọn màu
  void _openColorPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: const Text('Pick a color'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                ColorPicker(
                  pickerColor: selectedColor,
                  onColorChanged: (Color color) {
                    setState(() {
                      selectedColor = color;
                      colorCode =
                          '#${color.value.toRadixString(16).padLeft(8, '0').substring(2)}'; // Cập nhật mã màu
                    });
                    // Gửi sự kiện sử dụng mã màu nếu dùng Bloc
                    context
                        .read<OrderBloc>()
                        .add(OrderEvent.changeColors(colorCode));
                  },
                  showLabel: false, // Ẩn nhãn màu
                  pickerAreaHeightPercent: 0.8,
                  enableAlpha: false, // Tắt chế độ alpha (trong suốt)
                ),
                // Hiển thị mã màu dưới dạng Hex
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Hex\n$colorCode',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text('Select'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Sử dụng builder để đảm bảo Provider được đọc đúng cách
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Color',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                _openColorPicker(context); // Gọi hàm để mở bảng chọn màu
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: selectedColor, // Màu hiển thị hiện tại
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // Hiển thị mã màu
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Selected Color Code: $colorCode',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        );
      },
    );
  }
}
