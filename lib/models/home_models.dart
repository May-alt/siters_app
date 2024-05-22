
import 'package:flutter/material.dart';
import 'package:siters_app/utils/colors_app.dart';


class HomeModels{
  String? titleText;
  String? contentText;
  Color? backColor;

  HomeModels({
    required this.titleText,
    required this.contentText,
    required this.backColor,
});

}


List<HomeModels> homeModels =[
  HomeModels(
    titleText: " Economique pour les familles",
    contentText: "Vous cherchez un(e) baby-sitter de confiance ? Nous"
      "avons un large aperçu des différents baby-sitters, "
      "avec des baby-sitters disponibles pour vos critères de recherche.",
    backColor: ColorsApp().cpink,
  ),
  HomeModels(
    titleText: "Sécurisant pour les baby-sitters",
    contentText:  "Vous avez fait une Formation dans le domaine de la petite "
        "enfance? Passionnée par ce métier ? Vous adorez les enfants ? "
        "Nous avons un large aperçu des différents emplois "
        "de baby-sittings, avec des postes disponibles pour vos"
        " critères de recherche.",
    backColor: ColorsApp().cblue,
  ),

  HomeModels(
    titleText: "Géré par des professionnels",
    contentText: "Vous cherchez un(e) baby-sitter de confiance ? Nous"
        "avons un large aperçu des différents baby-sitters, "
        "avec des baby-sitters disponibles pour vos critères de recherche.",
    backColor: ColorsApp().corange,
  ),
];