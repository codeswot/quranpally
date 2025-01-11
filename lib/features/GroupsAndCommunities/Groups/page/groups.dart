import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quranpally/config/asset/app_assets.dart';
import 'package:quranpally/config/router/app_router.dart';
import 'package:quranpally/config/theme/app_colors.dart';
import 'package:quranpally/features/GroupsAndCommunities/Groups/widget/discover_wid.dart';
import 'package:quranpally/features/GroupsAndCommunities/Groups/widget/for_you_widget.dart';
import 'package:quranpally/features/GroupsAndCommunities/Groups/widget/invitation_widget.dart';
import 'package:quranpally/features/GroupsAndCommunities/Groups/widget/your_groups_wid.dart';
import 'package:quranpally/shared/widgets/app_icon.dart';
import 'package:quranpally/shared/widgets/app_image.dart';

@RoutePage()
class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _GroupsPageView(),
      backgroundColor: AppColors.colorFFFFFF,
    );
  }
}

class _GroupsPageView extends StatefulWidget {
  const _GroupsPageView();

  @override
  State<_GroupsPageView> createState() => _GroupsPageViewState();
}

class _GroupsPageViewState extends State<_GroupsPageView> {
  int indexx = 0;
  @override
  Widget build(BuildContext context) {
    final textIndex = ['Your groups', 'DIcover', 'For you', 'Invitation'];
    return DefaultTabController(
      length: textIndex.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Communities',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            AppIcon(
              onTapped: () {
                context.router.push(
                  const CommunitiesPageRoute(),
                );
              },
              child: const AppImageWidget(reference: AppAssets.addIcon),
            ),
            SizedBox(width: 10.w),
            AppIcon(
              onTapped: () {},
              child: const AppImageWidget(reference: AppAssets.searchIcon2),
            ),
            SizedBox(width: 20.w),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TabBar(
                dividerColor: AppColors.colorFFFFFF,
                indicator: BoxDecoration(
                  color: AppColors.colorFF8400.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                labelColor: AppColors.colorFF8400,
                unselectedLabelColor: AppColors.color181C32,
                tabs: [
                  Tab(
                    child: Text(
                      'Your groups',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Dicover',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'For you',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Invitation',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  YourGroupsWidget(),
                  DiscoverWidget(),
                  ForYouWidget(),
                  InvitationWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
