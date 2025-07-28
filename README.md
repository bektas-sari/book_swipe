# BookSwipe

> Kaydırarak kitap keşfetmenin en eğlenceli ve hızlı yolu.

![BookSwipe Demo](screenshots/demo.gif)

---

## 📖 İçindekiler

1. [Genel Bakış](#genel-bakış)
2. [Özellikler](#özellikler)
3. [Ekran Görüntüleri](#ekran-görüntüleri)
4. [Kurulum](#kurulum)
5. [Kullanım](#kullanım)
6. [Proje Yapısı](#proje-yapısı)
7. [Bağımlılıklar](#bağımlılıklar)
8. [Geliştirme Süreci](#geliştirme-süreci)
9. [Katkıda Bulunma](#katkıda-bulunma)
10. [Lisans](#lisans)
11. [🚀 Geliştirici](#🚀-geliştirici)

---

## 📝 Genel Bakış

BookSwipe, kitap meraklılarının ellerindeki Flutter uygulamasıyla, **Tinder tarzı kaydırma hareketi** (swipe) sayesinde okudukları ve okumadıkları kitapları hızla işaretleyebilmelerini sağlar. JSON tabanlı yerli kitap veritabanıyla ve Open Library kapak görsel entegrasyonuyla profesyonel bir okuma takibi deneyimi sunar.

* **Platform:** Android (iOS desteği kolayca eklenebilir)
* **Dil:** Dart & Flutter
* **Durum:** MVP (Minimum Viable Product)

---

## ✨ Özellikler

* **Tinder Benzeri Kaydırma:** Sağ kaydır → Okudum, Sol kaydır → İlgilenmiyorum.
* **Gerçek Türkçe Kitap Verisi:** `assets/books.json` dosyası üzerinden yerli kitap listesi.
* **Kapak Görselleri:** ISBN ile Open Library Covers API entegrasyonu.
* **Performanslı Animasyon:** SwipeCards paketi kullanılarak akıcı, native görünümlü animasyon.
* **Kolay Çıkış:** Uygulamadan tek dokunuşla çıkış butonu (AppBar).

---

## 📱 Ekran Görüntüleri

<p align="center">
  <img src="screenshots/screen1.png" alt="Ana Ekran" width="200" />
  <img src="screenshots/screen2.png" alt="Kaydırma Animasyonu" width="200" />
  <img src="screenshots/screen3.png" alt="Tüm Kitaplar Kaydırıldı" width="200" />
</p>

---

## 🚀 Kurulum

Aşağıdaki adımları izleyerek projeyi yerelde çalıştırabilirsiniz:

1. Depoyu klonlayın:

   ```bash
   git clone https://github.com/bektas-sari/book_swipe.git
   cd book_swipe
   ```
2. Flutter bağımlılıklarını yükleyin:

   ```bash
   flutter pub get
   ```
3. Uygulamayı çalıştırın:

   ```bash
   flutter run
   ```

> **Not:** Android için NDK sürüm uyumsuzluğu yaşanmaması adına `android/app/build.gradle.kts` dosyasına `ndkVersion = "27.0.12077973"` eklenmelidir.

---

## 🎮 Kullanım

1. Uygulama açıldığında kitap kartları üst üste yığılmış olarak görünür.
2. **Sağa kaydır** → "Okudum"
3. **Sola kaydır** → "Atladım"
4. Tüm kitaplar kaydırıldığında bir uyarı mesajı gösterilir.
5. Uygulamadan çıkmak için AppBar'daki çıkış ikonuna dokunun.

---

## 🏗️ Proje Yapısı

```
book_swipe/
├─ android/
├─ assets/
│  └─ books.json
├─ lib/
│  ├─ main.dart
│  ├─ models/
│  │  └─ book.dart
│  ├─ services/
│  │  └─ book_service.dart
│  ├─ screens/
│  │  └─ home_page.dart
│  └─ widgets/
│     └─ book_card.dart
├─ test/
└─ pubspec.yaml
```

---

## 📦 Bağımlılıklar

* **flutter:** sdk: flutter
* **swipe\_cards:** ^2.0.0
* **http:** ^0.13.6

---

## 🛠️ Geliştirme Süreci

1. JSON tabanlı kitap listesinin `assets/books.json` ile projeye eklenmesi.
2. `Book` model sınıfının oluşturulması ve JSON parsing işlemi.
3. Kapak görselleri için Open Library API entegrasyonu.
4. SwipeCards paketi ile kaydırma mekaniğinin tasarlanması.
5. Uygulama arayüzü ve AppBar’a çıkış butonu eklenmesi.
6. Performans ve kullanıcı deneyimi testleri.

---

## 🤝 Katkıda Bulunma

1. Fork oluşturun ([https://github.com/bektas-sari/book\_swipe/fork](https://github.com/bektas-sari/book_swipe/fork)).
2. Yeni bir branch oluşturun: `git checkout -b feature/YourFeature`.
3. Değişikliklerinizi commit edin: `git commit -m 'Add some feature'`.
4. Push edin: `git push origin feature/YourFeature`.
5. Bir Pull Request açın.

---

## 📜 Lisans

Bu proje MIT lisansı ile lisanslanmıştır. Detaylar için [LICENSE](LICENSE) dosyasına bakabilirsiniz.

---

## 🚀 Geliştirici

## 👤 Developer

**Bektas Sari**
Email: [bektas.sari@gmail.com](mailto:bektas.sari@gmail.com)
GitHub: [https://github.com/bektas-sari](https://github.com/bektas-sari)
LinkedIn: [https://www.linkedin.com/in/bektas-sari](https://www.linkedin.com/in/bektas-sari)
ResearchGate: [https://www.researchgate.net/profile/Bektas-Sari-3](https://www.researchgate.net/profile/Bektas-Sari-3)
Academia: [https://independent.academia.edu/bektassari](https://independent.academia.edu/bektassari)
