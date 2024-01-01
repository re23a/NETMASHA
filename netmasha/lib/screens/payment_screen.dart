import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netmasha/blocs/table_bloc/table_bloc.dart';
import 'package:netmasha/blocs/table_bloc/table_event.dart';
import 'package:netmasha/blocs/table_bloc/teble_state.dart';
import 'package:netmasha/models/experience_model.dart';
import 'package:netmasha/screens/nav_bar.dart';
import 'package:netmasha/styles/colors.dart';
import 'package:netmasha/widgets/buttons.dart';
import 'package:icons_plus/icons_plus.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key, required this.experience});
  final ExperienceModel experience;

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        iconTheme: IconThemeData(
          color: purple,
        ),
      ),
      bottomSheet: Container(
        color: bg,
        height: 85,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<TableBloc, TableState>(builder: (context, state) {
              return Button(
                  txt: 'ادفع',
                  onTap: () {
                    context
                        .read<TableBloc>()
                        .add(IncreaseAdult(adult: -1, child: 0));
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleDialog(
                            backgroundColor: bg,
                            title: Image.asset(
                                "assets/Animation - 1703754414942-2.gif"),
                            children: [
                              SimpleDialogOption(
                                  child: Button(
                                      txt: 'العودة للصفحة الرئيسية',
                                      onTap: () {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => NavBar()),
                                          (route) => false,
                                        );
                                      },
                                      isBigButten: true))
                            ],
                          );
                        });
                  },
                  isBigButten: true);
            }),
          ],
        ),
      ),
      body: ListView(
        children: [
          EasyDateTimeLine(
            initialDate: DateTime.now(),
            onDateChange: (selectedDate) {},
            activeColor: green,
            locale: 'ar',
            dayProps: EasyDayProps(
              todayHighlightStyle: TodayHighlightStyle.withBackground,
              todayHighlightColor: lightGreen,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              padding: const EdgeInsets.only(bottom: 200),
              shrinkWrap: true,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 80,
                    ),
                    Text(
                      'عدد الأشخاص',
                      style: TextStyle(
                        color: black,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'عدد البالغين',
                          style: TextStyle(
                            color: purple,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 35,
                                height: 35,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF2EDFF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                                child: Center(
                                    child: BlocBuilder<TableBloc, TableState>(
                                  builder: (context, state) {
                                    return IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {
                                        context.read<TableBloc>().add(
                                            IncreaseAdult(
                                                adult: state.adult,
                                                child: state.child));
                                      },
                                    );
                                  },
                                ))),
                            const SizedBox(
                              width: 8,
                            ),
                            BlocBuilder<TableBloc, TableState>(
                              builder: (context, state) {
                                return Text(state.adult.toString());
                              },
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF2EDFF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                              ),
                              child: Center(
                                child: BlocBuilder<TableBloc, TableState>(
                                    builder: (context, state) {
                                  return IconButton(
                                    icon: const Icon(Icons.remove),
                                    onPressed: () {
                                      context.read<TableBloc>().add(
                                          DecreaseAdult(
                                              adult: state.adult,
                                              child: state.child));
                                    },
                                  );
                                }),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'عدد الاطفال',
                          style: TextStyle(
                            color: purple,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 35,
                                height: 35,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF2EDFF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                                child: Center(
                                    child: BlocBuilder<TableBloc, TableState>(
                                  builder: (context, state) {
                                    return IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {
                                        context.read<TableBloc>().add(
                                            IncreaseChild(
                                                adult: state.adult,
                                                child: state.child));
                                      },
                                    );
                                  },
                                ))),
                            const SizedBox(
                              width: 8,
                            ),
                            BlocBuilder<TableBloc, TableState>(
                              builder: (context, state) {
                                return Text(state.child.toString());
                              },
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                                width: 35,
                                height: 35,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF2EDFF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                                child: Center(
                                    child: BlocBuilder<TableBloc, TableState>(
                                  builder: (context, state) {
                                    return IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed: () {
                                        context.read<TableBloc>().add(
                                            DecreaseChild(
                                                adult: state.adult,
                                                child: state.child));
                                      },
                                    );
                                  },
                                ))),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'المجموع',
                      style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    BlocBuilder<TableBloc, TableState>(
                        builder: (context, state) {
                      return Text(
                        '${state.adult * widget.experience.adultPrice! + state.child * widget.experience.childPrice!} ر.س',
                        style: TextStyle(
                          color: black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    })
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Divider(),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'طريقة الدفع',
                  style: TextStyle(
                    color: black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                    color: lightPurple,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: const Text('Apple pay'),
                            trailing: const Icon(LineAwesome.cc_apple_pay),
                            leading: Radio(
                              value: 'Apple pay',
                              groupValue: type,
                              onChanged: (value) {
                                setState(() {
                                  type = value.toString();
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Visa/Mada'),
                            trailing: const Icon(LineAwesome.cc_visa),
                            leading: Radio(
                              value: 'Visa/Mada',
                              groupValue: type,
                              onChanged: (value) {
                                setState(() {
                                  type = value.toString();
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('الدفع عند الوصول'),
                            trailing: const Icon(Icons.wallet),
                            leading: Radio(
                              value: 'الدفع عند الوصول',
                              groupValue: type,
                              onChanged: (value) {
                                setState(() {
                                  type = value.toString();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
