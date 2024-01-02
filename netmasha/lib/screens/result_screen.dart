import 'package:flutter/material.dart';
import 'package:netmasha/api/experience.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/ResultContainer.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'الجداول المقترحة',
              style: TextStyle(color: bg),
            ),
          ],
        ),
        backgroundColor: purple,
        iconTheme: IconThemeData(
          color: bg,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: FutureBuilder(
              future: Experience().getView(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.separated(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return ResultContainer(
                            experience: snapshot.data![index]);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 24);
                      });
                }
                return Center(child: CircularProgressIndicator(color: purple));
              }),
        ),
      ),
    );
  }
}
