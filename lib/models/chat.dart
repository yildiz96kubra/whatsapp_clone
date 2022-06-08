class Chat {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  Chat(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});
}

List<Chat> fakeData = [
  Chat(
      name: "Kübra",
      message: "Merhaba nasılsın?",
      time: "13:30",
      avatarUrl:
          "https://static.birgun.net/resim/haber-detay-resim/2020/01/02/3-uncu-kopru-gidis-gelis-44-lira-669505-5.jpg"),
  Chat(
      name: "Amine",
      message: "nerdesin?",
      time: "13:32",
      avatarUrl:
          "https://static.birgun.net/resim/haber-detay-resim/2020/01/02/3-uncu-kopru-gidis-gelis-44-lira-669505-5.jpg"),
  Chat(
      name: "Berkan",
      message: "what are you doing?",
      time: "13:33",
      avatarUrl:
          "https://static.birgun.net/resim/haber-detay-resim/2020/01/02/3-uncu-kopru-gidis-gelis-44-lira-669505-5.jpg")
];
