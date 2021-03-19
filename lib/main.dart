import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var day = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"];
  var schedule = [
    ["Pemograman Fungsional A", "00.00-00.00", "Lab A", "A25"],
    ["Pemograman Dasar F", "00.00-00.00", "Lab D", "A25"],
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Mulish'),
        home: Scaffold(
            appBar: AppBar(
              title: const Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: const Text("Jadwal Praktikum"),
              ),
              toolbarHeight: 70,
              backgroundColor: Color(0xffFF5B16),
            ),
            body: Container(
                color: Color(0xffF5F6F8),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView.builder(
                      itemCount: day.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.height * 100,
                                height: 55,
                                decoration: BoxDecoration(
                                    color: Color(0xffFF5B16),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${day[index]}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.height * 100,
                                  height: 180,
                                  color: Color(0xffFFFFFF),
                                  child: ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: schedule.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  '${schedule[index][0]}',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              )),
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                          child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          8.0),
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .schedule,
                                                                    size: 16,
                                                                    color: Color(
                                                                        0xffFF5B16),
                                                                  ),
                                                                  Text(
                                                                    '${schedule[index][1]}',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      color: Color(
                                                                          0xffA0A0A0),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ))),
                                                      Container(
                                                          child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          8.0),
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .meeting_room,
                                                                    size: 16,
                                                                    color: Color(
                                                                        0xffFF5B16),
                                                                  ),
                                                                  Text(
                                                                    '${schedule[index][2]}',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      color: Color(
                                                                          0xffA0A0A0),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ))),
                                                      Container(
                                                          child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          8.0),
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .computer,
                                                                    size: 16,
                                                                    color: Color(
                                                                        0xffFF5B16),
                                                                  ),
                                                                  Text(
                                                                    '${schedule[index][3]}',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      color: Color(
                                                                          0xffA0A0A0),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ))),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }))
                            ]));
                      }),
                ))));
  }
}
