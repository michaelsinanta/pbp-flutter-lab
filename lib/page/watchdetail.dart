import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:intl/intl.dart';

class WatchDetailPage extends StatefulWidget {
  WatchDetailPage({super.key, this.data});
  var data;
  @override
  State<WatchDetailPage> createState() => _WatchDetailPageState();
}

class _WatchDetailPageState extends State<WatchDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      drawer: externalWidget(context),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          shrinkWrap: true,
          children: <Widget>[
            Center(
                child: Text(
              '${widget.data.title}',
              style: const TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(height: 15),
            RichText(
              text: TextSpan(
                text: 'Release Date: ',
                style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        DateFormat("MMM dd, y").format(widget.data.releaseDate),
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: 'Rating: ',
                style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: '${widget.data.rating}',
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: 'Status: ',
                style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: '${widget.data.watched ? "Watched" : "Not watched"}',
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            RichText(
              text: TextSpan(
                text: 'Review: ',
                style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: '${widget.data.review}',
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
