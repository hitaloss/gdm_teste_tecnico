import 'package:flutter/material.dart';

import 'package:gdm_teste_tecnico/widgets/my_app_bar.dart';
import 'package:gdm_teste_tecnico/widgets/sale_card.dart';
import 'package:gdm_teste_tecnico/widgets/filters.dart';
import 'package:gdm_teste_tecnico/widgets/motel.dart';

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _StickyHeaderDelegate({required this.child});

  @override
  double get minExtent => 50;
  @override
  double get maxExtent => 50;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class MotelsScreen extends StatelessWidget {
  const MotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 242, 8, 45),
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(40), child: MyAppBar())),
      backgroundColor: const Color.fromARGB(255, 248, 249, 251),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: null,
              background: SaleCard(),
            ),
          ),
          SliverPersistentHeader(
              pinned: true,
              delegate: _StickyHeaderDelegate(child: const Filters())),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 10, (ctx, index) {
            return const Motel();
          }))
        ],
      ),
    );
  }
}
