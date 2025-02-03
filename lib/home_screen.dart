import 'package:flutter/material.dart';
import 'package:news_app/detail_screen.dart';
import 'package:news_app/model/news_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
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
        ),
        body: TabBarView(children: [
          ListView.builder(
            itemBuilder: (context, index) {
              final NewsData news = newList[index];
              return SingleChildScrollView(
                child: Container(
                  color: Colors.grey.shade200,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(
                              news: news,
                            );
                          }));
                        },
                        child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(news.image))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Column(
                                  children: [
                                    Text(
                                      news.title,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 12),
                                    Text(
                                      news.summary,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(height: 12),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              news.publishedTime,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w200,
                                                  fontSize: 12),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              news.category,
                                              style: TextStyle(
                                                  color: Colors.green.shade900,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.share,
                                                size: 18,
                                              ),
                                            ),
                                            BookmarkButton()
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: newList.length,
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              final NewsData news = newList.reversed.toList()[index];
              return SingleChildScrollView(
                child: Container(
                  color: Colors.grey.shade200,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(
                              news: news,
                            );
                          }));
                        },
                        child: Container(
                          color: Colors.white,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(news.image))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Column(
                                  children: [
                                    Text(
                                      news.title,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 12),
                                    Text(
                                      news.summary,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                      textAlign: TextAlign.justify,
                                    ),
                                    SizedBox(height: 12),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              news.publishedTime,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w200,
                                                  fontSize: 12),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              news.category,
                                              style: TextStyle(
                                                  color: Colors.green.shade900,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.share,
                                                size: 18,
                                              ),
                                            ),
                                            BookmarkButton()
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: newList.length,
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Akun',
          ),
        ]),
      ),
    );
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({super.key});

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isBookmark = !isBookmark;
        });
      },
      icon: Icon(
        isBookmark ? Icons.bookmark : Icons.bookmark_border,
        size: 18,
      ),
    );
  }
}
