library country_code_picker;

import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_codes.dart';
import 'package:flutter/material.dart';

export 'country_code.dart';

class CountryCodePicker  {


  /// An optional argument for injecting a list of countries
  /// with customized codes.
   static  List<Map<String, String>> countryList = codes;



  static List<Map<String, String>> jsonList = countryList;

  static List<CountryCode> elements = jsonList.map((json) => CountryCode.fromJson(json)).toList();
  static  List<CountryCode> getCountries() => elements;

   static  void printCountries(){
     elements.forEach((element) {
       debugPrint(element.name.toString());
     });
   }
   static  CountryCode getFirstCountry(){
    return elements[1];
   }


   static  void getFlags(){
     elements.forEach((element) {
       debugPrint(element.flagUri.toString());
     });
   }


}

