import 'package:alarm/alarm_page/add_alarm.dart';
import 'package:alarm/screens/components/body.dart';
import 'package:alarm/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // we have to call this on our starting page
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/Settings.svg",
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () {},
      ),
      actions: [buildAddButton(context)],
    );
  }

  Padding buildAddButton(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: SizedBox(
    height: 20,
    width: 50,
    child:RaisedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return AddAlarm();
          },
        ),
      );
    },
    color: Colors.redAccent,
    padding: EdgeInsets.all(0),
    child: Icon(
    Icons.add,
    color: Colors.white,



/*
        height: 20,
        width: 50,
        child:RaisedButton(
          color: Colors.redAccent,
          padding: EdgeInsets.all(0),
          child: Icon(
            Icons.add,
            color: Colors.white,
            //padding:
            //EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
            //child: InkWell(
            //onTap: () {
            //Loading();
            //},
            //child: Container(
            //width: getProportionateScreenWidth(32),
            //decoration: BoxDecoration(
            //color: Theme.of(context).primaryColor,
            //shape: BoxShape.circle,
            //),
            //child: Icon(
            //Icons.add,
            //color: Colors.white,
            //),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AlarmPage();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
*/


        ),
        /*child: Container(
          width: getProportionateScreenWidth(32),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      */),
    ),
    );
  }
}
