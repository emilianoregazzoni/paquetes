import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:paquetes/classes/pais.dart';
import 'package:paquetes/classes/reqres_respuesta.dart';
import 'package:paquetes/paquetes.dart' as paquetes;


void getPais(){
final url = 'https://restcountries.eu/rest/v2/alpha/uy';

 http.get(url).then((res){
   final uru = paisFromJson(res.body);

   print('===========================');
   print('Pais: ${uru.name}');
   print('Poblacion: ${uru.population}');
   print('Fronteras: ');
   uru.borders.forEach((f) => print('       $f'));
   print('Idioma: ${uru.languages[0].nativeName}');
   print('Latitud: ${uru.latlng[0]}');
   print('Longitud: ${uru.latlng[1]}');

   print('Moneda: ${uru.currencies[0].name}');
   print('Bandera: ${uru.flag}');


   print('==========================='); 
 
 }).catchError((error) => print(error));



}