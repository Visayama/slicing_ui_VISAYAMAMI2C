import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:slicing_ui_visayamami2c/latihannote/detailnote.dart';
import 'package:slicing_ui_visayamami2c/latihannote/update_note.dart';
import 'package:slicing_ui_visayamami2c/latihannote/model_note/tambah_note.dart'; // Import the AddNotePage

import 'model_note/model_note.dart';

class PageNote extends StatefulWidget {
  const PageNote({super.key});

  @override
  State<PageNote> createState() => _PageNoteState();
}

class _PageNoteState extends State<PageNote> {
  late Future<ModelNote> futureNoteData;
  TextEditingController searchController = TextEditingController();
  List<Datum>? kampusList;
  List<Datum>? filteredKampusList;

  @override
  void initState() {
    super.initState();
    futureNoteData = fetchModelKampus();
  }

  Future<ModelNote> fetchModelKampus() async {
    final response = await http.get(Uri.parse('http://192.168.100.100/latihannote/getNote.php'));
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      return ModelNote.fromJson(jsonResponse);
    } else {
      throw Exception('Gagal memuat model kampus');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageAddNotes()),
              );

              if (result == true) {
                // Reload the notes if a new note was added
                setState(() {
                  futureNoteData = fetchModelKampus();
                });
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [],
              ),
              SizedBox(height: 20),
              FutureBuilder<ModelNote>(
                future: futureNoteData,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: snapshot.data!.data.map((datum) {
                          return Card(
                            child: Container(
                              width: 280,
                              height: 130,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                    child: Text(
                                      datum.judul,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                    child: Text(
                                      datum.isi,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.remove_red_eye_outlined),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => LatDetailBerita(datum),
                                              ),
                                            );
                                          },
                                        ),
                                        SizedBox(width: 10),
                                        IconButton(
                                          icon: Icon(Icons.edit_note),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => PageEditKaryawan(data: datum),
                                              ),
                                            );
                                          },
                                        ),
                                        SizedBox(width: 10),
                                        Icon(Icons.restore_from_trash_sharp),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    );
                  } else {
                    return Center(child: Text('No data found.'));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
