import 'package:flutter/material.dart';

class NetflixClone extends StatelessWidget {
  double _heightOfScreen;
  double _widthOfScreen;
  @override
  Widget build(BuildContext context) {
    _widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _buildAppBar,
      extendBodyBehindAppBar: true,
      body: _buildBody,
      bottomNavigationBar: _bottom,
    );
  }

  get _buildAppBar{
    return AppBar(
      leading: Image.network('https://www.jing.fm/clipimg/full/39-394582_netflix-app-logo-png-netflix-n-logo.png'),
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Text("TV Shows"),
            SizedBox(width: 10,),
            Text("Movies"),
            SizedBox(width: 10,),
            Text("Category"),
          ],
        ),
      ),
      backgroundColor: Colors.black38,
      elevation: 0.0,
    );
  }

//  get _buildBody{
//    String pic_1 = 'https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/89058/93685/Joker-2019-Final-Style-steps-Poster-buy-original-movie-posters-at-starstills__62518.1572351165.jpg?c=2?imbypass=on';
//    return Container(
//      alignment: Alignment.center,
//      color: Colors.yellow,
//      child: _buildCircleImage(pic_1),
//    );
//  }

  get _buildBody{
    return Container(
      color: Colors.black54,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildBanner,
            _buildRow1,
            _buildRow2,
            _buildRow3
          ],
        ),
      ),
    );
  }

  get _buildBanner{
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        _buildBannerBackgroud,
        _buildCoverShadow,
        _buildDesc
      ],
    );
  }

  get _buildBannerBackgroud{
    String pic = "https://creativereview.imgix.net/content/uploads/2019/12/joker_full.jpg?auto=compress,format&q=60&w=1012&h=1500";
    return InkWell(
      onTap: () => print("Banner Bg"),
      child: Container(
        height: 480,
        width: _widthOfScreen,
        color: Colors.red,
        child: Image.network(pic, fit: BoxFit.cover,),
      ),
    );
  }
  get _buildCoverShadow{
    return Container(
      width: _widthOfScreen,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0.2, 1],
          colors: [
            Colors.black,
            Colors.black.withOpacity(0.0)
          ],
        )
      ),
    );
  }
  get _buildDesc{
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: _widthOfScreen,
      height: 150,
      child: Column(
        children: <Widget>[
          Text("Lavish • Violent • Fantasy TV • Teen • Action • Drama", style: TextStyle(fontSize: 12, color: Colors.white),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildListButton,
              _buildPlayButton,
              _buildInfoButton
            ],
          )
        ],
      ),
    );
  }
  get _buildListButton{
    return InkWell(
      onTap: () => print("my list clicked"),
      child: Container(
        width: 80,
        height: 50,
        child: Column(
          children: <Widget>[
            Icon(Icons.add, color: Colors.white,),
            Text("My List", style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
  get _buildPlayButton{
    return RaisedButton(
      child: Row(
        children: <Widget>[
          Icon(Icons.play_arrow),
          Text("Play"),
        ],
      ),
      onPressed: () => print("Played"),
    );
  }
  get _buildInfoButton{
    return InkWell(
      onTap: () => print("my list clicked"),
      child: Container(
        width: 80,
        height: 50,
        child: Column(
          children: <Widget>[
            Icon(Icons.info_outline, color: Colors.white,),
            Text("My List", style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }

  get _buildRow1{
    String pic1 = "https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/89058/93685/Joker-2019-Final-Style-steps-Poster-buy-original-movie-posters-at-starstills__62518.1572351165.jpg?c=2?imbypass=on";
    String pic2 = "https://i.ebayimg.com/images/g/clIAAOSwAHFeQqye/s-l640.jpg";
    String pic3 = "https://www.homewallmurals.co.uk/ekmps/shops/allwallpapers/images/captain-marvel-epic-61x91-5cm-movie-poster-31596-1-p.jpg";
    String pic4 = "https://images-na.ssl-images-amazon.com/images/I/51k1da28EmL._AC_.jpg";
    String pic5 = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrC875xwNgysePSWaba7KLDQho5poWChPSKg&usqp=CAU";
    return Container(
      height: 200,
      alignment: Alignment.center,
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            _buildCircleImage(pic1),
            _buildCircleImage(pic2),
            _buildCircleImage(pic3),
            _buildCircleImage(pic4),
            _buildCircleImage(pic5),
          ],
        ),
      ),
    );
  }
  get _buildRow2{
    String pic1 = "https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/89058/93685/Joker-2019-Final-Style-steps-Poster-buy-original-movie-posters-at-starstills__62518.1572351165.jpg?c=2?imbypass=on";
    String pic2 = "https://i.ebayimg.com/images/g/clIAAOSwAHFeQqye/s-l640.jpg";
    String pic3 = "https://www.homewallmurals.co.uk/ekmps/shops/allwallpapers/images/captain-marvel-epic-61x91-5cm-movie-poster-31596-1-p.jpg";
    String pic4 = "https://images-na.ssl-images-amazon.com/images/I/51k1da28EmL._AC_.jpg";
    String pic5 = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrC875xwNgysePSWaba7KLDQho5poWChPSKg&usqp=CAU";
    String pic6 = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9ZQSmsWVXiq86nmWs9WggRY4uROoIk58Ofg&usqp=CAU";
    String pic7 = "https://www.mauvais-genres.com/21970/logan-movie-poster-style-c-adv-29x41-in-2017-james-mangold-hugh-jackman.jpg";
    return Container(
      height: 200,
      alignment: Alignment.center,
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            _buildCircleImage(pic4),
            _buildCircleImage(pic5),
            _buildCircleImage(pic6),
            _buildCircleImage(pic4),
            _buildCircleImage(pic5),
          ],
        ),
      ),
    );
  }
  get _buildRow3{
    String pic1 = "https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1280x1280/products/89058/93685/Joker-2019-Final-Style-steps-Poster-buy-original-movie-posters-at-starstills__62518.1572351165.jpg?c=2?imbypass=on";
    String pic2 = "https://i.ebayimg.com/images/g/clIAAOSwAHFeQqye/s-l640.jpg";
    String pic3 = "https://www.homewallmurals.co.uk/ekmps/shops/allwallpapers/images/captain-marvel-epic-61x91-5cm-movie-poster-31596-1-p.jpg";
    String pic4 = "https://images-na.ssl-images-amazon.com/images/I/51k1da28EmL._AC_.jpg";
    String pic5 = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTrC875xwNgysePSWaba7KLDQho5poWChPSKg&usqp=CAU";
    String pic6 = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ9ZQSmsWVXiq86nmWs9WggRY4uROoIk58Ofg&usqp=CAU";
    String pic7 = "https://www.mauvais-genres.com/21970/logan-movie-poster-style-c-adv-29x41-in-2017-james-mangold-hugh-jackman.jpg";
    return Container(
      height: 200,
      alignment: Alignment.center,
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            _buildCircleImage(pic6),
            _buildCircleImage(pic7),
            _buildCircleImage(pic4),
            _buildCircleImage(pic4),
            _buildCircleImage(pic5),
          ],
        ),
      ),
    );
  }

  _buildCircleImage(String img){
    return Container(
      width: 150,
      height: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0, 0),
            blurRadius: 5,
            spreadRadius: 5
          )
        ],
        color: Colors.pink,
        image: DecorationImage(
//          alignment: Alignment.topCenter,
          image: NetworkImage(img),
          fit: BoxFit.cover
        )
      ),
    );
  }

  get _bottom{
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            color: Colors.white,
            onPressed: () => print("Home"),
          ),
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () => print("Search"),
          ),
          IconButton(
            icon: Icon(Icons.play_circle_outline),
            color: Colors.white,
            onPressed: () => print("Play"),
          ),
          IconButton(
            icon: Icon(Icons.file_download),
            color: Colors.white,
            onPressed: () => print("Downloads"),
          ),
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            onPressed: () => print("Downloads"),
          )
        ],
      ),
    );
  }

}
