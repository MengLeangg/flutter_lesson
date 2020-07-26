import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tutorial_day1/my_detailPage.dart';
import 'dialog.dart';

class MyListViewBuilder extends StatefulWidget {
  @override
  _MyListViewBuilderState createState() => _MyListViewBuilderState();
}

class _MyListViewBuilderState extends State<MyListViewBuilder> {
  bool tappedYes = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("The Best Movie"),
      ),
      body: _buildBody,
//      bottomNavigationBar: _buildBottom,
    );
  }
  get _buildBody{
    return Container(
      color: Colors.black26,
      child: Stack(
        children: <Widget>[
          _buildListView,
          Positioned(
            right: 20,
            bottom: 20,
            child: InkWell(
              onTap: (){
                _listScroller.animateTo(
                    0, duration: Duration(milliseconds: 400), curve: Curves.easeOut
                );
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.black.withOpacity(.5),
                child: Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ScrollController _listScroller = ScrollController();

  get _buildListView{
    return ListView.builder(
      controller: _listScroller,
      physics: BouncingScrollPhysics(),
      itemCount: movieList.length,
      itemBuilder: (context, int index){
        return _buildListItem(movieList[index]);
      }
    );
  }

  _buildListItem(Movie movie){
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: InkWell(child: CircleAvatar(backgroundImage: NetworkImage(movie.img),)),
        title: Text(movie.title),
        subtitle: Text(movie.subtitle),
        trailing: IconButton(
          icon: movie.liked ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_border),
          onPressed: () {
            print("more menu clicked");
            setState(() {
              movie.liked = !movie.liked;
            });
            print("movie.liked: ${movie.liked}");
          },
        ),
        onTap: (){
          print("ListTile clicked");
          Navigator.of(context).push(
            PageTransition(
              type: PageTransitionType.rightToLeft,
              child: MyDetailPage(movie: movie),
            )
          );
        },
        onLongPress: () async{
          final action = await Dialogs.yesAbortDialog(context, 'Delete', 'Delete this item?');
          if (action == DialogAction.yes) {
            setState(() => movieList.remove(movie));
          } else {
            setState(() => tappedYes = false);
          }
        },
//        onLongPress: (){
//          print("long Pressed");
//          setState(() {
//            movieList.remove(movie);
//          });
//        },
      ),
    );
  }

  get _buildBottom{
    return BottomAppBar(
      color: Colors.indigoAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: (){
              print("home clicked");
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: (){
              print("person clicked");
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print("menu clicked");
            },
          ),
        ],
      ),
    );
  }
}

class Movie{
  String title, subtitle, img;
  bool liked;

  Movie({this.title, this.subtitle, this.img, this.liked = false});
}

List<Movie> movieList = [
  Movie(
    liked: true,
    title: "JAILBREAK",
    subtitle: "Jailbreak (Khmer : ការពារឧក្រិដ្ឋជន) is a 2017 Cambodian action film directed by Jimmy Henderson.[2] It was released in its home country in January 2017 and made available on Netflix in May 2018.",
    img: "https://cambodia-cfc.org/wp-content/uploads/2019/10/48Evnm8qldagV5A75xGAqIo19Wb.jpg",
  ),
  Movie(
    liked: true,
    title: "Joker",
    subtitle: "Joker is a 2019 American psychological thriller film directed and produced by Todd Phillips, who co-wrote the screenplay with Scott Silver. The film, based on DC Comics characters.",
    img: "https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/89058/93685/Joker-2019-Final-Style-steps-Poster-buy-original-movie-posters-at-starstills__62518.1572351165.jpg?c=2?imbypass=on",
  ),
  Movie(
    liked: true,
    title: "Logan",
    subtitle: "Logan is a 2017 American superhero film starring Hugh Jackman as the titular character. It is the tenth film in the X-Men film series and the third and final installment in the Wolverine trilogy following X-Men Origins: Wolverine (2009) and The Wolverine (2013).",
    img: "https://www.mauvais-genres.com/21970/logan-movie-poster-style-c-adv-29x41-in-2017-james-mangold-hugh-jackman.jpg",
  ),
  Movie(
    liked: false,
    title: "Black X Widdow",
    subtitle: "Black Widow is an upcoming American superhero film based on the Marvel Comics character of the same name. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is intended to be the 24th film in the Marvel Cinematic Universe (MCU).",
    img: "https://www.joblo.com/assets/images/joblo/posters/2020/03/2EF9FAE7-B888-4DBA-868D-B4E289BAE769.jpeg",
  ),
  Movie(
    liked: false,
    title: "Hacker",
    subtitle: "Joker is a 2019 American psychological thriller film directed and produced by Todd Phillips, who co-wrote the screenplay with Scott Silver. The film, based on DC Comics characters.",
    img: "https://www.arthipo.com/image/cache/catalog/genel-tasarim/all-posters/sinema-cinema-film-postersleri/yabanci-filmler/1/pfilm1491-hacker_7cf19a97-poster-movie-film-1000x1000.jpg",
  ),
  Movie(
    liked: false,
    title: "AVENGERS ENDGAMES",
    subtitle: "Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures.",
    img: "https://images-na.ssl-images-amazon.com/images/I/71niXI3lxlL._AC_SY679_.jpg",
  ),
  Movie(
    liked: false,
    title: "MOONLIGHT",
    subtitle: "Moonlight is a 2016 American independent coming-of-age drama film written and directed by Barry Jenkins, based on Tarell Alvin McCraney's unpublished semi-autobiographical play In Moonlight Black Boys Look Blue.",
    img: "https://images-na.ssl-images-amazon.com/images/I/71rNJQ2g-EL._AC_SL1178_.jpg",
  ),
];
