import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dBlack,
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 23,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 23,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const ChatingSection(),
      bottomNavigationBar: const BottomSection(),
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(20),
        color: dWhite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 43,
                decoration: const BoxDecoration(
                  color: dGreen,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.insert_emoticon,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.upload_outlined,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.image,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
              ),
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                color: dGreen,
                shape: BoxShape.circle,
              ),
              child: const IconButton(
                icon: Icon(
                  Icons.mic_none_sharp,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatingSection extends StatelessWidget {
  final String senderProfile = 'images/avatar/thanos.jpg';
  final String receiverProfile = 'images/avatar/katty.jpg';
  const ChatingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: dWhite,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Text(
              "Thanos",
              style: GoogleFonts.inter(
                color: Colors.black87,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Etait en ligne, il y a 36 secondes",
              style: GoogleFonts.inter(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 45),
            TextMessage(
              message: "Months on ye at by esteem",
              date: "17:19",
              senderProfile: senderProfile,
              isReceiver: 1,
              isDirect: 0,
            ),
            TextMessage(
              message: "Seen you eyes son show",
              date: "17:13",
              senderProfile: senderProfile,
              isReceiver: 0,
              isDirect: 0,
            ),
            TextMessage(
              message: "As tolerably recommend shameless",
              date: "17:10",
              senderProfile: senderProfile,
              isReceiver: 0,
              isDirect: 1,
            ),
            TextMessage(
              message: "She although cheerful perceive",
              date: "17:10",
              senderProfile: senderProfile,
              isReceiver: 1,
              isDirect: 0,
            ),
            const ImageMessage(
              image: 'images/avatar/meriva.jpg',
              date: "17:09",
              description: "Least their she you now above going stand forth",
            ),
            AudioMessage(date: "18:05", senderProfile: senderProfile),
            TextMessage(
              message: "Provided put unpacked now but bringing. ",
              date: "16:59",
              senderProfile: senderProfile,
              isReceiver: 1,
              isDirect: 0,
            ),
            TextMessage(
              message: "Under as seems we me stuff",
              date: "16:53",
              senderProfile: senderProfile,
              isReceiver: 0,
              isDirect: 0,
            ),
            TextMessage(
              message: "Next it draw in draw much bred",
              date: "16:50",
              senderProfile: senderProfile,
              isReceiver: 0,
              isDirect: 1,
            ),
            TextMessage(
              message: "Sure that that way gave",
              date: "16:48",
              senderProfile: senderProfile,
              isReceiver: 1,
              isDirect: 0,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class TextMessage extends StatelessWidget {
  final String message, date, senderProfile;
  final int isReceiver, isDirect;

  const TextMessage(
      {Key? key,
      required this.message,
      required this.date,
      required this.senderProfile,
      required this.isReceiver,
      required this.isDirect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          isReceiver == 1 && isDirect == 0
              ? Container(
                  margin: const EdgeInsets.only(right: 15),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(senderProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : SizedBox(
                  width: 60,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check,
                        color: dGreen,
                        size: 13.0,
                      ),
                      const SizedBox(width: 7.0),
                      Text(
                        date,
                        style: GoogleFonts.inter(
                          color: dGreen,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              margin: isReceiver == 1
                  ? const EdgeInsets.only(
                      right: 25,
                    )
                  : const EdgeInsets.only(
                      left: 20,
                    ),
              padding: const EdgeInsets.all(6),
              height: 55,
              decoration: isReceiver == 1
                  ? const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    )
                  : const BoxDecoration(
                      color: dGreen,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
              child: Text(
                message,
                style: GoogleFonts.inter(
                  color: isReceiver == 1 ? dGreen : Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          isReceiver == 1 && isDirect == 0
              ? SizedBox(
                  width: 60,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check,
                        color: dGreen,
                        size: 13.0,
                      ),
                      const SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        date,
                        style: GoogleFonts.inter(
                          color: dGreen,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
          isDirect == 0 && isReceiver == 0
              ? Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 10,
                  ),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(senderProfile),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(),
          isReceiver == 0 && isDirect == 1
              ? Container(
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 10,
                  ),
                  width: 45,
                  height: 45,
                )
              : Container(),
        ],
      ),
    );
  }
}

class AudioMessage extends StatelessWidget {
  final String date, senderProfile;

  const AudioMessage({
    Key? key,
    required this.date,
    required this.senderProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Row(
            children: [
              Text(
                "17:14",
                style: GoogleFonts.inter(
                  color: dGreen,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 7.0),
              const Icon(
                Icons.check,
                color: dGreen,
                size: 13.0,
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(
              left: 15,
              bottom: 5,
            ),
            padding: const EdgeInsets.all(6),
            height: 55,
            decoration: const BoxDecoration(
              color: dGreen,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Row(
              children: [
                const IconButton(
                  icon: Icon(
                    Icons.play_circle_outline,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
                Image.asset(
                  'images/sound-waves.png',
                  height: 35,
                  width: 130,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 16,
            right: 10,
          ),
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(senderProfile),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}

class ImageMessage extends StatelessWidget {
  final String image, date, description;

  const ImageMessage({
    Key? key,
    required this.image,
    required this.date,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            right: 16,
          ),
          width: 45,
          height: 45,
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 26,
                  top: 5,
                ),
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(22.0),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 8,
                  right: 25,
                  bottom: 10,
                ),
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                height: 55,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Wrap(children: [
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      color: dGreen,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                Icons.check,
                color: dGreen,
                size: 13.0,
              ),
              const SizedBox(width: 7.0),
              Text(
                "17:14",
                style: GoogleFonts.inter(
                  color: dGreen,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
