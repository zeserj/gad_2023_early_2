import 'dart:convert';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../models/index.dart';

Future<void> createProducts() async {
  final List<Category> categories = await _createCategories();
  final List<Vendor> vendors = await _createVendors();

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  final Response response = await get(Uri.parse('https://picsum.photos/v2/list?page=1&limit=1000'));
  final List<Map<String, dynamic>> imagesData = jsonDecode(response.body) as List<Map<String, dynamic>>;

  for (final Vendor vendor in vendors) {
    for (int i = 0; i < 100; i++) {
      categories.shuffle();
      final Category category = categories.first;

      final DocumentReference<Map<String, dynamic>> ref = firestore.collection('products').doc();

      final Product product = Product(
        id: ref.id,
        title: 'Product ${i + 1}',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in mauris a sapien bibendum elementum. Nam varius massa est, non ultricies diam molestie at. Nulla lobortis luctus neque, non scelerisque leo dignissim a. In tempus condimentum aliquam. Duis tristique diam nec condimentum condimentum. Donec vitae massa nec lacus ultrices vestibulum. Maecenas ullamcorper euismod ipsum eget ultrices. Morbi gravida est quis eros faucibus dignissim.Nulla commodo sodales sagittis. Mauris sagittis diam eros. Sed posuere sed ipsum non molestie. Morbi ac placerat felis. Nam a nibh ex. Quisque non augue a nisl ultricies tempus id in enim. Morbi a tempus elit, sed semper mauris. Vestibulum lacus tortor, semper nec justo at, interdum sodales diam. Donec id ante nec magna aliquam sollicitudin. Quisque dictum purus diam, sed laoreet tellus porta nec. Quisque sed ligula ac ante placerat vulputate eu commodo magna. Fusce scelerisque at mi vel finibus. Mauris malesuada, nisl id bibendum laoreet, quam mauris efficitur urna, eget egestas felis nunc a sem. Aenean ultrices condimentum orci, in auctor elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras egestas mi eget posuere rhoncus. Pellentesque a dui ut dolor vestibulum tincidunt eu sed orci. Pellentesque risus ligula, maximus et ultrices at, ullamcorper eget odio. Vivamus rhoncus tellus a ornare suscipit. Nulla lectus nibh, maximus at sollicitudin non, pellentesque id massa. Nullam vel ipsum massa. Suspendisse vehicula, tortor vitae ornare vehicula, dolor nisl tincidunt sem, et efficitur turpis lectus a ipsum. Nam lacinia lacus quis purus eleifend aliquet. Curabitur nulla nisi, consequat sed ligula eget, rhoncus placerat augue. Ut ornare dui et leo sollicitudin hendrerit. Suspendisse venenatis bibendum odio, et pharetra ipsum posuere dictum. Morbi at cursus arcu. In viverra lorem vel varius lacinia. Aenean consectetur ante accumsan sodales pretium. Ut magna orci, hendrerit non dapibus sed, volutpat eu elit. Vivamus nisi mi, porttitor sed finibus in, eleifend nec augue. Donec scelerisque ante vitae ornare mollis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec justo odio, suscipit ac orci ut, efficitur porttitor nibh. Praesent et ligula erat. Aenean felis magna, mollis quis venenatis vel, cursus ac quam. Nunc ac tincidunt ipsum. Nam commodo arcu diam, nec elementum sem pellentesque at. Donec rutrum placerat ligula, vitae ornare ligula volutpat et. Vivamus porttitor, quam sit amet ullamcorper ultricies, leo leo ultricies sem, et vehicula sapien ex sit amet nunc.'
                .split('')
                .take(Random().nextInt(50) + 150)
                .join(),
        image: imagesData[i]['download_url'] as String,
        price: Random().nextInt(500) + 10,
        categoryId: category.id,
        vendorId: vendor.id,
      );

      await ref.set(product.toJson());
    }
  }
}

Future<List<Category>> _createCategories() async {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final List<Category> categories = <Category>[];

  final List<IconData> icons = <IconData>[
    Icons.add,
    Icons.ac_unit,
    Icons.account_circle,
    Icons.account_tree_rounded,
    Icons.adb,
    Icons.cabin_outlined,
    Icons.power_settings_new,
    Icons.add_alert_sharp,
    Icons.add_chart,
    Icons.accessibility_sharp,
  ];

  for (int i = 0; i < 10; i++) {
    final DocumentReference<Map<String, dynamic>> ref = firestore.collection('categories').doc();

    final Category category = Category(
      id: ref.id,
      title: 'Category ${i + 1}',
      icon: icons[i].codePoint,
    );
    categories.add(category);

    await ref.set(category.toJson());
  }

  return categories;
}

Future<List<Vendor>> _createVendors() async {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final List<Vendor> vendors = <Vendor>[];

  final List<String> images = <String>[
    'https://logos-world.net/wp-content/uploads/2020/09/Starbucks-Logo.png',
    'https://logos-world.net/wp-content/uploads/2020/11/Red-Bull-Logo.png',
    'https://logos-world.net/wp-content/uploads/2020/03/Coca-Cola-Logo.png',
    'https://logos-world.net/wp-content/uploads/2020/09/Heineken-Logo.png',
  ];

  for (int i = 0; i < 4; i++) {
    final DocumentReference<Map<String, dynamic>> ref = firestore.collection('vendors').doc();

    final Vendor vendor = Vendor(
      id: ref.id,
      name: 'Vendor ${i + 1}',
      image: images[i],
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse in mauris a sapien bibendum elementum. Nam varius massa est, non ultricies diam molestie at. Nulla lobortis luctus neque, non scelerisque leo dignissim a. In tempus condimentum aliquam. Duis tristique diam nec condimentum condimentum. Donec vitae massa nec lacus ultrices vestibulum. Maecenas ullamcorper euismod ipsum eget ultrices. Morbi gravida est quis eros faucibus dignissim.Nulla commodo sodales sagittis. Mauris sagittis diam eros. Sed posuere sed ipsum non molestie. Morbi ac placerat felis. Nam a nibh ex. Quisque non augue a nisl ultricies tempus id in enim. Morbi a tempus elit, sed semper mauris. Vestibulum lacus tortor, semper nec justo at, interdum sodales diam. Donec id ante nec magna aliquam sollicitudin. Quisque dictum purus diam, sed laoreet tellus porta nec. Quisque sed ligula ac ante placerat vulputate eu commodo magna. Fusce scelerisque at mi vel finibus. Mauris malesuada, nisl id bibendum laoreet, quam mauris efficitur urna, eget egestas felis nunc a sem. Aenean ultrices condimentum orci, in auctor elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras egestas mi eget posuere rhoncus. Pellentesque a dui ut dolor vestibulum tincidunt eu sed orci. Pellentesque risus ligula, maximus et ultrices at, ullamcorper eget odio. Vivamus rhoncus tellus a ornare suscipit. Nulla lectus nibh, maximus at sollicitudin non, pellentesque id massa. Nullam vel ipsum massa. Suspendisse vehicula, tortor vitae ornare vehicula, dolor nisl tincidunt sem, et efficitur turpis lectus a ipsum. Nam lacinia lacus quis purus eleifend aliquet. Curabitur nulla nisi, consequat sed ligula eget, rhoncus placerat augue. Ut ornare dui et leo sollicitudin hendrerit. Suspendisse venenatis bibendum odio, et pharetra ipsum posuere dictum. Morbi at cursus arcu. In viverra lorem vel varius lacinia. Aenean consectetur ante accumsan sodales pretium. Ut magna orci, hendrerit non dapibus sed, volutpat eu elit. Vivamus nisi mi, porttitor sed finibus in, eleifend nec augue. Donec scelerisque ante vitae ornare mollis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec justo odio, suscipit ac orci ut, efficitur porttitor nibh. Praesent et ligula erat. Aenean felis magna, mollis quis venenatis vel, cursus ac quam. Nunc ac tincidunt ipsum. Nam commodo arcu diam, nec elementum sem pellentesque at. Donec rutrum placerat ligula, vitae ornare ligula volutpat et. Vivamus porttitor, quam sit amet ullamcorper ultricies, leo leo ultricies sem, et vehicula sapien ex sit amet nunc.'
              .split('')
              .take(Random().nextInt(50) + 150)
              .join(),
    );
    vendors.add(vendor);

    await ref.set(vendor.toJson());
  }

  return vendors;
}
