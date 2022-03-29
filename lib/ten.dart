import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

import 'main.dart';

class ten extends StatefulWidget {
  int index;
  ten(this.index);
  @override
  _tenState createState() => _tenState();
}
class _tenState extends State<ten> {
  @override
  List<String> name9=['                      Television Serials           ',
    '                                     Animated Series   ',
    '                               Reality TV             ',
    '                                 Sitcom              '];
  List<String> image9=["pic/ts.jpg","pic/as.jpg","pic/rt.jpg","pic/st.jpg"];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(names[widget.index],style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),),
      ),
        body: GridView.builder(
          itemCount: name9.length,
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
                              return s9(index, name9,image9);
                            },
                          ));
                        }
                      else if(index==1)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ani(index, name9,image9);
                          },
                        ));
                      }
                      else if(index==2)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return real(index, name9,image9);
                          },
                        ));
                      }
                      else if(index==3)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return sit(index, name9,image9);
                          },
                        ));
                      }

                    },
                    child:  Marquee(
                      child:Text(name9[index],style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold)),
                      textDirection : TextDirection.ltr,
                      animationDuration: Duration(seconds: 2),
                      pauseDuration: Duration(milliseconds: 0000),
                      directionMarguee: DirectionMarguee.oneDirection,
                    ),
                  ),
                ),
                child: Image.asset(
                  image9[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));

  }
}
class s9 extends StatefulWidget {
  int index;
  List<String> name9;
  List<String> image9;
  s9(this.index,this.name9,this.image9);
  @override
  _s9State createState() => _s9State();
}

class _s9State extends State<s9> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name9[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image9[widget.index],
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
              widget.name9[widget.index],
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
            child: Text("Television shows are most often scheduled for broadcast well ahead of time and appear on electronic guides or other TV listings, but streaming services often make them available for viewing anytime.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}

class ani extends StatefulWidget {
  int index;List<String> name9;List<String> image9;
  ani(this.index,this.name9,this.image9);
  @override
  _aniState createState() => _aniState();
}

class _aniState extends State<ani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name9[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image9[widget.index],
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
              widget.name9[widget.index],
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
            child: Text("An animated series is a set of animated works with a common series title, usually related to one another. These episodes should typically share the same main characters, some different secondary characters and a basic theme. Series can have either a finite number of episodes like a miniseries, a definite end, or be open-ended, without a predetermined number of episodes. They can be broadcast on television, shown in movie theatres, released direct-to-video or on the internet. Like animated films, animated series can be of a wide variety of genres and can also have different demographic target audiences, from males to females ranging children to adults.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}

class real extends StatefulWidget {
  int index; List<String> name9; List<String> image9;
  real(this.index,this.name9,this.image9);
  @override
  _realState createState() => _realState();
}

class _realState extends State<real> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name9[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image9[widget.index],
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
              widget.name9[widget.index],
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
            child: Text("Reality television is a genre of television programming that documents purportedly unscripted real-life situations, often starring unknown people rather than professional actors. Reality television emerged as a distinct genre in the early 1990s with shows such as The Real World, then achieved prominence in the early 2000s with the success of the series Survivor, Idols, and Big Brother, all of which became global franchises.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}


class sit extends StatefulWidget {
  int index; List<String> name9; List<String> image9;
  sit(this.index,this.name9,this.image9);
  @override
  _sitState createState() => _sitState();
}

class _sitState extends State<sit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name9[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image9[widget.index],
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
              widget.name9[widget.index],
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
            child: Text("A sitcom, clipping for situational comedy (situation comedy in the U.S.), is a genre of comedy centered on a fixed set of characters who mostly carry over from episode to episode. Sitcoms can be contrasted with sketch comedy, where a troupe may use new characters in each sketch, and stand-up comedy, where a comedian tells jokes and stories to an audience. Sitcoms originated in radio, but today are found mostly on television as one of its dominant narrative forms.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}


