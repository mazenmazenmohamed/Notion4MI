import 'package:bmi_calculator/layout/background.dart';
import 'package:bmi_calculator/layout/checkbox.dart';
import 'package:bmi_calculator/layout/cubit/states.dart';
import 'package:bmi_calculator/layout/listbuilder.dart';
import 'package:bmi_calculator/layout/numberdlist.dart';
import 'package:bmi_calculator/layout/textform.dart';
import 'package:bmi_calculator/layout/togglelist.dart';
import 'package:flutter/material.dart';
import'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:video_player/video_player.dart';
import '../../finsh_table/cross_axis_scroll.dart';
import '../../image.dart';
import '../../video.dart';
import '../bulleted.dart';
import '../workspace.dart';
class backgroundCubit extends Cubit<Backgroundstates>{
  backgroundCubit() : super(Backgroundinitialstates());
  static backgroundCubit get(context)=>BlocProvider.of(context);
  List<Map> users = [];
   var m ;
   workspace getter(workspace w){m=w;return w;}

  void addTextForm() {

       m.pageComponents[globalpagenum].liswid.insert(position + 1, TextForm());
        var x = m.pageComponents[globalpagenum] .liswid[position + 1] as TextForm;
        x.pos=position+1 ;

        for (int i = position + 2; i < m.pageComponents[globalpagenum] .liswid.length; i++) {
          if(m.pageComponents[globalpagenum] .liswid[i] is TextForm ){
            var x = m.pageComponents[globalpagenum] .liswid[i] as TextForm ;
            x .pos += 1;
          }
          if(m.pageComponents[globalpagenum] .liswid[i] is bullted ){
            var x = m.pageComponents[globalpagenum] .liswid[i] as bullted ;
            x .pos += 1;
          }
          if(m.pageComponents[globalpagenum] .liswid[i] is checkbox ){
            var x = m.pageComponents[globalpagenum] .liswid[i] as checkbox ;
            x .pos += 1;
          }
          if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
            var x = m.pageComponents[globalpagenum] .liswid[i] as NumberdList ;
            x .pos += 1;
          }
          if(m.pageComponents[globalpagenum] .liswid[i] is toggleList ){
            var x = m.pageComponents[globalpagenum] .liswid[i] as toggleList ;
            x .pos += 1;
          }
          // #add conditions for table and calender , image , audio , voice , video#
        }
    emit(BackgroundaddTextFormstate());
  }
  void addBulleted(){

    m.pageComponents[globalpagenum] .liswid.insert(position + 1, bullted());
    var x = m.pageComponents[globalpagenum] .liswid[position + 1] as bullted;
    x.pos=position+1 ;

    for (int i = position + 2; i < m.pageComponents[globalpagenum] .liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is TextForm ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as TextForm ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is bullted ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as bullted ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is checkbox ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as checkbox ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as NumberdList ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is toggleList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as toggleList ;
        x .pos += 1;
      }
      // #add conditions for table and calender , image , audio , voice , video#
    }
    emit(addBulletedat());
  }
  void addcheckBox(){


     m.pageComponents[globalpagenum] .liswid.insert(position + 1, checkbox());
    var x = m.pageComponents[globalpagenum] .liswid[position + 1] as checkbox;
    x.pos=position+1 ;
    for (int i = position + 2; i <m.pageComponents[globalpagenum] . liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is TextForm ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as TextForm ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is bullted ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as bullted ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is checkbox ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as checkbox ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as NumberdList ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is toggleList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as toggleList ;
        x .pos += 1;
      }
      // #add conditions for table and calender , image , audio , voice , video#
    }
    emit(addcheckBoxat());
  }
  void naviVal(bool value){

    var x =m.pageComponents[globalpagenum] .liswid[position] as checkbox;
    x.val =value;
    x.td=TextDecoration.lineThrough;
    emit(Backgroundcheckboxeditvalstate());
  }
  void addnumberdListItem(){

    m.pageComponents[globalpagenum] . liswid.insert(position + 1, NumberdList());
    var x = m.pageComponents[globalpagenum] .liswid[position + 1] as NumberdList;
    x.pos=position+1 ;
    if(m.pageComponents[globalpagenum] .liswid[position] is NumberdList) {
      var y = m.pageComponents[globalpagenum] .liswid[position] as NumberdList;
      x.num=y.num+1;
    }
    for (int i = position + 2; i <m.pageComponents[globalpagenum] . liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as NumberdList ;
        x .num += 1;
      }
      else break;
    }
    for (int i = position + 2; i < m.pageComponents[globalpagenum] .liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is TextForm ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as TextForm ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is bullted ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as bullted ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is checkbox ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as checkbox ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x =m.pageComponents[globalpagenum] . liswid[i] as NumberdList ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is toggleList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as toggleList ;
        x .pos += 1;
      }
      // #add conditions for table and calender , image , audio , voice , video#
    }
    emit(addnumberdListItemat());
  }
  void deleteTextForm() {

      if (position == m.pageComponents[globalpagenum] .liswid.length) {
        m.pageComponents[globalpagenum] . liswid.removeAt(m.pageComponents[globalpagenum] .liswid.length - 1);
      }
      else {
        m.pageComponents[globalpagenum] . liswid.removeAt(position);
      }

    for (int i = position; i < m.pageComponents[globalpagenum] .liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is TextForm ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as TextForm ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is bullted ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as bullted ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is checkbox ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as checkbox ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as NumberdList ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is toggleList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as toggleList ;
        x .pos -= 1;
      }
      // #add conditions for table and calender , image , audio , voice , video#
    }
    emit(BackgrounddeleteTextFormstate());
  }
  void deleteBulleted() {

    if (position == m.pageComponents[globalpagenum] .liswid.length) {
      m.pageComponents[globalpagenum] . liswid.removeAt(m.pageComponents[globalpagenum] .liswid.length - 1);
    }
    else {
      m.pageComponents[globalpagenum] . liswid.removeAt(position);
    }

    for (int i = position; i < m.pageComponents[globalpagenum] .liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is TextForm ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as TextForm ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is bullted ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as bullted ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is checkbox ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as checkbox ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as NumberdList ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is toggleList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as toggleList ;
        x .pos -= 1;
      }
      // #add conditions for table and calender , image , audio , voice , video#
    }
    emit(BackgrounddeleteBulletedstate());
  }
  void deletecheckBox() {

    if (position == m.pageComponents[globalpagenum] .liswid.length) {
      m.pageComponents[globalpagenum] .  liswid.removeAt(m.pageComponents[globalpagenum] .liswid.length - 1);
    }
    else {
      m.pageComponents[globalpagenum] . liswid.removeAt(position);
    }

    for (int i = position; i < m.pageComponents[globalpagenum] .liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is TextForm ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as TextForm ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is bullted ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as bullted ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is checkbox ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as checkbox ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as NumberdList ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is toggleList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as toggleList ;
        x .pos -= 1;
      }
      // #add conditions for table and calender , image , audio , voice , video#
    }
    emit(BackgrounddeletecheckBoxstate());
  }
  void deletenumberdListItem() {

    if (position == m.pageComponents[globalpagenum] .liswid.length) {
      m.pageComponents[globalpagenum] . liswid.removeAt(m.pageComponents[globalpagenum] .liswid.length - 1);
    }
    else {
      m.pageComponents[globalpagenum] . liswid.removeAt(position);
    }
    for (int i = position ; i < m.pageComponents[globalpagenum] .liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x =m.pageComponents[globalpagenum] . liswid[i] as NumberdList ;
        x .num -= 1;
      }
      else break;
    }
    for (int i = position; i < m.pageComponents[globalpagenum] .liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is TextForm ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as TextForm ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is bullted ){
        var x =m.pageComponents[globalpagenum] . liswid[i] as bullted ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is checkbox ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as checkbox ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as NumberdList ;
        x .pos -= 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is toggleList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as toggleList ;
        x .pos -= 1;
      }
      // #add conditions for table and calender , image , audio , voice , video#
    }
    emit(BackgrounddeletedeletenumberdListItemstate());
  }
  void addTextFormatend(page p){

    p .liswid.add(TextForm());
    if(p .liswid.last is TextForm ){
      var x=p .liswid.last as TextForm;
      x.pos=m.pageComponents[globalpagenum] .liswid.length-1;
    }
    emit(BackgroundaddComponentatendstate());
  }
  void addbulletedatend(page p){
    p .liswid.add(bullted());
    if(p.liswid.last is bullted ){
      var x=p .liswid.last as bullted;
      x.pos=p .liswid.length-1;
    }
    emit(Backgroundaddbulletedatendstate());
  }
  void addcheckboxatend(page p){
    p .liswid.add(checkbox());
    if(p.liswid.last is checkbox ){
      var x=p .liswid.last as checkbox;
      x.pos=p .liswid.length-1;
    }
    emit(Backgroundaddcheckboxatendstate());
  }
  void addnumberdListItematend(page p){
   p .liswid.add(NumberdList());
    if(p.liswid.last is NumberdList ){
      var x=p.liswid.last as NumberdList;
      x.pos=p.liswid.length-1;
    }
    emit(BackgroundaddnumberdListItematendstate());
  }
  void deleteComponentatend(page p){
   p .liswid.removeAt(
      p.liswid.length-1,
    );
    emit(BackgrounddeleteComponentatendstate());
  }

  void modifyTxetToBold(FontWeight fw){
    if(m.pageComponents[globalpagenum] .liswid[position] is TextForm ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as TextForm ;
      x .fw=FontWeight.bold;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is bullted ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as bullted ;
      x .fw=FontWeight.bold;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is checkbox ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as checkbox ;
      x .fw=FontWeight.bold;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is NumberdList ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as NumberdList ;
      x .fw=FontWeight.bold;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as toggleList ;
      x .fw=FontWeight.bold;
    }
    // #add conditions for table and calender , image , audio , voice , video#

    emit(modifyTextBold());
  }
  void modifyTxetToItalic(FontStyle fs){
    if(m.pageComponents[globalpagenum] .liswid[position] is TextForm ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as TextForm ;
      x .fs=FontStyle.italic;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is bullted ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as bullted ;
      x .fs=FontStyle.italic;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is checkbox ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as checkbox ;
      x .fs=FontStyle.italic;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is NumberdList ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as NumberdList ;
      x .fs=FontStyle.italic;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as toggleList ;
      x .fs=FontStyle.italic;
    }
    // #add conditions for table and calender , image , audio , voice , video#

    emit(modifyTextItalic());
  }
  void modifyTxetToUnderLine(TextDecoration td){
    if(m.pageComponents[globalpagenum] .liswid[position] is TextForm ){
      var x =m.pageComponents[globalpagenum] . liswid[position] as TextForm ;
      x .td=TextDecoration.underline;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is bullted ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as bullted ;
      x .td=TextDecoration.underline;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is checkbox ){
      var x =m.pageComponents[globalpagenum] . liswid[position] as checkbox ;
      x .td=TextDecoration.underline;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is NumberdList ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as NumberdList ;
      x .td=TextDecoration.underline;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as toggleList ;
      x .td=TextDecoration.underline;
    }
    // #add conditions for table and calender , image , audio , voice , video#

    emit(modifyTextUnderLine());
  }
  void changeColor(Color c,int i){
    if (i==0) {
      if (m.pageComponents[globalpagenum] .liswid[position] is TextForm) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as TextForm;
        x.c = Colors.white;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is bullted) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as bullted;
        x.c = Colors.white;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is checkbox) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as checkbox;
        x.c = Colors.white;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is NumberdList) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as NumberdList;
        x.c = Colors.white;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is toggleList) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as toggleList;
        x.c = Colors.white;
      }
    }
    if (i==1) {
      if (m.pageComponents[globalpagenum] .liswid[position] is TextForm) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as TextForm;
        x.c = Colors.black87;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is bullted) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as bullted;
        x.c = Colors.black87;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is checkbox) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as checkbox;
        x.c = Colors.black87;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is NumberdList) {
        var x =m.pageComponents[globalpagenum] . liswid[position] as NumberdList;
        x.c = Colors.black87;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is toggleList) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as toggleList;
        x.c = Colors.black87;
      }
    }
    if (i==2) {
      if (m.pageComponents[globalpagenum] .liswid[position] is TextForm) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as TextForm;
        x.c = Colors.blue;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is bullted) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as bullted;
        x.c = Colors.blue;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is checkbox) {
        var x =m.pageComponents[globalpagenum] . liswid[position] as checkbox;
        x.c = Colors.blue;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is NumberdList) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as NumberdList;
        x.c = Colors.blue;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is toggleList) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as toggleList;
        x.c = Colors.blue;
      }
    }
    if (i==3) {
      if (m.pageComponents[globalpagenum] .liswid[position] is TextForm) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as TextForm;
        x.c = Colors.yellow;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is bullted) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as bullted;
        x.c = Colors.yellow;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is checkbox) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as checkbox;
        x.c = Colors.yellow;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is NumberdList) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as NumberdList;
        x.c = Colors.yellow;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is toggleList) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as toggleList;
        x.c = Colors.yellow;
      }
    }
    if (i==4) {
      if (m.pageComponents[globalpagenum] .liswid[position] is TextForm) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as TextForm;
        x.c = Colors.green;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is bullted) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as bullted;
        x.c = Colors.green;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is checkbox) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as checkbox;
        x.c = Colors.green;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is NumberdList) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as NumberdList;
        x.c = Colors.green;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is toggleList) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as toggleList;
        x.c = Colors.green;
      }
    }
    if (i==5) {
      if (m.pageComponents[globalpagenum] .liswid[position] is TextForm) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as TextForm;
        x.c = Colors.red;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is bullted) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as bullted;
        x.c = Colors.red;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is checkbox) {
        var x =m.pageComponents[globalpagenum] . liswid[position] as checkbox;
        x.c = Colors.red;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is NumberdList) {
        var x = m.pageComponents[globalpagenum] .liswid[position] as NumberdList;
        x.c = Colors.red;
      }
      if (m.pageComponents[globalpagenum] .liswid[position] is toggleList) {
        var x =m.pageComponents[globalpagenum] . liswid[position] as toggleList;
        x.c = Colors.red;
      }
    }
    // #add conditions for table and calender , image , audio , voice , video#

    emit(changeTextColor());
  }
  void changesizeUp(double fsize){
    if(m.pageComponents[globalpagenum] .liswid[position] is TextForm ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as TextForm ;
      x .fsize++;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is bullted ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as bullted ;
      x .fsize++;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is checkbox ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as checkbox ;
      x .fsize++;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is NumberdList ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as NumberdList ;
      x .fsize++;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as toggleList ;
      x .fsize++;
    }
    // #add conditions for table and calender , image , audio , voice , video#

    emit(changeTextSizeUp());
  }
  void changesizeDown(double fsize){
    if(m.pageComponents[globalpagenum] .liswid[position] is TextForm ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as TextForm ;
      x .fsize--;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is bullted ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as bullted ;
      x .fsize--;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is checkbox ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as checkbox ;
      x .fsize--;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is NumberdList ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as NumberdList ;
      x .fsize--;
    }
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList ){
      var x = m.pageComponents[globalpagenum] .liswid[position] as toggleList ;
      x .fsize--;
    }
    // #add conditions for table and calender , image , audio , voice , video#

    emit(changeTextSizeDown());
  }

  void reversed(page p){
    p . liswid=p .liswid.reversed.toList();
    emit(Backgroundreversedstate());
  }
  void favoritWS(){
    (favoritePage==Icons.star)?favoritePage=Icons.star_border_outlined:
    favoritePage=Icons.star;
    emit(Backgroundfavoritworkspace());
  }
  void pdfWS(){
    (printingWSasPDF==Icons.picture_as_pdf_outlined)?
    printingWSasPDF=Icons.picture_as_pdf:
    printingWSasPDF=Icons.picture_as_pdf_outlined;
    emit(Backgroundpdfworkspace());
  }
  void mode(){
    if(lightMood ==Icons.wb_incandescent_outlined ){
      lightMood =Icons.wb_incandescent ;
      backGroundColor=Colors.white;
    }
    else{
      lightMood=Icons.wb_incandescent_outlined ;
      backGroundColor=Colors.black87;
    }
    emit(Backgroundmode());
  }
  /*
  void createDB() async {
    database= await openDatabase(
      'Notion4MI.db',
      onCreate: (database, version) {
        print('databsecreated');
        database
            .execute('CREATE TABLE users(id INTEGER PRIMARY KEY ,name TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('error when created table${error.toString()}');
        });
      },
      version: 1,
      onOpen: (database) {
        print('databseopend');
        GetDataFromDB(database).then((value) {
          users = value;
          print(users);
        });
      },
    );
    emit(creatDB());
  }
*/
  void addtoggleList() {
    m.pageComponents[globalpagenum].liswid.insert(position + 1, toggleList());
    var x = m.pageComponents[globalpagenum] .liswid[position + 1] as toggleList;
    x.pos=position+1 ;

    for (int i = position + 2; i < m.pageComponents[globalpagenum] .liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is TextForm ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as TextForm ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is bullted ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as bullted ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is CrossAxisScroll ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as CrossAxisScroll ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is checkbox ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as checkbox ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as NumberdList ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is toggleList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as toggleList ;
        x .pos += 1;
      }
      // #add conditions for table and calender , image , audio , voice , video#
    }
    emit(tog());
  }
  void addtoggleListatend(page p) {
    p. liswid.add(toggleList());
    if(p .liswid.last is toggleList ){
      var x=p.liswid.last as toggleList;
      x.pos=p.liswid.length-1;
    }
    emit(BackgroundaddtoggleListatEnd());
  }
  void addTextFormatendintoggle(){
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList){
      var x =m.pageComponents[globalpagenum] .liswid.last as toggleList;
      x.togglelst.add(TextForm());
    }
    emit(addtintoggle());
  }
  void addbulletedendintoggle(){
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList){
      var x =m.pageComponents[globalpagenum] .liswid.last as toggleList;
      x.togglelst.add(bullted());
    }
    emit(addbintoggle());
  }
  void addcheckboxendintoggle(){
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList){
      var x =m.pageComponents[globalpagenum] .liswid.last as toggleList;
      x.togglelst.add(checkbox());
    }
    emit(addcintoggle());
  }
  void addnumberdlistendintoggle(){
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList){
      var x =m.pageComponents[globalpagenum] .liswid.last as toggleList;
      x.togglelst.add(NumberdList());
    }
    emit(addnintoggle());
  }
  void addtableendintoggle(){
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList){
      var x =m.pageComponents[globalpagenum] .liswid.last as toggleList;
      x.togglelst.add(CrossAxisScroll());
    }
    emit(addttintoggle());
  }
  void addtoggleendintoggle(){
    if(m.pageComponents[globalpagenum] .liswid[position] is toggleList){
      var x =m.pageComponents[globalpagenum] .liswid.last as toggleList;
      x.togglelst.add(toggleList());
    }
    emit(addtttintoggle());
  }

  void addcolumn(){

     var x= m.pageComponents[globalpagenum].liswid[position] as CrossAxisScroll ;
      x.indexC ++;
    emit(addcolumnintable());
  }
  void addrow(){

    var x= m.pageComponents[globalpagenum].liswid[position] as CrossAxisScroll ;
    x.indexR ++;
   emit(addrowintable());
  }
  void addtable(){
    m.pageComponents[globalpagenum] .liswid.insert(position + 1, CrossAxisScroll());
    var x = m.pageComponents[globalpagenum] .liswid[position + 1] as CrossAxisScroll;
    x.pos=position+1 ;

    for (int i = position + 2; i < m.pageComponents[globalpagenum] .liswid.length; i++) {
      if(m.pageComponents[globalpagenum] .liswid[i] is CrossAxisScroll ){
        var x = m.pageComponents[globalpagenum]  .liswid[i] as CrossAxisScroll ;
        x .pos += 1;
      }

      if(m.pageComponents[globalpagenum] .liswid[i] is TextForm ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as TextForm ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is bullted ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as bullted ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is checkbox ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as checkbox ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is NumberdList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as NumberdList ;
        x .pos += 1;
      }
      if(m.pageComponents[globalpagenum] .liswid[i] is toggleList ){
        var x = m.pageComponents[globalpagenum] .liswid[i] as toggleList ;
        x .pos += 1;
      }
      // #add conditions for calender , image , audio , voice , video#
    }

    emit(addtablei());
  }
  void addtableend(page p) {
    p. liswid.add(CrossAxisScroll());
    if(p.liswid.last is CrossAxisScroll ){
      var x=p .liswid.last as CrossAxisScroll;
      x.pos=p .liswid.length-1;
    }
    emit(BackgroundaddtoggleListatEnd());
  }

  void addPage(String t,workspace w){
    page y = page(x: w.pageComponents.length,name:t);
    w.pageComponents.add(y);
    w.pageName.add(
        TextButton(
          onPressed: () {
            globalpagenum=y.pageNum;
            print(globalpagenum);
            emit(addpag());
          },
              child: Text(t),));
        globalpagenum=y.pageNum;
        print(globalpagenum);
    emit(addpag());
  }

  void addfirstpage(workspace w){

       w.pageName.add(
           TextButton(
               onPressed: () {
                 globalpagenum = 0;
                 print(globalpagenum);
                 emit(saba7());
               },
               child: Text('firstPage'))
       );
     w.counter++;

   }

   //function in cubit
   void deletePage(String t,workspace w){

     int x =w.pageComponents.length;
     int y =w.pageName.length-1;
     for(int i =0;i<x;i++){
       if(w.pageComponents[i].NAMe == t ){
         print(w.pageComponents[i].NAMe);
           if (i == x-1) {
             w.pageName.removeAt(i);
             globalpagenum=i-1;
             w.pageComponents.removeAt(i);
           }
           else {
             globalpagenum=i-1;
             w.pageName.removeAt(i);
             w.pageComponents.removeAt(i);

           }
                  for(int j =i;j<w.pageComponents.length;j++){
                    w.pageComponents[j].pageNum--;
                  }
         break;
       }
       //for i
     }
     emit(del());
   }
//new in fucken cubit
   Future<void>uploadImages(page p) async {
    var x=imag();
    x.pos=p.liswid.length-1;
    var imagePicked = await x.imagePacker.getImage(source: ImageSource.gallery);
    if (imagePicked != null)
    {
        x.image = File(imagePicked.path);
    }
    p.liswid.add(x);
    emit(uimg());
  }
   Future<void> uploadVideo(page p) async {
    var x=vide();
    x.pos=p.liswid.length-1;
    final videoo = await x.videoPicker.getVideo(source: ImageSource.gallery);
    if (videoo != null) {
      x.video = File(videoo.path);
    }
    x.vid = VideoPlayerController.file(x.video)
      ..initialize().then((_) {
        x.vid.play();
        emit(uvid());
      });
    p.liswid.add(x);
    emit(uvid());
  }
  void vidstack(vide v){
    if (v.vid.value.isPlaying){ v.vid.pause();emit(vissa());}
    else {v.vid.play();emit(vissa());}
    emit(vissa());
  }
}