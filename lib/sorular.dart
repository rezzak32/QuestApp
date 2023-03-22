import 'main.dart';

class Sorular{
 int _soruIndex = 0;
 List <Soru> _soruBankasi=[
  Soru(soruMetni: 'Balıklar göz kırpamaz',soruYaniti: true),
  Soru(soruMetni: 'Japon balıklarının hafızası 2 saniyedir',soruYaniti: false),
  Soru(soruMetni: 'Uçaktaki kara kutu siyahtır',soruYaniti: false),
  Soru(soruMetni: 'Tek boynuzlu at, İskoçya nın ulusal hayvanıdır',soruYaniti: true),
  Soru(soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır',soruYaniti: false),
  Soru(soruMetni: 'Monako dünyanın en küçük ülkesidir',soruYaniti: false),
  Soru(soruMetni: 'Norveçin başkenti Oslo dur',soruYaniti: true),
  Soru(soruMetni: 'Vücudumuzdaki en büyük iç organ kalptir',soruYaniti: false),
  Soru(soruMetni: 'AB negatif en nadir kan grubudur',soruYaniti: true),
  Soru(soruMetni: 'Güney Afrikanın 3 başkenti vardır',soruYaniti: true),
 ];

 String getSoruMetni(){
return _soruBankasi[_soruIndex].soruMetni.toString();
 }
bool getSoruYaniti(){
return _soruBankasi[_soruIndex].soruYaniti!;
 }

void sonrakiSoru()
 {
  if(_soruIndex+1 < _soruBankasi.length)
  {_soruIndex++; }
 }
 }

 