import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainAboutScreen extends StatelessWidget {
  const MainAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 12, left: 15, right: 15, bottom: 12),
            child: Column(
              children: [
                Text(
                  'Know more about Blood Donation',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.montserrat(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '''14th June 2020 is observed as ''',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                            ),
                          ),
                          TextSpan(
                            text: '''World Blood Donor Day''',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                                  '''. The theme for this year is “safe blood save lives” with the slogan “Give blood and make the world a healthier place.”\nDid you know one unit of donated blood can save up to three lives? This is because your blood is separated into its components (red blood cells, plasma, and platelet). Moreover, blood is needed on a regular basis for people suffering from blood disorders such as thalassemia and hemophilia, and also for the treatment of injuries after an accident, major surgeries, anemia, etc. Wondering if you are eligible for donating blood? Here is what you need to know before you plan for blood donation.''',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ExpansionTile(
                      title: Text(
                        'Why Should You Donate Blood?',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: RichText(
                            text: TextSpan(
                              style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        '''Blood donation not only saves lives but also has key benefits that we are unaware of.  It balances the level of iron in the body, regulates blood flow, reduces the risk of cardiovascular disease and stroke, triggers production of new blood cells and helps in weight loss. Moreover, donating blood had a positive effect on a donor’s physical and psychological well-being as well.\nIf you are planning to donate blood, then firstly get yourself registered. A person can donate blood either in a licensed blood bank, blood donation camps or at a blood mobile. Although the blood donation process usually takes not more than 15 minutes, the entire process right from registration, medical check-up, donation and post-donation rest doesn’t exceed more than 30 minutes.''',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Are YOU Eligible For Blood Donation?',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: RichText(
                            text: TextSpan(
                              style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      '''Any healthy adult, both male and female, can donate blood. A healthy individual can safely donate one unit of blood, that is, 350 ml. Men can donate safely once in every three months while women can donate every four months. However, there are certain factors you need to fulfil to be considered as a donor. These include.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''Weight: ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''The donor should not weigh less than 45 kgs.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''Pulse: ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''The pulse rate of the donor should be normal (60 to 100 beats per minute.)\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''Body temperature: ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Normal body temperature is  98.6°F (37°C).\nHemoglobin: It should not be less than 12.5 grams per deciliter.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''Blood pressure: ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Systolic and diastolic blood pressure should be within normal range (120/80 mm Hg).\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''Age: ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Donors should be in the age group of 18 – 65 years''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Who is NOT Eligible For Blood Donation?',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: RichText(
                            text: TextSpan(
                              style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      '''You cannot donate blood if you:-\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''1. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Suffer from common health problems such as cold, flu, sore throat, cold sore, stomach infection or any other infection.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''2. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Had any dental procedures done such as filling, cleaning or restoration (the day before the donation). If he had an extraction, surgery, root canal, crown, root planing, gum autograft or implant in the last three days before going for a blood donation.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''3. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Are diabetic and taking insulin injections to manage diabetes. However, if you have your blood glucose level under control with diet or oral medications, then you can donate blood.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''4. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Fall under high risk category such as have a history of genital ulcers, multiple sex partners or drug addictation.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''5. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Ever had an intravenous administration of drugs (even once).\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''6. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Have hepatitis B, hepatitis C, tuberculosis, leprosy, human immuno-deficiency virus (HIV), heart disease, epilepsy, bleeding disorders, thalassemia, sickle cells anemia and cancer.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''7. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Have had shots for any of the conditions such as cholera, typhoid, diphtheria, tetanus, plague, gamma globulin in the past 15 days and rabies vaccination in the last 1 year.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''8. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Have any tattoos or acupuncture done in the last 12 months or have have had tattoo removal surgery in the last six months.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''9. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Have been treated for malaria in the last 3 months or are residing in malaria endemic areas from the last three years.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''10. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Are pregnant, have delivered within a year or are breastfeeding''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Do’s And Don’ts To Follow Before Blood Donation',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: RichText(
                            text: TextSpan(
                              style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '''1. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Always choose a licensed blood bank to donate blood & donate blood only where doctors are available.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''2. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Eat something light before donating blood and hydrate yourself as it helps you to avoid weakness.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''3. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Avoid drinking alcohol the day prior to blood donation.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''4. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Do not smoke for at least 2 hours before blood donation.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''5. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Make sure to check whether the paramedical staff is using a set of disposable needles for every single donor.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''6. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Carry at least two IDs before going for blood donation.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''7. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Do let the doctor know about medications you are taking, if any.''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Do’s And Don’ts To Follow After Blood Donation',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: RichText(
                            text: TextSpan(
                              style: GoogleFonts.montserrat(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '''1. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Do not get immediately after the process is over, rest for at least 5 minutes.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''2. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Eat something that is rich in sugar post blood donation as it can up your energy levels and prevent you from feeling weak and dizzy.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''3. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Increase your fluid intake for the next 24 to 48 hours as it might take around 24 hours for the body to get the fluids retrieved post blood donation.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''4. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Stay away from drinking aerated drinks or carbonated beverages.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''5. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Avoid strenuous physical exertion, heavy lifting or pulling with the donation arm for about five hours.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''6. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Do not stand for long duration and avoid any queues or public transport.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''7. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Eat well balanced meals for the next 24 hours to rejuvenate your body.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''8. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''Do not smoke or consume alcohol for at least 24 hours after donation.\n''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                    text: '''9. ''',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text:
                                      '''If you feel discomfort or light-headed, lie down until the feeling passes.''',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
