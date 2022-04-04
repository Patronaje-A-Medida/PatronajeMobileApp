class Slide{
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
      imageUrl: 'assets/images/primera.jpeg',
      title: 'Usa ropa ajustada',
      description: 'Para obtener una mejor precisión de tus medidas corporales (como ancho de cintura o cadera) debes usar prendas como un polo ajustado y una malla deportiva'
  ),
  Slide(
      imageUrl: 'assets/images/segunda.jpeg',
      title: 'Posicion',
      description: 'Al momento de tomarte las fotos debes tener los brazos y piernas abiertas'
  ),
  Slide(
      imageUrl: 'assets/images/dummy.png',
      title: 'Fondo',
      description: 'Evita tener muchas cosas detrás de ti al momento de tomarte las fotos'
  ),
  Slide(
      imageUrl: 'assets/images/tercera.jpeg',
      title: 'Dos Fotos',
      description: 'Debes tomarte las fotos imitando estas posiciones'
  ),
];


