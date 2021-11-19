import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sunday_class/myprofile.dart';
import 'package:sunday_class/splash_screen.dart';

import 'model/Modles.dart';

//
List<PostModel> imagesBoxes = [
  PostModel(
    //1st post
    username: 'Sheikh Hasina',
    profileImageUrl: 'images/Sheikh-Hasina.jpg',
    caption: 'Khulna Government Mahila College',
    postImageUrl: 'images/posts/post_1.jpg',
    address: ' Jalil - Sarani, Khulna,Khulna,Bangaldesh',
    likes: 1,
  ),
  PostModel(
    //1st post
    username: 'nur123',
    profileImageUrl: 'images/Sheikh-Hasina.jpg',
    caption: '1st colages',
    postImageUrl: 'images/posts/post_1.jpg',
    address: '1st Address',
    likes: 1,
  ),
  PostModel(
    //1st post
    username: 'nur123',
    profileImageUrl: 'images/Sheikh-Hasina.jpg',
    caption: '1st colages',
    postImageUrl: 'images/posts/post_1.jpg',
    address: '1st Address',
    likes: 1,
  ),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Azam Khan Government Commerce College',
      address: 'Babu Khan Rd, Khulna,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_4.jpg',
      likes: 45),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Azam Khan Government Commerce College',
      address: 'Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_5.jpg',
      likes: 35),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Govt. M. M. City College',
      address: '300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_6.jpg',
      likes: 23),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna Public College',
      address: 'public college, road, Khulna-9000,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_7.jpg',
      likes: 845),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna Government College',
      address: 'Hasanbag Road, Khulna,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_8.jpg',
      likes: 5355),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Government Sundarban Adarsha College',
      address: '91 Khanjhan Ali road, Jessore-Dhaka Highway, Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_9.jpg',
      likes: 4845),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna Islamia Degree College',
      address: ' M A Bari St, Khulna,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_10.jpg',
      likes: 245),
];
//

class TimelinePage extends StatefulWidget {
  const TimelinePage({Key key}) : super(key: key);

  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //tha appbar
      appBar: buildTimeLineAppBar(context),
      body: fullBody(context),
    );
  }

//Body
  Widget fullBody(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height / 25,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Text(
              "Friends",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(21, 21, 21, 1),
              ),
            ),
          ),
        ),

        /*Sliver list

        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagesBoxes.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 2.5,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${imagesBoxes[index]}"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                );
              },
            ),
          ),
        ),
*/
        SliverToBoxAdapter(
          child: Container(
            height: MediaQuery.of(context).size.height / 25,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Text(
              "Posts",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(21, 21, 21, 1),
              ),
            ),
          ),
        ),
        sliverList(context),
      ],
    );
  }

  Widget sliverList(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(245, 12, 104, .1),
                    Color.fromRGBO(245, 12, 104, .2),
                    Color.fromRGBO(245, 12, 104, .3),
                    Color.fromRGBO(245, 12, 104, .4),
                    Color.fromRGBO(245, 12, 104, .5),
                    Color.fromRGBO(245, 12, 104, .6),
                    Color.fromRGBO(245, 12, 104, .7),
                    Color.fromRGBO(245, 12, 104, .8),
                    Color.fromRGBO(245, 12, 104, .9),
                    Color.fromRGBO(245, 12, 104, 1),
                  ]),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                children: [
                  // Header Row

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                              "${imagesBoxes[index].profileImageUrl}"),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              text: "${imagesBoxes[index].username}\n",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(21, 21, 21, 1),
                                height: 1.2,
                              ),
                              children: [
                                TextSpan(
                                  text: "${DateTime.now()}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color.fromRGBO(21, 21, 21, 1)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Address Row
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 15,
                          color: Color.fromRGBO(21, 21, 21, 1),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "${imagesBoxes[index].address}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(21, 21, 21, 1),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Caption Text Container
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "${imagesBoxes[index].caption}",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 0, 0, .6),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),

                  //Image container

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("${imagesBoxes[index].postImageUrl}"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  //Buttons Container
                  Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Likes Button Container

                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width / 3.9,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(0, 0, 0, .6),
                              width: 3,
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.heart,
                              color: Color.fromRGBO(0, 0, 0, .6),
                              size: 13,
                            ),
                            label: Text(
                              "${imagesBoxes[index].likes} likes",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                                color: Color.fromRGBO(0, 0, 0, .6),
                              ),
                            ),
                          ),
                        ),

                        // Comments button container
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width / 3.7,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Color.fromRGBO(0, 0, 0, .6),
                            style: BorderStyle.solid,
                            width: 3,
                          )),
                          child: FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.message_outlined,
                              size: 13,
                              color: Color.fromRGBO(0, 0, 0, .6),
                            ),
                            label: Text(
                              "Comments",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, .6),
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),

                        // Share Button Container

                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Color.fromRGBO(0, 0, 0, .6),
                            style: BorderStyle.solid,
                            width: 3,
                          )),
                          child: FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share_outlined,
                              size: 13,
                              color: Color.fromRGBO(0, 0, 0, .6),
                            ),
                            label: Text(
                              "Share",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, .6),
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      childCount: imagesBoxes.length,
    ));
  }

//,,appbar
  AppBar buildTimeLineAppBar(BuildContext context) {
    return AppBar(
      title: Text("Timeline"),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Splash_Screen(),
            ),
          );
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.person,
            color: Color.fromRGBO(21, 21, 21, 1),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
        )
      ],
    );
  }
}
