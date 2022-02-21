import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> regionList = [
  'br1',
  'eun1',
  'euw1',
  'jp1',
  'kr',
  'la1',
  'la2',
  'na1',
  'oc1',
  'tr1',
  'ru'
];

const region = 'euw1';
const apiUrl = 'https://$region.api.riotgames.com/lol/status/v3/shard-data?api_key=';
const apiKey = "YOUR-KEY-API";

class SummonerData {
  Future getSummonerData() async {
    String requestURL = '$apiUrl$apiKey';
    http.Response response = await http.get(Uri.parse(requestURL));

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var summonerName = decodedData['name'];
      print(summonerName);
      return summonerName;
    }
    else {
      print(response.statusCode);
    }
  }
}