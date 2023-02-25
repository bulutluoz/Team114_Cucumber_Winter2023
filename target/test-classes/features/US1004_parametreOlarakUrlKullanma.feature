Feature: US1005 Url'i parametre olarak kullanma

  Scenario: TC09 kullanici url icin parametre kullanabilmeli

    Given kullanici "youtubeUrl" anasayfaya gider
    Then url'in "youtube" icerdigini test eder
    And Sayfayi kapatir

