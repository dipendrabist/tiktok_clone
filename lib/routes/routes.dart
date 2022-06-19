import 'package:flutter/material.dart';
import 'package:tiktok_clone/Auth/login_navigator.dart';
import 'package:tiktok_clone/BottomNavigation/Explore/more_page.dart';
import 'package:tiktok_clone/BottomNavigation/MyProfile/badge_request.dart';
import 'package:tiktok_clone/BottomNavigation/MyProfile/language_page.dart';
import 'package:tiktok_clone/BottomNavigation/MyProfile/video_option.dart';
import 'package:tiktok_clone/BottomNavigation/bottom_navigation.dart';
import 'package:tiktok_clone/BottomNavigation/AddVideo/add_video.dart';
import 'package:tiktok_clone/BottomNavigation/AddVideo/add_video_filter.dart';
import 'package:tiktok_clone/BottomNavigation/MyProfile/followers.dart';
import 'package:tiktok_clone/BottomNavigation/MyProfile/help_page.dart';
import 'package:tiktok_clone/BottomNavigation/AddVideo/post_info.dart';
import 'package:tiktok_clone/BottomNavigation/Explore/search_users.dart';
import 'package:tiktok_clone/BottomNavigation/MyProfile/tnc.dart';
import 'package:tiktok_clone/BottomNavigation/MyProfile/redeem_coins.dart';
import 'package:tiktok_clone/BottomNavigation/MyProfile/redeem_history.dart';
import 'package:tiktok_clone/Chat/chat_page.dart';
import 'package:tiktok_clone/Screens/add_music.dart';
import 'package:tiktok_clone/Screens/audio.dart';
import 'package:tiktok_clone/Screens/user_profile.dart';

class PageRoutes {
  static const String loginNavigator = 'login_navigator';
  static const String bottomNavigation = 'bottom_navigation';
  static const String followersPage = 'followers_page';
  static const String helpPage = 'help_page';
  static const String tncPage = 'tnc_page';
  static const String searchPage = 'search_page';
  static const String addVideoPage = 'add_video_page';
  static const String addVideoFilterPage = 'add_video_filter_page';
  static const String postInfoPage = 'post_info_page';
  static const String userProfilePage = 'user_profile_page';
  static const String chatPage = 'chat_page';
  static const String morePage = 'more_page';
  static const String videoOptionPage = 'video_option_page';
  static const String verifiedBadgePage = 'verified_badge_page';
  static const String languagePage = 'language_page';
  static const String redeemCoins = 'redeemCoins';
  static const String redeemHistory = 'redeemHistory';
  static const String audio = 'audio';
  static const String addMusic = 'addMusic';

  Map<String, WidgetBuilder> routes() {
    return {
      loginNavigator: (context) => LoginNavigator(),
      bottomNavigation: (context) => BottomNavigation(),
      followersPage: (context) => FollowersPage(),
      helpPage: (context) => HelpPage(),
      tncPage: (context) => TnC(),
      searchPage: (context) => SearchUsers(),
      addVideoPage: (context) => AddVideo(),
      addVideoFilterPage: (context) => AddVideoFilter(),
      postInfoPage: (context) => PostInfo(),
      userProfilePage: (context) => UserProfilePage(),
      chatPage: (context) => ChatPage(),
      morePage: (context) => MorePage(),
      videoOptionPage: (context) => VideoOptionPage(),
      verifiedBadgePage: (context) => BadgeRequest(),
      languagePage: (context) => ChangeLanguagePage(),
      redeemCoins: (context) => RedeemCoins(),
      redeemHistory: (context) => RedeemHistory(),
      audio: (context) => Audio(),
      addMusic: (context) => AddMusic(),
    };
  }
}
