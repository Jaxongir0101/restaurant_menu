class Meal {
  int? id;
  String? name;
  String? details;
  String? imageUrl;
  String? cost;
  String? type;
  String? time;
  int? ingCount;
  int? bannerColor;

  Meal({
    this.id,
    this.name,
    this.details,
    this.imageUrl,
    this.time,
    this.ingCount,
    this.bannerColor,
    this.cost,
    this.type,
  });

  static List<Meal> mealRu = [
    Meal(
      id: 1,
      name: 'Шашлык бараньих ребрышек',
      details:
          'Что бы мне не говорили, а самый вкусный шашлык получается из баранины.'
          ' Есть правда один минус. На базаре невозможно купить нормальную баранину, '
          'все скупают на корню шашлычники. \n\nНе беда, если руки растут из нужного места,'
          ' шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '
          'Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи',
      imageUrl: 'assets/meal1.png',
      time: '15 min',
      ingCount: 5,
      bannerColor: 0xffF2DFE1,
      cost: '130 000 sum',
      type: 'Кавказская 4',
    ),
    Meal(
      id: 2,
      name: 'Шашлык',
      details:
          'Что бы мне не говорили, а самый вкусный шашлык получается из баранины.'
          ' Есть правда один минус. На базаре невозможно купить нормальную баранину, '
          'все скупают на корню шашлычники. \n\nНе беда, если руки растут из нужного места,'
          ' шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '
          'Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи',
      imageUrl: 'assets/meal2.png',
      time: '20 min',
      ingCount: 4,
      bannerColor: 0xffDCC7B1,
      cost: '900 000 sum',
      type: 'Кавказская',
    ),
    Meal(
        id: 3,
        name: 'Шашлык 3',
        details:
            'Что бы мне не говорили, а самый вкусный шашлык получается из баранины.'
            ' Есть правда один минус. На базаре невозможно купить нормальную баранину, '
            'все скупают на корню шашлычники. \n\nНе беда, если руки растут из нужного места,'
            ' шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '
            'Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи',
        imageUrl: 'assets/meal3.png',
        time: '25 min',
        ingCount: 6,
        bannerColor: 0xffFFC5A8,
        cost: '150 000 sum',
        type: 'Кавказская 2'),
    Meal(
        id: 4,
        name: 'Шашлык 4',
        details:
            'Что бы мне не говорили, а самый вкусный шашлык получается из баранины.'
            ' Есть правда один минус. На базаре невозможно купить нормальную баранину, '
            'все скупают на корню шашлычники. \n\nНе беда, если руки растут из нужного места,'
            ' шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '
            'Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи',
        imageUrl: 'assets/meal4.png',
        time: '19 min',
        ingCount: 5,
        bannerColor: 0xff71C3A1,
        cost: '200 000 sum',
        type: 'Кавказская 3'),
    Meal(
        id: 5,
        name: 'Шашлык 5',
        details:
            'Что бы мне не говорили, а самый вкусный шашлык получается из баранины.'
            ' Есть правда один минус. На базаре невозможно купить нормальную баранину, '
            'все скупают на корню шашлычники. \n\nНе беда, если руки растут из нужного места,'
            ' шашлык можно приготовить из того что оставили нам эти коршуны. Будем готовить бараньи ребрышки. '
            'Не те кусочки, где больше всего мяса, а те кусочки, которые остались после налета саранчи',
        imageUrl: 'assets/meal5.png',
        time: '21 min',
        ingCount: 7,
        bannerColor: 0xffA8B6FF,
        cost: '190 000 sum',
        type: 'Кавказская 3'),
  ];

  static List<Meal> mealUz = [
    Meal(
      id: 1,
      name: "Barbekyu qo'zichoq qovurg'alari",
      details:
          " Menga nima deyishmasin, eng mazali kabob qo‘zi go‘shtidan chiqadi, — dedi."
          "'Bir salbiy tomoni bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q,"
          " — Hamma uzumzorda shish kabob sotib oladi. \n\nQo'llar to'g'ri joydan o'sadimi, farqi yo'q,"
          "Bu uçurtmalar bizga qoldirgan narsadan barbekyu pishirishingiz mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. "
          "Eng ko'p go'shtli bo'laklar emas, balki chigirtka bosqinidan keyin qolgan bo'laklar",
      imageUrl: 'assets/meal1.png',
      time: '15 min',
      ingCount: 5,
      bannerColor: 0xffF2DFE1,
      cost: '130 000 sum',
      type: 'kavkaz 4',
    ),
    Meal(
      id: 2,
      name: 'shashlik 2',
      details: "— Nima deyishmasin, eng mazali kabob qo'zi go'shtidan chiqadi."
          "Bir salbiy tomoni bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q,"
          " — Hamma uzumzorda shish kabob sotib oladi. \n\nQo'llar to'g'ri joydan o'sadimi, farqi yo'q,"
          " Bu uçurtmalar bizga qoldirgan narsadan barbekyu pishirishingiz mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. "
          "Eng ko'p go'shtli bo'laklar emas, balki chigirtka bosqinidan keyin qolgan bo'laklar",
      imageUrl: 'assets/meal2.png',
      time: '20 min',
      ingCount: 4,
      bannerColor: 0xffDCC7B1,
      cost: '900 000 sum',
      type: 'kavkaz',
    ),
    Meal(
        id: 3,
        name: 'shashlik 3',
        details:
            "— Nima deyishmasin, eng mazali kabob qo'zi go'shtidan chiqadi."
          "Bir salbiy tomoni bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q,"
          " — Hamma uzumzorda shish kabob sotib oladi. \n\nQo'llar to'g'ri joydan o'sadimi, farqi yo'q,"
          " Bu uçurtmalar bizga qoldirgan narsadan barbekyu pishirishingiz mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. "
          "Eng ko'p go'shtli bo'laklar emas, balki chigirtka bosqinidan keyin qolgan bo'laklar",
        imageUrl: 'assets/meal3.png',
        time: '25 min',
        ingCount: 6,
        bannerColor: 0xffFFC5A8,
        cost: '150 000 sum',
        type: 'kavkaz 2'),
    Meal(
        id: 4,
        name: 'shashlik 4',
        details:
        "— Nima deyishmasin, eng mazali kabob qo'zi go'shtidan chiqadi."
          "Bir salbiy tomoni bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q,"
          " — Hamma uzumzorda shish kabob sotib oladi. \n\nQo'llar to'g'ri joydan o'sadimi, farqi yo'q,"
          " Bu uçurtmalar bizga qoldirgan narsadan barbekyu pishirishingiz mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. "
          "Eng ko'p go'shtli bo'laklar emas, balki chigirtka bosqinidan keyin qolgan bo'laklar",
        imageUrl: 'assets/meal4.png',
        time: '19 min',
        ingCount: 5,
        bannerColor: 0xff71C3A1,
        cost: '200 000 sum',
        type: 'kavkaz 3'),
    Meal(
        id: 5,
        name: 'shashlik 5',
        details:
            "— Nima deyishmasin, eng mazali kabob qo'zi go'shtidan chiqadi."
          "Bir salbiy tomoni bor. Bozorda oddiy qo'zichoq sotib olishning iloji yo'q,"
          " — Hamma uzumzorda shish kabob sotib oladi. \n\nQo'llar to'g'ri joydan o'sadimi, farqi yo'q,"
          " Bu uçurtmalar bizga qoldirgan narsadan barbekyu pishirishingiz mumkin. Keling, qo'zichoq qovurg'alarini pishiramiz. "
          "Eng ko'p go'shtli bo'laklar emas, balki chigirtka bosqinidan keyin qolgan bo'laklar",
        imageUrl: 'assets/meal5.png',
        time: '21 min',
        ingCount: 7,
        bannerColor: 0xffA8B6FF,
        cost: '190 000 sum',
        type: 'kavkaz 3'),
  ];

  static List<Meal> mealEn = [
    Meal(
      id: 1,
      name: "Skewer of lamb ribs",
      details:
           "- No matter what they say, the most delicious kebab comes from lamb."
           "There's a downside. It's impossible to buy an ordinary lamb in the market,"
           "Everyone buys kebabs in the vineyard. \ N \ nIt doesn't matter if the hands grow in the right place."
           "You can cook a barbecue out of what these kits left us. Let's cook lamb ribs."
           "Not the most meaty pieces, but the pieces left after the locust invasion," ,
      imageUrl: 'assets/meal1.png',
      time: '15 min',
      ingCount: 5,
      bannerColor: 0xffF2DFE1,
      cost: '130 000 sum',
      type: 'kavkaz 4',
    ),
    Meal(
      id: 2,
      name: 'shashlik 2',
      details:   "- No matter what they say, the most delicious kebab comes from lamb."
           "There's a downside. It's impossible to buy an ordinary lamb in the market,"
           "Everyone buys kebabs in the vineyard. \ N \ nIt doesn't matter if the hands grow in the right place."
           "You can cook a barbecue out of what these kits left us. Let's cook lamb ribs."
           "Not the most meaty pieces, but the pieces left after the locust invasion," ,
      imageUrl: 'assets/meal2.png',
      time: '20 min',
      ingCount: 4,
      bannerColor: 0xffDCC7B1,
      cost: '900 000 sum',
      type: 'kavkaz',
    ),
    Meal(
        id: 3,
        name: 'shashlik 3',
        details:
           "- No matter what they say, the most delicious kebab comes from lamb."
           "There's a downside. It's impossible to buy an ordinary lamb in the market,"
           "Everyone buys kebabs in the vineyard. \ N \ nIt doesn't matter if the hands grow in the right place."
           "You can cook a barbecue out of what these kits left us. Let's cook lamb ribs."
           "Not the most meaty pieces, but the pieces left after the locust invasion," ,
        imageUrl: 'assets/meal3.png',
        time: '25 min',
        ingCount: 6,
        bannerColor: 0xffFFC5A8,
        cost: '150 000 sum',
        type: 'kavkaz 2'),
    Meal(
        id: 4,
        name: 'shashlik 4',
        details:
         "- No matter what they say, the most delicious kebab comes from lamb."
           "There's a downside. It's impossible to buy an ordinary lamb in the market,"
           "Everyone buys kebabs in the vineyard. \ N \ nIt doesn't matter if the hands grow in the right place."
           "You can cook a barbecue out of what these kits left us. Let's cook lamb ribs."
           "Not the most meaty pieces, but the pieces left after the locust invasion," ,
        imageUrl: 'assets/meal4.png',
        time: '19 min',
        ingCount: 5,
        bannerColor: 0xff71C3A1,
        cost: '200 000 sum',
        type: 'kavkaz 3'),
    Meal(
        id: 5,
        name: 'shashlik 5',
        details:
           "- No matter what they say, the most delicious kebab comes from lamb."
           "There's a downside. It's impossible to buy an ordinary lamb in the market,"
           "Everyone buys kebabs in the vineyard. \ N \ nIt doesn't matter if the hands grow in the right place."
           "You can cook a barbecue out of what these kits left us. Let's cook lamb ribs."
           "Not the most meaty pieces, but the pieces left after the locust invasion," ,
        imageUrl: 'assets/meal5.png',
        time: '21 min',
        ingCount: 7,
        bannerColor: 0xffA8B6FF,
        cost: '190 000 sum',
        type: 'kavkaz 3'),
  ];


}
