import 'package:counter_7/page/watchdetail.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/function/fetch_watchlist.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: externalWidget(context),
        body: FutureBuilder(
            future: fetchWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                                color: snapshot.data![index].fields.watched
                                    ? Colors.blue
                                    : Colors.red,
                                blurRadius: 3.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(
                              "${snapshot.data![index].fields.title}",
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Column(
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (snapshot.data![index].fields.watched) {
                                      return Colors.blue;
                                    }
                                    return Colors.red;
                                  }),
                                  value: snapshot.data![index].fields.watched,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      snapshot.data![index].fields.watched =
                                          value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WatchDetailPage(
                                        data: snapshot.data![index].fields)),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                }
              }
            }));
  }
}
