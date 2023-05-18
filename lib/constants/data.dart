import 'package:flutter/material.dart';
import 'package:quiz/models/questions.dart';

List<Map<String, List<Question>>> questions = [
  {
    'Géographie': [
      Question(
        id: 1,
        question: "Quel est le plus grand océan du monde ?",
        options: [
          "Océan Atlantique",
          "Océan Indien",
          "Océan Pacifique",
          "Océan Arctique"
        ],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 2,
        question: "Quel est le plus long fleuve d'Amérique du Nord ?",
        options: ["Mississippi", "Amazone", "Nil", "Colorado"],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 3,
        question: "Quelle est la capitale de l'Espagne ?",
        options: ["Rome", "Madrid", "Paris", "Berlin"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 4,
        question:
            "Quel pays est réputé pour ses kangourous et son opéra de Sydney ?",
        options: ["Canada", "Brésil", "Australie", "Mexique"],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 5,
        question: "Quelle est la plus haute montagne du monde ?",
        options: [
          "Mont Kilimandjaro",
          "Mont Everest",
          "Mont Fuji",
          "Mont McKinley"
        ],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 6,
        question: "Quelle est la plus grande ville des États-Unis ?",
        options: [
          "Los Angeles",
          "Chicago",
          "New York",
          "Miami",
        ],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 7,
        question: "Quel est le pays le plus vaste d'Afrique ?",
        options: ["Nigeria", "Égypte", "Afrique du Sud", "Algérie"],
        answer: 4,
        score: 10,
      ),
      Question(
        id: 8,
        question: "Quel océan borde la côte est des États-Unis ?",
        options: [
          "Océan Atlantique",
          "Océan Pacifique",
          "Océan Indien",
          "Océan Arctique"
        ],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 9,
        question: "Quel pays est célèbre pour ses temples d'Angkor Wat ?",
        options: ["Thaïlande", "Cambodge", "Vietnam", "Laos"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 10,
        question: "Dans quel pays se trouve la Tour Eiffel ?",
        options: ["Italie", "Angleterre", "France", "Allemagne"],
        answer: 3,
        score: 10,
      ),
    ],
  },
  {
    'Histoir': [
      Question(
        id: 1,
        question: "Quel est le plus grand océan du monde ?",
        options: [
          "Océan Atlantique",
          "Océan Indien",
          "Océan Pacifique",
          "Océan Arctique"
        ],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 2,
        question: "Quel est le plus long fleuve d'Amérique du Nord ?",
        options: ["Mississippi", "Amazone", "Nil", "Colorado"],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 3,
        question: "Quelle est la capitale de l'Espagne ?",
        options: ["Rome", "Madrid", "Paris", "Berlin"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 4,
        question:
            "Quel pays est réputé pour ses kangourous et son opéra de Sydney ?",
        options: ["Canada", "Brésil", "Australie", "Mexique"],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 5,
        question: "Quelle est la plus haute montagne du monde ?",
        options: [
          "Mont Kilimandjaro",
          "Mont Everest",
          "Mont Fuji",
          "Mont McKinley"
        ],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 6,
        question: "Quelle est la plus grande ville des États-Unis ?",
        options: [
          "Los Angeles",
          "Chicago",
          "New York",
          "Miami",
        ],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 7,
        question: "Quel est le pays le plus vaste d'Afrique ?",
        options: ["Nigeria", "Égypte", "Afrique du Sud", "Algérie"],
        answer: 4,
        score: 10,
      ),
      Question(
        id: 8,
        question: "Quel océan borde la côte est des États-Unis ?",
        options: [
          "Océan Atlantique",
          "Océan Pacifique",
          "Océan Indien",
          "Océan Arctique"
        ],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 9,
        question: "Quel pays est célèbre pour ses temples d'Angkor Wat ?",
        options: ["Thaïlande", "Cambodge", "Vietnam", "Laos"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 10,
        question: "Dans quel pays se trouve la Tour Eiffel ?",
        options: ["Italie", "Angleterre", "France", "Allemagne"],
        answer: 3,
        score: 10,
      ),
    ],
  },
  {
    'Astronomie': [
      Question(
        id: 1,
        question: "Quelle est la planète la plus proche du Soleil ?",
        options: ["Mercure", "Vénus", "Terre", "Mars"],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 2,
        question: "Quelle est la plus grande planète du système solaire ?",
        options: ["Jupiter", "Saturne", "Uranus", "Neptune"],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 3,
        question: "Quelle est la planète connue pour ses magnifiques anneaux ?",
        options: ["Jupiter", "Saturne", "Uranus", "Neptune"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 4,
        question: "Quelle est la plus petite planète du système solaire ?",
        options: ["Mercure", "Vénus", "Terre", "Mars"],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 5,
        question:
            "Qu'est-ce qu'une étoile qui explose violemment à la fin de sa vie ?",
        options: ["Nébuleuse", "Quasar", "Supernova", "Galaxie"],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 6,
        question: "Quelle est la galaxie qui abrite notre système solaire ?",
        options: ["Andromède", "Voie lactée", "Sombrero", "Tourbillon"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 7,
        question: "Qu'est-ce qu'un trou noir ?",
        options: [
          "Une étoile en formation",
          "Une galaxie en rotation",
          "Un trou dans l'espace-temps",
          "Une explosion stellaire"
        ],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 8,
        question: "Quelle est la plus grande lune de Saturne ?",
        options: ["Io", "Titan", "Europe", "Ganymède"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 9,
        question: "Quelle est la planète surnommée la 'Planète rouge' ?",
        options: ["Mercure", "Vénus", "Terre", "Mars"],
        answer: 4,
        score: 10,
      ),
      Question(
        id: 10,
        question: "Qu'est-ce qu'un astéroïde ?",
        options: [
          "Un petit corps céleste composé de roche et de métal",
          "Un type d'étoile très brillante",
          "Une planète naine",
          "Un nuage de gaz interstellaire"
        ],
        answer: 1,
        score: 10,
      ),
    ]
  },
  {
    'Sport': [
      Question(
        id: 1,
        question: "Quel pays a remporté la Coupe du monde de football 2018 ?",
        options: ["France", "Brésil", "Allemagne", "Espagne"],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 2,
        question: "Quel joueur de basketball est surnommé 'King James' ?",
        options: [
          "Kobe Bryant",
          "LeBron James",
          "Michael Jordan",
          "Stephen Curry"
        ],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 3,
        question: "Dans quel sport le terme 'Grand Chelem' est-il utilisé ?",
        options: ["Tennis", "Golf", "Basketball", "Football"],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 4,
        question: "Quel joueur de football a remporté le Ballon d'Or en 2020 ?",
        options: [
          "Lionel Messi",
          "Cristiano Ronaldo",
          "Robert Lewandowski",
          "Neymar"
        ],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 5,
        question: "Quel est le record du monde du 100 mètres en athlétisme ?",
        options: [
          "9,58 secondes",
          "9,63 secondes",
          "9,69 secondes",
          "9,72 secondes"
        ],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 6,
        question: "Quelle équipe a remporté le Super Bowl en 2021 ?",
        options: [
          "Kansas City Chiefs",
          "San Francisco 49ers",
          "New England Patriots",
          "Tampa Bay Buccaneers"
        ],
        answer: 4,
        score: 10,
      ),
      Question(
        id: 7,
        question: "Dans quel pays se déroule le Tour de France ?",
        options: ["Italie", "Espagne", "France", "Belgique"],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 8,
        question:
            "Qui est le meilleur buteur de l'histoire de la Ligue des champions de l'UEFA ?",
        options: [
          "Lionel Messi",
          "Cristiano Ronaldo",
          "Raul",
          "Robert Lewandowski"
        ],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 9,
        question: "Quel est le record du monde du saut en hauteur masculin ?",
        options: ["2,45 mètres", "2,38 mètres", "2,43 mètres", "2,37 mètres"],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 10,
        question:
            "Quelle est la durée réglementaire d'un match de football (hors arrêts de jeu) ?",
        options: ["90 minutes", "80 minutes", "120 minutes", "100 minutes"],
        answer: 1,
        score: 10,
      ),
    ]
  },
  {
    'Mathématique': [
      Question(
        id: 1,
        question: "Quelle est la valeur de Pi (π) arrondie à deux décimales ?",
        options: ["3.14", "3.16", "3.18", "3.20"],
        answer: 1,
        score: 10,
      ),
      Question(
        id: 2,
        question: "Combien de côtés a un pentagone ?",
        options: ["4", "5", "6", "7"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 3,
        question: "Quel est le résultat de l'opération 8 * 4 + 2 - 6 ?",
        options: ["24", "30", "32", "34"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 4,
        question: "Quelle est la racine carrée de 64 ?",
        options: ["4", "6", "8", "10"],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 5,
        question: "Combien de degrés y a-t-il dans un angle droit ?",
        options: ["45 degrés", "90 degrés", "180 degrés", "360 degrés"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 6,
        question: "Quelle est la valeur de l'expression 3² - 2³ + 4⁰ ?",
        options: ["-3", "0", "1", "8"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 7,
        question: "Combien de faces a un cube ?",
        options: ["4", "6", "8", "12"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 8,
        question: "Quelle est la valeur de l'expression 2 + 3 * 4 - 5 ?",
        options: ["8", "11", "9", "17"],
        answer: 3,
        score: 10,
      ),
      Question(
        id: 9,
        question: "Quelle est la valeur de l'expression log₂(8) ?",
        options: ["2", "3", "4", "5"],
        answer: 2,
        score: 10,
      ),
      Question(
        id: 10,
        question: "Quelle est la valeur de l'expression sin(π/2) ?",
        options: ["0", "1", "-1", "Indéfinie"],
        answer: 2,
        score: 10,
      ),
    ]
  }
];

List<String> routes = [
  "geographie",
  "histoir",
];

Color trueAnswer = Colors.green;
Color falseAnswer = Colors.red;
Color main_color = const Color.fromARGB(100, 0, 212, 255);
