class Utils {
  Utils();

  static const String BUCKET = "https://loteria-image.s3.amazonaws.com/";
  static const String base_circle = "assets/images/loteria-image/circle-logo/";
  static const String base_square = "assets/images/loteria-image/square-logo/";
  
//find big network lottery logo
  String findPlaceHolderLotteryImage(int type) {
    String image;

    switch (type) {
      //MegaMillion
      case 1:
        image = "assets/images/loteria-image/bannerny.png";
        break;
      //PowerBall
      case 2:
        image = "assets/images/loteria-image/bannerpowerball.png";
        break;
      //LotoMas
      case 4:
        image = "assets/images/loteria-image/logo-loto-lotomas.png";
        break;
      //LotoReal
      case 6:
        image = "assets/images/loteria-image/loto-real-logo.png";
        break;
      //MegaLoto
      case 7:
        image = "assets/images/loteria-image/lotekanoche.png";
        break;
      //LotoPool
      case 8:
        image = "assets/images/loteria-image/leidsanoche.png";
        break;
      //SuperKino
      case 9:
        image = "assets/images/loteria-image/leidsanoche.png";
        break;
      //Pega3Mas
      case 10:
        image = "assets/images/loteria-image/nacionaltarde.png";
        break;
      //Quiniela Leidsa
      case 12:
        image = "assets/images/loteria-image/bannerquinielaypale.png";
        break;
      //Quiniela nacional
      case 15:
        image = "assets/images/loteria-image/nacionalnoche.png";
        break;
      //quiniela real
      case 21:
        image = "assets/images/loteria-image/realtarde.png";
        break;
      //quiniela NY
      case 24:
        image = "assets/images/loteria-image/nytarde.png";
        break;
      //quiniela ny noche
      case 27:
        image = "assets/images/loteria-image/nynoche.png";
        break;
      //quiniela loteka
      case 30:
        image = "assets/images/loteria-image/lotekanoche.png";
        break;
      //mega chanse loteka
      case 32:
        image = "assets/images/loteria-image/lotekanoche.png";
        break;
      //ganamas
      case 33:
        image = "assets/images/loteria-image/nacionaltarde.png";
        break;
      //juegamas pegamas
      case 34:
        image = "assets/images/loteria-image/nacionaltarde.png";
        break;
      //la primera
      case 35:
        image = "assets/images/loteria-image/laprimeratarde.png";
        break;
      default:
        image = "assets/images/loteria-image/bannerloteka.png";
    }

    return image;
  }

//find little lottery network logo
  String findCirLotteryImage(int type) {
    String image;

    switch (type) {
      //MegaMillion
      case 1:
        image = base_circle + "cir-logo-megamillions.png";
        break;
      //PowerBal-+l
      case 2:
        image = base_circle + "cir-logo-powerball.png";
        break;
      //LotoMas
      case 4:
        image = base_circle + "cir-logo-loto.png";
        break;
      //LotoReal
      case 6:
        image = base_circle + "cir-logo-lotoreal.png";
        break;
      //MegaLoto
      case 7:
        image = base_circle + "cir-logo-megaloto.png";
        break;
      //LotoPool
      case 8:
        image = base_circle + "cir-logo-lotopool.png";
        break;
      //SuperKino
      case 9:
        image = base_circle + "cir-logo-kino.png";
        break;
      //Pega3Mas
      case 10:
        image = base_circle + "cir-logo-pega3mas.png";
        break;
      //Quiniela Leidsa
      case 12:
        image = base_circle + "cir-logo-quinielaypale.png";
        break;
      //Quiniela nacional
      case 15:
        image = base_circle + "cir-logo-loterianacional.png";
        break;
      //quiniela real
      case 21:
        image = base_circle + "cir-logo-loteriareal.png";
        break;
      //quiniela NY
      case 24:
        image = base_circle + "cir-logo-ny.png";
        break;
      //quiniela ny noche
      case 27:
        image = base_circle + "cir-logo-ny.png";
        break;
      //quiniela loteka
      case 30:
        image = base_circle + "cir-logo-loteka.png";
        break;
      //mega chanse loteka
      case 32:
        image = base_circle + "cir-logo-megachance.png";
        break;
      //ganamas
      case 33:
        image = base_circle + "cir-logo-ganamas.png";
        break;
      //juegamas pegamas
      case 34:
        image = base_circle + "cir-logo-juegapega-1.png";
        break;
      //la primera
      case 35:
        image = base_circle + "cir-logo-laprimera-loteria.png";
        break;
      default:
        image = "assets/images/loteria-image/main-logo.png";
    }

    return image;
  }

  //find BIG lottery network logo
  String findBigLotteryImage(int type) {
    String image;

    switch (type) {
      //MegaMillion
      case 1:
        image = base_square + "orange/logo-mega-millions-1.png";
        break;
      //PowerBall
      case 2:
        image = base_square + "orange/logo-powerball-1.png";
        break;
      //LotoMas
      case 4:
        image = base_square + "orange/logo-loto-mas-2.png";
        break;
      //LotoReal
      case 6:
        image = base_square + "orange/logo-loto-real-1.png"; //"loto-real-logo.png";
        break;
      //MegaLoto
      case 7:
        image = base_square + "orange/logo-mega-lotto-1.png";
        break;
      //LotoPool
      case 8:
        image = base_square + "orange/logo-loto-pool-2.png";
        break;
      //SuperKino
      case 9:
        image = base_square + "orange/logo-super-kino-tv-2.png";
        break;
      //Pega3Mas
      case 10:
        image = base_square + "orange/logo-pega-3-mas-2.png";
        break;
      //Quiniela Leidsa
      case 12:
        image = base_square + "orange/logo-quiniela-pale-1.png";
        break;
      //Quiniela nacional
      case 15:
        image = base_square + "orange/logo-loteria-nacional.png";
        break;
      //quiniela real
      case 21:
        image = base_square + "orange/logo-sorteo-quiniela-real.png";
        break;
      //quiniela NY
      case 24:
        image = base_square + "orange/logo-loteria-new-york-tarde.png";
        break;
      //quiniela ny noche
      case 27:
        image = base_square + "orange/logo-loteria-new-york-noche.png";
        break;
      //quiniela loteka
      case 30:
        image = base_square + "orange/logo-quiniela-loteka-1.png";
        break;
      //mega chanse loteka
      case 32:
        image = base_square + "orange/logo-mega-chance-1.png";
        break;
      //ganamas
      case 33:
        image = base_square + "orange/logo-loteria-gana-mas.png";
        break;
      //juegamas pegamas
      case 34:
        image = base_square + "orange/logo-loteria-juegamas-pegamas.png";
        break;
      //la primera
      case 35:
        image = base_square + "orange/laprimeratarde.png";
        break;
      default:
        image = base_square + "orange/logo-loteria-nacional.png";
    }

    return image;
  }

  String getNameByType(int type) {
    String image;

    switch (type) {
      //MegaMillion
      case 1:
        image = "Mega Millions";
        break;
      //PowerBall
      case 2:
        image = "Powerball";
        break;
      //LotoMas
      case 4:
        image = "LotoMas";
        break;
      //LotoReal
      case 6:
        image = "LotoReal";
        break;
      //MegaLoto
      case 7:
        image = "MegaLoto";
        break;
      //LotoPool
      case 8:
        image = "LotoPool";
        break;
      //SuperKino
      case 9:
        image = "SuperKino";
        break;
      //Pega3Mas
      case 10:
        image = "Pega3Mas";
        break;
      //Quiniela Leidsa
      case 12:
        image = "Quiniela y Pale";
        break;
      //Quiniela nacional
      case 15:
        image = "Loteria Nacional";
        break;
      //quiniela real
      case 21:
        image = "Loteria Real";
        break;
      //quiniela NY
      case 24:
        image = "New York Tarde";
        break;
      //quiniela ny noche
      case 27:
        image = "New York Noche";
        break;
      //quiniela loteka
      case 30:
        image = "Loteka";
        break;
      //mega chanse loteka
      case 32:
        image = "MegaChanse";
        break;
      //ganamas
      case 33:
        image = "Ganamas";
        break;
      //juegamas pegamas
      case 34:
        image = "Juega+ Pega+";
        break;
      //la primera
      case 35:
        image = "La Primera";
        break;
      default:
        image = "Loteria";
    }

    return image;
  }
}
