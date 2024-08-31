import 'package:flutter/material.dart';
import 'package:honeybee_time_mobile/screens/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:honeybee_time_mobile/screens/create_your_organization/create_your_organization.dart';
import 'package:honeybee_time_mobile/screens/get_started_organization/get_started_organization.dart';
import 'package:honeybee_time_mobile/screens/my_account/my_account.dart';
import 'package:honeybee_time_mobile/screens/project_work_orders/project_work_orders.dart';
import 'package:honeybee_time_mobile/screens/project_work_orders/widgets/task_page/task_page.dart';
import 'package:honeybee_time_mobile/screens/signin/signin.dart';
import 'package:honeybee_time_mobile/screens/welcome/welcome.dart';

final Map<String, WidgetBuilder> routes = {
  Welcome.routeName: (_) => const Welcome(),
  SignIn.routeName: (_) => const SignIn(),
  GetStartedOrganization.routeName: (_) => const GetStartedOrganization(),
  CreateYourOrganization.routeName: (_) => const CreateYourOrganization(),
  BottomNavigationScreen.routeName: (_) => const BottomNavigationScreen(),
  MyAccount.routeName: (_) => const MyAccount(),
  ProjectWorkOrders.routeName: (_) => const ProjectWorkOrders(),
  TaskPage.routeName: (_) => const TaskPage(),
};
