import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frist_pages/core/utils/extension.dart';
import 'package:frist_pages/features/dashbord/controller/cubit/dashboard_controller_dart_cubit.dart';
import 'package:frist_pages/features/dashbord/modules-users/view/page/userPage.dart';

class dashboardpage extends StatelessWidget {
  final List<String> titles = const ['Home', 'Users', 'services'];

  const dashboardpage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => DashboardControllerDartCubit(),
        child: BlocBuilder<DashboardControllerDartCubit,
            DashboardControllerDartState>(builder: (context, state) {
          DashboardControllerDartCubit controller =
              context.read<DashboardControllerDartCubit>();
          return SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: context.forgroundColor,
                  title: Text(titles[controller.sellectTabIndex]),
                  actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'registeration');
                        },
                        icon: Icon(CupertinoIcons.add))
                  ],
                ),
                body: PageView(
                  controller: controller.pagecontroller,
                  onPageChanged: controller.onChangetabIndex,
                  children: const [
                    Text('Home'),
                    userpage(),
                    Text('Services'),
                  ],
                ),
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: controller.sellectTabIndex,
                  onTap: controller.onChangetabIndex,
                  unselectedLabelStyle:
                      const TextStyle(fontSize: 15, color: Colors.red),
                  showSelectedLabels: true,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: 'Users'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.category), label: 'Service'),
                  ],
                )),
          );
        }));
  }
}
