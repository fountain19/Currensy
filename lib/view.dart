import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/data.dart';
import 'package:test2/model.dart';
import 'package:test2/provider.dart';



class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {


  hitApi()async{
   Curency curency =await Provider.of<Data>(context).hitApi();
   Provider.of<Data>(context,listen: false).setData(curency);
  }
  @override
  Widget build(BuildContext context) {

    hitApi();
    return Scaffold(
      appBar: AppBar(
        title: Text('View page'),
      ),
      body:
     Padding(
       padding: EdgeInsets.symmetric(horizontal: 20),
       child: Center(
         child: Container(
                  child: Column(
                    children: [
                    Container(
                      child: Column(
                        children: [
                          Text(Provider.of<Data>(context).getData().base !=null ?
                         'Base : ${Provider.of<Data>(context).getData().base}':''),
                          Text(Provider.of<Data>(context).getData().date != null ?
                          'date : ${Provider.of<Data>(context).getData().date}':''),
                          Text(Provider.of<Data>(context).getData().rates.toString() != null ?
                          'rate : ${Provider.of<Data>(context).getData().rates.aUD.toString()}': '')

                        ],
                      ),
                    ),
                      SizedBox(height: 10,),
                      Container(
                        child: Column(
                          children: [
                            Text(Provider.of<Data>(context).getData().base !=null ?
                            'Base : ${Provider.of<Data>(context).getData().base}':''),
                            Text(Provider.of<Data>(context).getData().date != null ?
                            'date : ${Provider.of<Data>(context).getData().date}':''),
                            Text(Provider.of<Data>(context).getData().rates.toString() != null ?
                            'rate : ${Provider.of<Data>(context).getData().rates.bRL.toString()}': '')

                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Column(
                          children: [
                            Text(Provider.of<Data>(context).getData().base !=null ?
                            'Base : ${Provider.of<Data>(context).getData().base}':''),
                            Text(Provider.of<Data>(context).getData().date != null ?
                            'date : ${Provider.of<Data>(context).getData().date}':''),
                            Text(Provider.of<Data>(context).getData().rates.toString() != null ?
                            'rate : ${Provider.of<Data>(context).getData().rates.bGN.toString()}': '')

                          ],
                        ),
                      ),
                    ],)),
       ),
     ));}}


