import 'package:animation_wrappers/Animations/faded_scale_animation.dart';
import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';

import '../../Components/entry_field.dart';
import '../../Locale/languages/locale.dart';
import '../../routes/routes.dart';
import '../../theme/colors.dart';
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0),
          child: AppBar(
            flexibleSpace: Column(
              children: <Widget>[
                Spacer(),
                FadedScaleAnimation(
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.webp'),
                    radius: 40,
                  ),
                ),
                Text(
                  '\n' + locale.changeProfilePic!,
                  style: TextStyle(color: disabledTextColor),
                ),
                SizedBox(height: 64),
              ],
            ),
            actions: <Widget>[
              RawMaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  locale.save!,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: mainColor),
                ),
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelColor: mainColor,
                  unselectedLabelColor: secondaryColor,
                  labelStyle: Theme.of(context).textTheme.headline6,
                  indicator: BoxDecoration(color: transparentColor),
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(text: locale.profileInfo),
                    Tab(text: locale.accountInfo),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            FadedSlideAnimation(
              buildProfileInfo(locale),
              beginOffset: Offset(0, 0.3),
              endOffset: Offset(0, 0),
              slideCurve: Curves.linearToEaseOut,
            ),
            FadedSlideAnimation(
              buildAccountInfo(locale),
              beginOffset: Offset(0, 0.3),
              endOffset: Offset(0, 0),
              slideCurve: Curves.linearToEaseOut,
            )
          ],
        ),
      ),
    );
  }

  Widget buildProfileInfo(var locale) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 36.0),
          EntryField(
            label: locale.bio,
            initialValue: AppLocalizations.of(context)!.comment5,
          ),
          EntryField(
            label: locale.instagramID,
            initialValue: "@blackfox",
          ),
          EntryField(
            label: locale.facebookID,
            initialValue: "@blackfox",
          ),
          EntryField(
            label: locale.twitterID,
            initialValue: "@blackfox",
          ),
        ],
      ),
    );
  }

  Widget buildAccountInfo(var locale) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 36.0),
          EntryField(
            label: locale.fullName,
            initialValue: "Blackfox",
          ),
          EntryField(
            label: locale.email,
            initialValue: "blackfox@mail.com",
          ),
          EntryField(
            label: locale.email,
            initialValue: "+977 00000000",
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            leading: Image.asset(
              'assets/icons/ic_verified.png',
              scale: 3,
            ),
            title: Text(
              locale.getVerified,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: disabledTextColor, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: secondaryColor,
              size: 16,
            ),
            onTap: () => Navigator.popAndPushNamed(
                context, PageRoutes.verifiedBadgePage),
          )
        ],
      ),
    );
  }
}
