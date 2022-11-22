import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

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
      drawer: externalWidget(context),
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
