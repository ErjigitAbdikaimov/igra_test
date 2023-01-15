class Suroo {
  const Suroo({
    required this.text,
    required this.image,
    required this.jooptor,
  });
  final String text;
  final String image;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({required this.text, this.isTrue = false});
  final String text;
  final bool isTrue;
}

List<Suroo> asiaQuestenos = [s1, s2, s3, s4, s5, s6, s7];

const s1 = Suroo(
  text: 'Пекин',
  image: 'kutay',
  jooptor: [
    Joop(text: 'Казакстан'),
    Joop(text: 'Япония'),
    Joop(text: 'Корея'),
    Joop(text: 'Кытай', isTrue: true),
  ],
);
const s2 = Suroo(
  text: 'Астана',
  image: 'kazakstan',
  jooptor: [
    Joop(text: 'Казакстан', isTrue: true),
    Joop(text: 'Япония'),
    Joop(text: 'Корея'),
    Joop(text: 'Кытай'),
  ],
);
const s3 = Suroo(
  text: 'Корея',
  image: 'korea',
  jooptor: [
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Озбекстан'),
    Joop(text: 'Корея', isTrue: true),
    Joop(text: 'Кытай'),
  ],
);
const s4 = Suroo(
  text: 'Бишкек',
  image: 'kyrgyzstan',
  jooptor: [
    Joop(text: 'Кытай'),
    Joop(text: 'Озбекстан'),
    Joop(text: 'Корея'),
    Joop(text: 'Кыргызстан', isTrue: true),
  ],
);
const s5 = Suroo(
  text: 'Япония',
  image: 'yaponya',
  jooptor: [
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Токио', isTrue: true),
    Joop(text: 'Корея'),
    Joop(text: 'Кытай'),
  ],
);
const s6 = Suroo(
  text: 'Ташкент',
  image: 'ozbekstan',
  jooptor: [
    Joop(text: 'Кыргызстан'),
    Joop(text: 'Корея'),
    Joop(text: 'Озбекстан', isTrue: true),
    Joop(text: 'Кытай'),
  ],
);
const s7 = Suroo(
  text: 'Москва',
  image: 'moskov',
  jooptor: [
    Joop(text: 'москва', isTrue: true),
    Joop(text: 'Корея'),
    Joop(text: 'Озбекстан'),
    Joop(text: 'Кытай'),
  ],
);
