List<Map> categoryList = [
  {'photo': 'images/category/fashiongirl.jpg', 'category': 'Women'},
  {'photo': 'images/category/fashionman.jpg', 'category': 'Men'},
  {'photo': 'images/category/smartphones.jpg', 'category': 'Smartphone'},
  {'photo': 'images/category/computers.jpg', 'category': 'Computer'},
  {'photo': 'images/category/fashionkid.jpg', 'category': 'Kids'},
  {'photo': 'images/category/sport.jpg', 'category': 'Sport'},
  {'photo': 'images/category/health.jpg', 'category': 'Health'},
  {'photo': 'images/category/makeup.jpg', 'category': 'Makeup'},
];


//ListView(
//children: <Widget>[
//Container(
//height: 200.0,
//child: ImageSilder(),
//),
//Card(
//child: Column(
//mainAxisAlignment: MainAxisAlignment.start,
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Text("Product Name"),
//),
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Text("Rs. 300"),
//)
//],
//),
//),
//Card(
//child: Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: <Widget>[
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: FlatButton(
//onPressed: () {},
//color: Colors.green,
//child: Row(
//children: <Widget>[
//Text(
//'4.2',
//style: TextStyle(color: white),
//),
//Icon(
//Icons.star,
//color: white,
//)
//],
//),
//),
//),
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Text('845 Sale',
//style: TextStyle(
//color: grey, fontWeight: FontWeight.w500)),
//)
//],
//),
//),
//Card(
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.stretch,
//children: <Widget>[
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Text(
//"Detail Product",
//style: TextStyle(
//fontWeight: FontWeight.w700,
//color: grey,
//fontSize: 18.0),
//),
//),
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Text("Detail Here"),
//)
//],
//),
//),
//Card(
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Text(
//"Description",
//style: TextStyle(
//color: grey,
//fontWeight: FontWeight.w700,
//fontSize: 18.0),
//),
//),
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Text(
//"Description Here",
//maxLines: 6,
//),
//),
//Container(
//alignment: Alignment.center,
//child: Padding(
//padding: const EdgeInsets.all(8.0),
//child: Text(
//"View More",
//style: TextStyle(color: blue),
//textAlign: TextAlign.center,
//),
//))
//],
//),
//),
//Card(
//child: Column(
//children: <Widget>[
/////top reviews/view all column
//Row(
//mainAxisAlignment: MainAxisAlignment.spaceBetween,
//children: <Widget>[
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Text(
//"Reviews",
//style: TextStyle(
//fontWeight: FontWeight.w700,
//color: Colors.black54,
//fontSize: 16.0),
//),
//),
//Padding(
//padding: const EdgeInsets.all(8.0),
//child: Row(
//children: <Widget>[
//Text(
//"View All",
//style: TextStyle(color: blue),
//),
//Icon(Icons.navigate_next)
//],
//),
//)
//],
//),
//
/////Rating avg,star,count
//Column(
//children: <Widget>[
//Padding(
//padding: const EdgeInsets.all(3.0),
//child: Text(
//"4.0",
//style: TextStyle(
//fontWeight: FontWeight.bold,
//fontSize: 30.0,
//fontStyle: FontStyle.italic),
//),
//),
//Padding(
//padding: const EdgeInsets.only(top: 8.0),
//child: Row(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//Icon(
//Icons.star,
//color: Colors.yellow[700],
//),
//Icon(
//Icons.star,
//color: Colors.yellow[700],
//),
//Icon(
//Icons.star,
//color: Colors.yellow[700],
//),
//Icon(
//Icons.star,
//color: Colors.yellow[700],
//),
//Icon(
//Icons.star,
//color: Colors.grey,
//),
//],
//),
//),
//Padding(
//padding: const EdgeInsets.only(bottom: 8.0),
//child: Text(
//"350",
//style: TextStyle(color: grey),
//),
//)
//],
//),
//
//Padding(
//padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//child: SizedBox(
//height: 2.0,
//child: Container(
//color: grey,
//),
//),
//),
//ListView.separated(
//shrinkWrap: true,
//itemBuilder: (context, index) {
//return ListTile(
//title: Row(
//children: <Widget>[
//Row(
//children: <Widget>[
//Icon(
//Icons.star,
//color: Colors.yellow[700],
//),
//Icon(
//Icons.star,
//color: Colors.yellow[700],
//),
//Icon(
//Icons.star,
//color: Colors.yellow[700],
//),
//Icon(
//Icons.star,
//color: Colors.yellow[700],
//),
//Icon(
//Icons.star,
//color: Colors.grey,
//),
//],
//),
//Text("18 Nov 2019")
//],
//),
//subtitle: Text(
//"Review comments here",
//style: TextStyle(color: grey, fontSize: 15.0),
//),
//);
//},
//separatorBuilder: (context, index) {
//return Padding(
//padding: const EdgeInsets.symmetric(horizontal:8.0),
//child: Divider(
//color: grey,
//),
//);
//},
//itemCount: 5),
//],
//),
//)
//],
//))
