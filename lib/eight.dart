import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

import 'main.dart';

class eight extends StatefulWidget {
  int index;
  eight(this.index);
  @override
  _eightState createState() => _eightState();
}

class _eightState extends State<eight> {
  @override
  List<String> name7=['             National Street Food Festival',
     '                              The Grub Fest',
    '                         Goa Food and Culture Fest',
    '                            Sattvik Food Festival'];
  List<String> image7=["pic/nsf.jpg","pic/tgf.jpg","pic/gfc.webp","pic/sff.jpg"];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(names[widget.index],style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.amber),),
      ),
        body: GridView.builder(
          itemCount: name7.length,
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
                              return s7(index, name7,image7);
                            },
                          ));
                        }
                      else if(index==1)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return grub(index, name7,image7);
                          },
                        ));
                      }
                      else if(index==2)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return goa(index, name7,image7);
                          },
                        ));
                      }
                      else if(index==3)
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return sat(index, name7,image7);
                          },
                        ));
                      }

                    },
                    child:  Marquee(
                      child:Text(name7[index],style: TextStyle(fontSize: 15,color: Colors.amber,fontWeight: FontWeight.bold)),
                      textDirection : TextDirection.ltr,
                      animationDuration: Duration(seconds: 2),
                      pauseDuration: Duration(milliseconds: 0000),
                      directionMarguee: DirectionMarguee.oneDirection,
                    ),
                  ),
                ),
                child: Image.asset(
                  image7[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ));
  }
}
class s7 extends StatefulWidget {
  int index; List<String> name7;List<String> image7;
  s7(this.index,this.name7,this.image7);
  @override
  _s7State createState() => _s7State();
}

class _s7State extends State<s7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name7[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image7[widget.index],
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
              widget.name7[widget.index],
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
            child: Text("Food Safety and Standards Authority of India (FSSAI) in association with National Association of Street Vendors of India (NASVI). is organising “National Street Food Festival” 2018. The three day long festival will be held from 12th to 14th January, 2018 at Jawahar Lal Nehru Stadium, New Delhi from 10:00am to 10:00pm.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}


class grub extends StatefulWidget {
  int index;List<String> name7; List<String> image7;
  grub(this.index,this.name7,this.image7);



  @override
  _grubState createState() => _grubState();
}class _grubState extends State<grub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name7[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image7[widget.index],
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
              widget.name7[widget.index],
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
            child: Text("Grub Fest is one of the biggest food festivals in India. It was founded by four people named Aman Kumar, Arjun Jain, Chaitanya Mathur, and Mani Singh Cheema in 2012. In 2016, there were around 70 restaurants that took part in the festival. It not only welcomes big names like Karim’s, Koyla Kebab but also allows several food trucks to take part in this popular event.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}
class goa extends StatefulWidget {
  int index; List<String> name7;List<String> image7;
  goa(this.index,this.name7,this.image7);



  @override
  _goaState createState() => _goaState();
}

class _goaState extends State<goa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name7[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image7[widget.index],
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
              widget.name7[widget.index],
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
            child: Text("The Goa Food and Cultural Festival promises to be a celebration of authentic Goan cuisine along with a healthy dose of the state’s vibrant folklore and heritage. With over 70 stalls featuring vegetarian and non-vegetarian delicacies, traditional and modern sweets, and several other much-loved delicacies the festival showcases traditoonal Goan cuisine that goes beyond the mundane fish curry and rice. Live performances by popular bands like Indus Creed and Parikrama as well as fireworks, DJ nights and surprise prizes are up for grabs too.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}


class sat extends StatefulWidget {
  int index;List<String> name7;List<String> image7;
  sat(this.index,this.name7,this.image7);
  @override
  _satState createState() => _satState();
}

class _satState extends State<sat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          widget.name7[widget.index],
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Image.asset(
              widget.image7[widget.index],
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
              widget.name7[widget.index],
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
            child: Text("Sattvik food festival, which is organised by the Society for Research and Initiatives for Sustainable Technologies and Institutions (SRISTI), will celebrate traditional food, highlight conservation of agro-biodiversity and promote demands for the rare nutritional crops. The event will be held from December 22 to 25.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.amber),),
          ),
        ],
      ),
    );
  }
}





