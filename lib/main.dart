import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Lugares que ver en Ecuador';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TitleSection(
                name: 'Volcan Cotopaxi',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
              image: 'images/coto.jpg',),
              ButtonSection(),
              TextSection(description: "Hay pocas cosas en el mundo que sean más emocionantes y provoquen más descarga de adrenalina que subir hasta la cima de un volcán activo. Ecuador es uno de los países con más volcanes en todo el mundo, por lo que esta actividad es totalmente factible. Uno de ellos es el Cotopaxi, situado en un parque nacional en la zona norte del país, a tan solo dos horas de Quito. Aquí podrás disfrutar de las vistas del volcán desde abajo o aventurarte a subir hasta su cima, a 5897 metros sobre el nivel del mar. Además, cerca a este parque nacional se encuentra el Quilotoa, otro volcán que cuenta en el interior de su cráter con una bellísima laguna de aguas turquesas. Desde el mirador del Quilotoa tendrás unas increíbles vistas de la laguna y sus alrededores. Cómo llegar al Parque Nacional de Cotopaxi: desde la Terminal Terrestre Quitumbe, en Quito, salen varios autobuses con dirección a Cotopaxi. Deberás informar al conductor de que deseas bajarte en el Parque Nacional. Después, tendrás que caminar aproximadamente una hora hasta llegar a la entrada. También puedes hacer esta excursión con nuestro tour Parque Nacional Cotopaxi, que parte desde la misma ciudad de Quito y combina tramos de caminata con recorrido en bicicleta."),
              TitleSection(
                name: 'Parque de las Iguanas',
                location: 'Guayaquil, Ecuador',
              ),
              ImageSection(
              image: 'images/iguanas2.jpg',),
              ButtonSection(),
              TextSection(description: "Guayaquil es conocida por el toque tan especial que le dan sus coloridas casas a la ciudad. Sin embargo, aquí vamos a destacar otro sorprendente lugar que llama la atención a todos los que lo visitan: el Parque de las Iguanas.Es extraño ver cómo este exótico animal campa a sus anchas por uno de los parques más famosos de Guayaquil, donde además se encuentra la Catedral Metropolitana de la ciudad. No exageramos al decir que en este lugar hay más de un centenar de iguanas, que están totalmente familiarizadas con los humanos, a las que no podrás dejar de sacar fotos desde todos los ángulos. Cómo llegar al Parque de las Iguanas: el nombre oficial de este parque es Seminario y se encuentra a tan solo unas cuadras del Malecón 2000, por lo que puedes llegar fácilmente caminando."),
              TitleSection(
                name: 'Playa de Monpiche',
                location: 'Esmeraldas, Ecuador',
              ),
              ImageSection(
              image: 'images/mompiche.jpg',),
              ButtonSection(),
              TextSection(description: "Es muy común entre los turistas que llegan a Ecuador en busca de una playa visitar Montañita, un destino muy conocido entre los mochileros de Sudamérica. Sin embargo, este país cuenta con muchos kilómetros de costa con playas menos conocidas como la de Mompiche.Esta playa de fina arena es perfecta tanto para descansar y disfrutar de la gastronomía de la zona (encocados, arroz marinero, etc.) como para hacer deportes acuáticos o dar un paseo por su zona boscosa, en la que encontrarás monos y otros animales. Cómo llegar a la playa de Mompiche: la playa de Mompiche se encuentra en la provincia de Esmeraldas, en el noroeste de Ecuador. Desde Quito, tendrás que tomar un bus en la Terminal Terrestre Carcelén con destino a Esmeralda (6-7 horas de trayecto). Cuando llegues, deberás tomar otro transporte hasta Mompiche (a 2-3 horas)."),
              TitleSection(
                name: 'Columpio Fin del Mundo',
                location: 'Baños, Ecuador',
              ),
              ImageSection(
              image: 'images/casa.jpg',),
              ButtonSection(),
              TextSection(description: "El lugar de Ecuador más famoso para hacerte la foto perfecta para Instagram. Y no es para menos, ya que el paisaje que rodea al columpio del fin del mundo es sencillamente espectacular: los Andes ecuatorianos, enormes y verdes montañas, cascadas infinitas… ¡las mejores vistas de tu vida desde un columpio! Cómo llegar al columpio de Baños: el primer paso es desplazarte hasta la ciudad de Baños. Una vez aquí, solo tendrás que tomar un bus (salen una gran cantidad de buses al día) que te lleve hasta el famoso columpio."),
              TitleSection(
                name: 'Mitad del Mundo',
                location: 'Quito, Ecuador',
              ),
              ImageSection(
              image: 'images/cuidad.jpg',),
              ButtonSection(),
              TextSection(description: "Uno de los más famosos lugares de Ecuador es la conocida como Mitad del Mundo. Se trata del punto exacto por el que pasa la línea ecuatorial, que divide al hemisferio norte del hemisferio sur, y en el que podrás hacer “mágicos” experimentos. El más famoso es la prueba del huevo: en un espacio preparado exclusivamente para ello podrás desafiar a la gravedad colocando un huevo en vertical que, según la teoría, no se caerá por encontrarnos en el punto en el que nos encontramos. Además, podrás comprobar por ti mismo el efecto Coriolis, por el que el agua del inodoro gira para un lado en el hemisferio norte y para otro en el hemisferio sur. Cómo llegar a la Mitad del Mundo: este lugar se encuentra a tan solo 28 kilómetros al norte de Quito, por lo que es muy simple encontrar un bus que te lleve hasta allí. Además, puedes hacer la excursión con nuestro City Tour y Línea del Ecuador, con el que recorreremos la capital ecuatoriana y visitaremos la Mitad del Mundo.")
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 111, 244, 54),
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}