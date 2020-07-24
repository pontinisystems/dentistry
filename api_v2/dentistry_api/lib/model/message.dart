
class Message {

bool action;
String userMessage;
String technicalMessage;
  Message({
    this.action,
    this.userMessage,
    this.technicalMessage,
  });
  
  


  Map<String, dynamic> toMap() {
    return {
      'action': action,
      'userMessage': userMessage,
      'technicalMessage': technicalMessage,
    };
  }


 
}
