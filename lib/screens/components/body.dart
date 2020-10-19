import 'package:alarm/services/world_time.dart';
import 'package:flutter/material.dart';
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
                    time: '..:..',
                    url: 'Europe/Istanbul',
                  ),
                  CountryCard(
                    country: "Paris, France",
                    timeZone: "+0 HRS ",
                    iconSrc: "assets/icons/paris.svg",
                    url: 'Europe/Paris',
                    time: '..:..',

                  ),
                  CountryCard(
                    country: "Cairo, Egypt",
                    timeZone: "+0 HRS ",
                    iconSrc: "assets/icons/pyramids.svg",
                    url: 'Africa/Cairo',
                    time: '..:..',

                  ),
                  CountryCard(
                    country: "London, England",
                    timeZone: "-1 HRS ",
                    iconSrc: "assets/icons/big_ben.svg",
                    url: 'Europe/London',
                    time: '..:..',

                  ),

                  CountryCard(
                    country: "Yekaterinburg, Russia",
                    timeZone: "+1 HRS ",
                    iconSrc: "assets/icons/moscow.svg",
                    url: 'Asia/Yekaterinburg',
                    time: '..:..',

                  ),
                  CountryCard(
                    country: "Rome, Italy",
                    timeZone: "+0 HRS ",
                    iconSrc: "assets/icons/Rome.svg",
                    url: 'Europe/Rome',
                    time: '..:..',

                  ),
                  CountryCard(
                    country: "Berlin, Germany",
                    timeZone: "+0 HRS ",
                    iconSrc: "assets/icons/Berlin.svg",
                    url: 'Europe/Berlin',
                    time: '..:..',

                  ),
                  CountryCard(
                    country: "Hong_Kong, China",
                    timeZone: "+6 HRS ",
                    iconSrc: "assets/icons/china.svg",
                    url: 'Asia/Hong_Kong',
                    time: '..:..',

                  ),
                  CountryCard(
                    country: "Kolkata, India",
                    timeZone: "+3:30 HRS ",
                    iconSrc: "assets/icons/india.svg",
                    url: 'Asia/Kolkata',
                    time: '..:..',

                  ),
                  CountryCard(
                    country: "Toronto, Canada",
                    timeZone: "-6 HRS ",
                    iconSrc: "assets/icons/canada.svg",
                    url: 'America/Toronto',
                    time: '..:..',

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
