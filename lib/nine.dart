import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

import 'main.dart';

class nine extends StatefulWidget {
  int index;
  nine(this.index);
  @override
  _nineState createState() => _nineState();
}

class _nineState extends State<nine> {
  @override
  List<String> name8=['                        Water Theme Parks'
    ,'                                  Zoological Theme Parks'
    ,'                                Historical Theme Parks'
    ,'                                Regional Theme Parks'];
  List<String> image8=["pic/wtp.jpg","pic/ztp.jpg","pic/htp.jpg","pic/rtp.jpg"];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(names[widget.index],style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),),
      ),
        body: GridView.builder(
          itemCount: name8.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              child: GridTile(
                footer: Container(
                  height: 20,
                  color: Colors.deepPurple,
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      if(index==0)
                        {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return s8(index, name8,image8);
                            },
                          ));
                        }
                      else  if(index==1)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return zoo(index, name8,image8);
                          },
                        ));
                      }
                      else  if(index==2)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return hist(index, name8,image8);
                          },
                        ));
                      }
                      else  if(index==3)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return reg(index, name8,image8);
                          },
                        ));
                      }

                    },
                    child:  Marquee(
                      child:Text(name8[index],style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold)),
                      textDirection : TextDirection.ltr,
                      animationDuration: Duration(seconds: 2),
                      pauseDuration: Duration(milliseconds: 0000),
                      directionMarguee: DirectionMarguee.oneDirection,
                    ),
                  ),
                ),
                child: Image.asset(
                  image8[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));
  }
}
class s8 extends StatefulWidget {
  List<String> image8;
  List<String> name8;
  int index;
  s8(this.index,this.name8,this.image8);
  @override
  _s8State createState() => _s8State();
}

class _s8State extends State<s8> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name8[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image8[widget.index],
              fit: BoxFit.cover,
              height: 200,
              width: 400,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),            margin: EdgeInsets.all(5),
            height: 50,
            width: 400,
            alignment: Alignment.center,
            child:Text(
              widget.name8[widget.index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber),),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),            margin: EdgeInsets.all(5),
            padding: EdgeInsets.fromLTRB(5, 5, 50, 350),
            height: 500,
            width: 400,
            alignment: Alignment.center,
            child: Text("A water park or waterpark is an amusement park that features water play areas such as swimming pools, water slides, splash pads, water playgrounds, and lazy rivers, as well as areas for floating, bathing, swimming, and other barefoot environments. Modern water parks may also be equipped with some type of artificial surfing or bodyboarding environment, such as a wave pool or flowrider.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}

class zoo extends StatefulWidget {
  int index;List<String> name8;List<String> image8;
  zoo(this.index,this.name8,this.image8);



  @override
  _zooState createState() => _zooState();
}

class _zooState extends State<zoo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name8[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image8[widget.index],
              fit: BoxFit.cover,
              height: 200,
              width: 400,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),            margin: EdgeInsets.all(5),
            height: 50,
            width: 400,
            alignment: Alignment.center,
            child:Text(
              widget.name8[widget.index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber),),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),            margin: EdgeInsets.all(5),
            padding: EdgeInsets.fromLTRB(5, 5, 50, 350),
            height: 500,
            width: 400,
            alignment: Alignment.center,
            child: Text("An animal theme park, also known as a zoological theme park, is a combination of an amusement park and a zoo, mainly for entertainment, amusement, and commercial purposes. Many animal theme parks combine classic theme park elements, such as themed entertainment and amusement rides, with classic zoo elements such as live animals confined within enclosures for display. Many times, live animals are utilized and featured as part of amusement rides and attractions found at animal theme parks.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}


class hist extends StatefulWidget {
  int index; List<String> name8; List<String> image8;
  hist(this.index,this.name8,this.image8);
  @override
  _histState createState() => _histState();
}

class _histState extends State<hist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name8[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image8[widget.index],
              fit: BoxFit.cover,
              height: 200,
              width: 400,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),            margin: EdgeInsets.all(5),
            height: 50,
            width: 400,
            alignment: Alignment.center,
            child:Text(
              widget.name8[widget.index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber),),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),            margin: EdgeInsets.all(5),
            padding: EdgeInsets.fromLTRB(5, 5, 50, 350),
            height: 500,
            width: 400,
            alignment: Alignment.center,
            child: Text("Since the 19th Century, Americans have flocked to amusement parks to explore family-friendly entertainment. In fact, many of us can conjure up childhood memories of the park’s signature snacks or the cheerful call of the carousel.The modern theme park springs from the centuries old concept of a “pleasure garden,” which is an area of public land set aside for recreation and entertainment purposes. In America, theme parks grew to include amusement parks, bandstands, concert halls, and zoos. Over the centuries, they have shaped our individual memories and the national identity of America.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}

class reg extends StatefulWidget {
  int index; List<String> name8; List<String> image8;
  reg(this.index,this.name8,this.image8);

  @override
  _regState createState() => _regState();
}

class _regState extends State<reg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name8[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image8[widget.index],
              fit: BoxFit.cover,
              height: 200,
              width: 400,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),            margin: EdgeInsets.all(5),
            height: 50,
            width: 400,
            alignment: Alignment.center,
            child:Text(
              widget.name8[widget.index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.amber),),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(color: Colors.black38,width: 5),
              borderRadius: BorderRadius.circular(10),
            ),            margin: EdgeInsets.all(5),
            padding: EdgeInsets.fromLTRB(5, 5, 50, 350),
            height: 500,
            width: 400,
            alignment: Alignment.center,
            child: Text("An amusement park is a park that features various attractions, such as rides and games, as well as other events for entertainment purposes. A theme park is a type of amusement park that bases its structures and attractions around a central theme, often featuring multiple areas with different themes. Unlike temporary and mobile funfairs and carnivals, amusement parks are stationary and built for long-lasting operation. They are more elaborate than city parks and playgrounds, usually providing attractions that cater to a variety of age groups. While amusement parks often contain themed areas, theme parks place a heavier focus with more intricately-designed themes that revolve around a particular subject or group of subjects.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}

