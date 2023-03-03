import 'package:flutter/material.dart';

import 'color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final listMember = {
    "member": [
      {
        "nama": "Abid Bilal",
        "nim": "123200069",
        'kelas': 'IF-A',
      },
      {
        'nama': 'Edwinpras Wijaya',
        'nim': '123200074',
        'kelas': 'IF-A',
      },
      {
        'nama': 'Muhammad Agil Suyuti',
        'nim': '123200109',
        'kelas': 'IF-A',
      }
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          return Card(
            elevation: 20,
            shadowColor: primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              height: 200,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          overflow: TextOverflow.ellipsis,
                          '${listMember['member']![index]['nama']}',
                          style: TextStyle(
                            color: primary,
                            fontSize: 20),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          '${listMember['member']![index]['nim']}',
                          style: TextStyle(
                            color: primary,
                            fontSize: 20),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          '${listMember['member']![index]['kelas']}',
                          style: TextStyle(
                            color: primary,
                            fontSize: 20),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 12,
        ),
        itemCount: listMember['member']!.length,
      ),
    );
  }
}