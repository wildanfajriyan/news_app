import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('berita'.toUpperCase()),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      bottom: TabBar(
          indicatorColor: Colors.yellow.shade600,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 4,
          labelColor: Colors.white,
          labelStyle: TextStyle(fontWeight: FontWeight.w500),
          labelPadding: EdgeInsets.symmetric(vertical: 10),
          unselectedLabelColor: Colors.white,
          tabs: [
            Text('berita utama'.toUpperCase()),
            Text('terbaru'.toUpperCase())
          ]),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}
