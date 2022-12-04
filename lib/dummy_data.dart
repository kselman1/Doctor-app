
import 'package:intl/intl.dart';

List<String> mails=['example@mail.com','kenan@mail.com','primjer@mail.com'];
List<String>passwords=['12345','abcdef','primjer123'];

List<String>todaypatients=['Alen K.','Ahmed S.', 'Mike P.'];

List<String>tommorowpatients=['Amelia O.', 'Johnatan U.', 'Nezir B.','Kenan.S'];


List<String> timeSlots = [];
void timesList() {
  DateTime now = DateTime.now();
  DateTime startTime = DateTime(now.year, now.month, now.day, 8, 0, 0);
  DateTime endTime = DateTime(now.year, now.month, now.day, 20, 0, 0);
  Duration step = Duration(minutes: 30);
  
  
  while(startTime.isBefore(endTime)) {
    
    DateTime timeIncrement = startTime.add(step);
    timeSlots.add(DateFormat.Hm().format(timeIncrement));
    startTime = timeIncrement;
  }
}

List<String> todayillness=['Common Cold', 'Chest pain', 'Common Cold'];
List<String> tommorowillness=['Chest pain', 'Headache', 'Common Cold', 'Covid 19'];



bool checkEmailAndPassword(String s1, String s2){

  for(int i=0; i<3; i++){
    if(s1==mails[i] && s2==passwords[i]) {
      return true;
    }
  }


  return false;
}
