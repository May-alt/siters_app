

class OfferModels{
  String? userImg;
  String? username;
  String? date;
  String? titlePost;
  String? contentPost;
  String? imgPost;


  OfferModels({
    required this.username,
    required this.userImg,
    required this.titlePost,
    required this.imgPost,
    required this.date,
    required this.contentPost
});

}


List<OfferModels> offerModels = [
  OfferModels(
      username: "Famille souissi",
      userImg: "assets/images/user.png",
      titlePost: "Recherche nounou",
      imgPost: "assets/images/img.jpg",
      date: "le 22 Avril 2024",
      contentPost:
          "Je cherche une nounou à proximité d'el mourouj 3 pour s'occuper "
          "d'une petite fille de 2ans et demi le mois de juillet et aout "
          "toute la journée de 9h à 19h30"),
  OfferModels(
      username: "Famille Ben Sallem",
      userImg: "assets/images/user.png",
      titlePost: "Recherche nounou pour 2 enfants",
      imgPost: "assets/images/img.jpg",
      date: "le 5 mai 2024",
      contentPost:
      "Je cherche une nounou à proximité d'el mourouj pour s'occuper "
          "2 enfant garcon et fille de 2 ans et demi le mois de juillet  "
          "toute la journée de 9h à 19h30"),
  OfferModels(
      username: "Famille souissi",
      userImg: "assets/images/user.png",
      titlePost: "Recherche nounou",
      imgPost: "assets/images/img.jpg",
      date: "le 04 janvier 2024",
      contentPost:
      "Bonjour, Je cherche du soutien scolaire pour un enfant en difficulté"
          " (1er année primaire système tunisien). Une personne expérimentée qui peut "
          "faire reviser mon enfant 5 fois par semaine : lecture, "
          "dictée, production… en arabe et en français. Domicile ennasr 2 - Horaire : à partir de 17h"),
  OfferModels(
      username: "Famille Bambino",
      userImg: "assets/images/user.png",
      titlePost: "Recherche nounou",
      imgPost: "assets/images/img.jpg",
      date: "le 22 mai 2024",
      contentPost:
      "2 enfants ( 6 ans + 4 ans ) à soukra cherchent nounou du soir avec 1 jour de repos/semaine de 16h à 9h Critères : de confiance/douce"),
  OfferModels(
      username: "Famille Bambino",
      userImg: "assets/images/user.png",
      titlePost: "Recherche nounou du soir",
      imgPost: "assets/images/img.jpg",
      date: "le 2 Avril 2024",
      contentPost:
      "Nouveau né a rades cherche nounou pour une longue période Les horaires :"
          " Le mois de mai jusqu'à le mois de juillet : 3 jours par semaine "
          "(pour passer 2h ou 3h par journée) Le mois de juillet et août : du lundi"
          " au vendredi de 7h30 à 15h A partir du mois de septembre : du lundi au vendredi de 7h30 à 17h"),

  OfferModels(
      username: "Famille Bambino",
      userImg: "assets/images/user.png",
      titlePost: "Recherche baby-sitter pour l'éducation",
      imgPost: "assets/images/img.jpg",
      date: "le 2 Avril 2024",
      contentPost:
      "Une fille de 7 ans cherche une baby-sitter éducatrice de langue française arabe Les jours :lundi-jeudi-vendredi Les horaires :13h-15h Critères expérimentés douce"),




];