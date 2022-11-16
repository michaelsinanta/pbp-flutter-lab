import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/main.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  static List<Budget> listBudget = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Form Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(listBudget[index].judul,
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                      ),
                      subtitle: Text(listBudget[index].nominal.toString(),
                          style: const TextStyle(
                              fontSize: 15, color: Colors.black)),
                      trailing: Column(
                        children: [
                          Text("${listBudget[index].tanggal.toString()} \n",
                              style: const TextStyle(fontSize: 15)),
                          Text(listBudget[index].jenis,
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                )),
          );
        },
        itemCount: listBudget.length,
      ),
    );
  }
}

class Budget {
  String judul;
  int nominal;
  String jenis;
  DateTime tanggal;

  Budget(this.judul, this.nominal, this.jenis, this.tanggal);
}

void setBudget(String judul, int nominal, String jenis, DateTime tanggal) {
  Budget budgetBaru = Budget(judul, nominal, jenis, tanggal);
  _MyDataPageState.listBudget.add(budgetBaru);
}
