import 'package:flutter/material.dart';

class ShippingForm extends StatefulWidget {
  const ShippingForm({super.key});

  @override
  State<ShippingForm> createState() => _ShippingFormState();
}

class _ShippingFormState extends State<ShippingForm> {
  final _fromKey = GlobalKey<FormState>();
  String? _weightProduct;
  String? _kilo;
  String? _service;
  String? _fastShipping;
  bool _isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('คำนวณค่าจัดส่ง'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _fromKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: 'น้ำหนักสินค้า (กก.):'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกน้ำหนักสินค้า';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
