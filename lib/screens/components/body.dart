import 'package:alarm/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'clock.dart';
import 'country_card.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Alexandria, Egypt ",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "Istanbul, Turkey",
                    timeZone: "+1 HRS ",
                    iconSrc: "assets/icons/galata.svg",
                    time: '4:40',
                    period: 'AM',
                  ),
                  CountryCard(
                    country: "Paris, France",
                    timeZone: "+0 HRS ",
                    iconSrc: "assets/icons/paris.svg",
                    time: "1:20",
                    period: "AM",
                  ),
                  CountryCard(
                    country: "Cairo, Egypt",
                    timeZone: "+0 HRS ",
                    iconSrc: "assets/icons/pyramids.svg",
                    time: '4:40',
                    period: 'AM',
                  ),
                  CountryCard(
                    country: "London, England",
                    timeZone: "-1 HRS ",
                    iconSrc: "assets/icons/big_ben.svg",
                    time: '4:40',
                    period: 'AM',
                  ),
                  CountryCard(
                    country: "Moscow, Russia",
                    timeZone: "+1 HRS ",
                    iconSrc: "assets/icons/moscow.svg",
                    time: '4:40',
                    period: 'AM',
                  ),
                  CountryCard(
                    country: "Rome, Italy",
                    timeZone: "+0 HRS ",
                    iconSrc: "assets/icons/Rome.svg",
                    time: '4:40',
                    period: 'AM',
                  ),
                  CountryCard(
                    country: "Berlin, Germany",
                    timeZone: "+0 HRS ",
                    iconSrc: "assets/icons/Berlin.svg",
                    time: '4:40',
                    period: 'AM',
                  ),
                  CountryCard(
                    country: "Beijing, China",
                    timeZone: "+6 HRS ",
                    iconSrc: "assets/icons/china.svg",
                    time: '4:40',
                    period: 'AM',
                  ),
                  CountryCard(
                    country: "Mumbai, India",
                    timeZone: "+3:30 HRS ",
                    iconSrc: "assets/icons/india.svg",
                    time: '4:40',
                    period: 'AM',
                  ),
                  CountryCard(
                    country: "Toronto, Canada",
                    timeZone: "-6 HRS ",
                    iconSrc: "assets/icons/canada.svg",
                    time: '4:40',
                    period: 'AM',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
