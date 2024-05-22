class ChatModels{

  String? userName;
  String? userImg;
  String? message;
  bool? sendByMe;
  DateTime? date;
  ChatModels({
    required this.userName,
    required this.userImg,
    required this.message,
    required this.date,
    required this.sendByMe
  });
}



List<ChatModels> chatModels =[
  ChatModels(

      message: "Salut",
      date: DateTime.utc(2023),
      sendByMe: true,
      userImg: "assets/images/user.png",
      userName: "Mounira"
  ),

  ChatModels(
      message: "salut,comment ca va ?",
      date: DateTime.utc(2023),
      sendByMe: false,
      userImg: "assets/images/user.png",
      userName: "Mohammed"
  ),

  ChatModels(
      message: "Super et toi tu fais quoi ?",
      date: DateTime.utc(2023),
      sendByMe: true,
      userImg: "assets/images/user.png",
      userName: "Amira"
  ),

  ChatModels(
      message: "ca va je suis en travailler",
      date: DateTime.utc(2023),
      sendByMe: false,
      userImg: "assets/images/user.png",
      userName: "Sihem"

  ),

  ChatModels(
      message: "franchement j,ai besion de ton aide :(",
      date: DateTime.utc(2023),
      sendByMe: true,
      userImg: "assets/images/user.png",
      userName: "Sasoussen"
  ),

  ChatModels(
      message: "Oui , dis moi ?",
      date: DateTime.utc(2023),
      sendByMe: false,
      userImg: "assets/images/user.png",
      userName: "Mounira"

  ),

];






