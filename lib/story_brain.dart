import 'story.dart';

class StoryBrain {
  final List<Story> _storyData = [
    Story(
        storyTitle:
            'A tu coche se le pinchó una rueda en una carretera sinuosa en medio de la nada sin cobertura de teléfono móvil. Decides hacer autostop. Una camioneta oxidada se detiene con un ruido sordo a tu lado. Un hombre con sombrero de ala ancha y ojos desalmados te abre la puerta del pasajero y te pregunta: "¿Necesitas que te lleve, muchacho?".',
        choice1: 'Entraré. ¡Gracias por la ayuda!',
        choice2: 'Será mejor que primero le preguntes si es un asesino.'),
    Story(
        storyTitle: "Él asiente lentamente, impasible ante la pregunta.",
        choice1: 'Al menos es honesto. Yo subiré.',
        choice2: "Espera, sé cómo cambiar una llanta."),
    Story(
        storyTitle:
            'Cuando empieza a conducir, el extraño empieza a hablar de su relación con su madre. Se enoja cada vez más. Te pide que abras la guantera. En su interior encontrarás un cuchillo ensangrentado, dos dedos cortados y una cinta de casete de Elton John. Él alcanza la guantera.',
        choice1: '¡Me encanta Elton John! Pásale la cinta de casete.',
        choice2: '¡Somos él o yo! Tomas el cuchillo y lo apuñalas.'),
    Story(
        storyTitle:
            '¿Qué? ¡Qué policía! ¿Sabías que los accidentes de tráfico son la segunda causa de muerte accidental para la mayoría de los grupos de edad adulta?',
        choice1: 'Reanudar',
        choice2: ''),
    Story(
        storyTitle:
            'A medida que atraviesas la barandilla y te precipitas hacia las rocas irregulares que hay debajo, reflexionas sobre la dudosa sabiduría de apuñalar a alguien mientras conduce el coche en el que estás.',
        choice1: 'Reanudar',
        choice2: ''),
    Story(
        storyTitle:
            'Te vinculas con el asesino mientras cantas versos de "¿Puedes sentir el amor esta noche?". Te deja en el siguiente pueblo. Antes de irte, te pregunta si conoces algún buen lugar para tirar cadáveres. Tu respondes: "Prueba el muelle".',
        choice1: 'Reanudar',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
