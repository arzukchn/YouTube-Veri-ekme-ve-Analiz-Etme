
install.packages("tuber") 
install.packages("httr") 
install.packages("purrr") 
install.packages("tidyverse") 
install.packages("httpuv") 
install.packages("ROAuth") 
install.packages("writexl") 
install.packages("xlsx") 
install.packages("readxl")
install.packages("tm")
install.packages("tidytext")
install.packages("wordcloud")
install.packages("ggplot2")

library(tuber) 
library(httr) 
library(purrr) 
library(tidyverse) 
library(httpuv) 
library(ROAuth) 
library(writexl) 
library(xlsx) 
library(readxl)
library(tm)
library(tidytext)
library(wordcloud)
library(ggplot2)


clientid <- "353334199957-136fdq85jj2d7daom8ud1qvin1mj2h8g.apps.googleusercontent.com"
client_secret <- "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"
yt_oauth(clientid, client_secret, token = '')
get_all_comments(video_id = "jntEjPEFgmg")
comments1 <- get_all_comments(video_id = "jntEjPEFgmg")
write_xlsx(comments1, "C:\\Youtube\\marmaradepremi.xlsx")

clientid <- "353334199957-136fdq85jj2d7daom8ud1qvin1mj2h8g.apps.googleusercontent.com"
client_secret <- "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"
yt_oauth(clientid, client_secret, token = '')
get_all_comments(video_id = "hA85HwqFA_o")
comments2 <- get_all_comments(video_id = "hA85HwqFA_o")
write_xlsx(comments2, "C:\\Youtube\\marmaradepremi2.xlsx")

clientid <- "353334199957-136fdq85jj2d7daom8ud1qvin1mj2h8g.apps.googleusercontent.com"
client_secret <- "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"
yt_oauth(clientid, client_secret, token = '')
get_all_comments(video_id = "hcP5b377tpQ")
comments3 <- get_all_comments(video_id = "hcP5b377tpQ")
write_xlsx(comments3, "C:\\Youtube\\marmaradepremi3.xlsx")

clientid <- "353334199957-136fdq85jj2d7daom8ud1qvin1mj2h8g.apps.googleusercontent.com"
client_secret <- "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"
yt_oauth(clientid, client_secret, token = '')
get_all_comments(video_id = "ALz_ME8kF74")
comments4 <- get_all_comments(video_id = "ALz_ME8kF74")
write_xlsx(comments4, "C:\\Youtube\\marmaradepremi4.xlsx")

clientid <- "353334199957-136fdq85jj2d7daom8ud1qvin1mj2h8g.apps.googleusercontent.com"
client_secret <- "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"
yt_oauth(clientid, client_secret, token = '')
get_all_comments(video_id = "vgpNHL2WryE")
comments5 <- get_all_comments(video_id = "vgpNHL2WryE")
write_xlsx(comments5, "C:\\Youtube\\marmaradepremi5.xlsx")

clientid <- "353334199957-136fdq85jj2d7daom8ud1qvin1mj2h8g.apps.googleusercontent.com"
client_secret <- "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"
yt_oauth(clientid, client_secret, token = '')
get_all_comments(video_id = "17Uj9eLHCDY")
comments6 <- get_all_comments(video_id = "17Uj9eLHCDY")
write_xlsx(comments6, "C:\\Youtube\\marmaradepremi6.xlsx")

clientid <- "353334199957-136fdq85jj2d7daom8ud1qvin1mj2h8g.apps.googleusercontent.com"
client_secret <- "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"
yt_oauth(clientid, client_secret, token = '')
get_all_comments(video_id = "uUakx0hRFGI")
comments7 <- get_all_comments(video_id = "uUakx0hRFGI")
write_xlsx(comments7, "C:\\Youtube\\marmaradepremi7.xlsx")



deprem <- read_xlsx(file.choose())
attach(deprem)

textOriginal<-str_replace_all(textOriginal, "#//S+"," ")
textOriginal<-str_replace_all(textOriginal, "@//S+"," ")
textOriginal<-str_replace_all(textOriginal, "[[:punct:][:blank:]]+"," ")
textOriginal<-str_to_lower(textOriginal)
textOriginal<-str_replace_all(textOriginal, "[<].*[>]"," ")
textOriginal<-gsub ("\uFFFD", "", textOriginal, fixed = TRUE)
textOriginal<-gsub ("\n", "", textOriginal, fixed = TRUE)
textOriginal<-str_replace_all (textOriginal, "[^[:alnum:]]", " ")
Sys.setlocale("LC_CTYPE", "en_US.UTF-8")

stopwords::stopwords("tr",source="stopwords-iso")

liste <- stopwords::stopwords("tr",source="stopwords-iso")

liste<- c("yayýnlarý", "arttýrsanýz", "biþey", "yapmýyor", "kanal", "gezip", 
          "söylüyor", "adam", "uyuyor", "7", "9", "10", "13", "i", "allah",
          "olacak", "mi", "stanbul", "bi", "naci", "mi", "2", "hocam", "abi",
          "1", "yýl","bey", "olacaðýný", "bekliyoruz", "üþümezsoy", "mümkün", 
          "konusunda", "yýlda", "dönüþüm", "nygma", "iþi", "oturuyorum", "takip",
          "teþekkür", "beklenen", "gerçek", "nin", "rahat", "demek", "içinde", 
          "geliyor", "yýlda", "binlerce", "yanlýþ", "kolay", "küçük", "demek", 
          "altýnda", "ders", "hala", "bey", "gerçekten", "size", "devam", "ediyorum",
          "yapan", "stanbulda", "diyor", "000", "yada", "cok", "eski", "tane", "olabilir",
          "icin", "sayýn", "olmayacak", "bbc", "250", "bence", "dan", "boþ", "yüzden", 
          "deðerli", "fatih", "korusun", "malasef", "tekrar", "azýndan", "etmek", "yapan",
          "videoyu", "gerekiyor", "hoca", "varsa", "aðacý", "gelen", "edin", "boþ", "alan",
          "250", "olasý", "inþaallah", "fazla", "görür", "000", "deðerli", "yüzden", "sürekli",
          "gün", "olucak", "kardeþim", "ayný", "teþekkürler", "25", "umarým", "sonrasý", 
          "olmuþ", "ne", "þimdiden", "bugün", "yere", "varsýnýz", "þuan", "belli","evet",
          "karþý", "rabbim", "bende", "harika", "yapar", "100", "ýn", "ederim", "lazým", "anda",
          "resmen", "257", "youtube", "diyorlar", "üzerinde", "arkadaþlar", "sayýsý", "diyorlar",
          "kesin", "hemen", "yýlýnda", "1766", "yerde", "falan", "saniye", "hakkýnda","degil",
          "son", "sonrasý", "ortaya", "geri", "resmen", "etsin", "hocanýn", "program", "1509", 
          "falan", "diyorlar", "yapar", "hale", "1509", "istiyorum", "257", "video", "falan", 
          "geç", "kaç", "degil", "veren", "ýn", "yaþýyorum", "geçmiþ", "gider", "bugün", "den",
          "kaç", "yaþayan", "saniye", "2023", "ayný", "bilir", "arasýnda", "açýk", "geçen", "varsýnýz",
          "lazým", "bilir", "yer", "ederim", "arkadaþlar", "1766", "olmuþ", "n", "ider", "degil", 
          "hayýr", "lazým", "adamý", "dayanýklý", "yýlýnda", "arasýnda", "hale", "stanbulu", "257", 
          "1509", "iþin", "düþünüyorum", "önemli", "lazým", "etsin", "ýdaþlar", "rkez", "helal", "diyorlar",
          "özellikle", "hemen", "inþaallah", "helal", "istiyorum", "uzun", "kaç", "lazým", "veren", "den",
          "adamý", "arkadaþlar", "þuan", "hocanýn", "den", "önemli", "ýn", "1509", "2023", "geri", "ortaya",
          "umarým", "257", "100", "etsin", "teþekkürler", "sekilde", "videonun", "hayýr", "yýlýnda", "257",
          "lazým", "falan", "degil", "tabi", "gider", "olmuþ", "düþünüyorum", "1766", "100", "videonun",
          "üzerine", "yýlýnda", "varsýnýz", "youtube", "hemen", "istiyorum", "arasýnda", "sahip", "varsýnýz",
          "bende", "tabi", "bende", "güzel", "hakkýnda", "olanlar", "yaþýyorum", "istiyorum", "257", "2023", 
          "ayný", "uzun", "arkadaþlar", "youtube", "1509", "1766", "kaç", "teþekkürler", "videonun", "arasýnda", 
          "arasýnda", "kaç", "257", "1509", "2023", "100", "youtube", "gelecek", "evet", "önemli", "olanlar",
          "den", "dua", "ýn", "anda", "257", "100", "üzerine", "þekilde", "degil", "hale", "bende")

textOriginal<-removeWords(textOriginal, liste)

veri<- data.frame(text=textOriginal)

kelimeler <- veri %>% mutate(linenumber = row_number()) %>% unnest_tokens(word, text)
head(kelimeler)

kelimeler %>% 
  count(word, sort = TRUE) %>%
  filter(n>200) %>%
  mutate(word = reorder(word, n)) %>%
  filter(!is.na(word)) %>%
  filter(n > 0) %>%
  ggplot(aes(word, n))+
  geom_col()+
  xlab(NULL)+
  coord_flip()+
  theme_minimal()+
  ggtitle("En Çok Tekrar Eden Kelimelerin Frekans Analizi")

wordcloud(kelimeler$word, min.freq = 5, max.words = 200, scale = c(2,0.4), colors = brewer.pal(8, "Dark2"), random.color = T, random.order = F,
          main="marmara_depremi")


install.packages("plyr")
library(plyr)

install.packages("ggeasy")
library(ggeasy)

pos.words <- c("akýl","can","yasak","plan","düzen","önlem","teþekkür","iyi","dikkat","deðerli",
               "tedbir","emek","umut","uygun","saðlam","gülmek","hoþ","bilgi","önemli","düzgün",
               "geliþim","iyimser","barýþ","yaratýcý","baþarý", "sevgi","maþallah","hayatlar",
               "tebrikler","güzel","saðlýk","olumlu","güncel","yardým","güven","hazýrlýk",
               "tedbir","inþaat","iyimser","korunma","yardým","umarým","önlem","kahramanlýk",
               "analiz","çözüm","koordinasyon","güvenlik","analiz","bilim","güç","hazýrlýk",
               "tedbir","yapý","güçlendirilmiþ","bilim","tatbikat","imar","güçlendirme",
               "tebrikler","hayatta kalma","hazýrlýk","temiz","kolay","yardýmsever","hayýrlý",
               "tatlý","güvenlik","yapým","umarým","tavsiye","seviyorum")

neg.words <- c("ölüler","risk","korku","yanlýþ","tehlike","yýkým","hasar","enkaz","hata","ölüm",
               "yapmýyor","yazýk","Kaos", "akýllanmýyor","iptal","bela","býkmak","saçmalama","ahlar",
               "olanaksýz","zarar","korku","dökülecek","uykusuz","yorgun","yýkým","kayýp","felaket",
               "kötü","çalmak","yargýlamak","ceza","can kaybý","üzülmek","panik","yangýn", "yaðma",
               "suç","cahiliyet","eski","eleþtiri","karamsar","hastalýk","nefret","baþarýsýz","hüzün",
               "zorluk","hayal kýrýklýðý","cehennem","kaza","saçmalýk","kötü","kýymet bilinmez",
               "çürümüþ","umursamaz","kýrýk","sýkýntý","risk","ölüm","hasar","felaket","endiþe","tehlike",
               "yýkýlmak","tehlikeli","acý","kaza","çürük","sarsýntý","ölü","kayýp","felaket","keder",
               "can kaybý","yýkýcý","çürük","endiþe","ekonomik batarlýk","ölücez","tahliye","acil",
               "göçük","yazýklar olsun","unutulur","tehlikeli","felaket","yangýn","çarpýk","korkunç",
               "zorunlu","vefat","katil","açlýk","susuz","projesiz","plansýz","hasar","zor","üzgün",
               "çökme","susuzluk","mal kaybý","tehlike","kötü zihniyet","vefat","ceset","yýkýcý",
               "tedirgin","dökülüyor","korkuyorum","korkunç","sakat","maðdur","çaresiz","virüs","sýkýntý",
               "kayýp","tehlike","panik","tehlike","berbat")


score.sentiment <- function(sentences, pos.words, neg.words, .progress = 'none') 
{
  require(plyr)
  require(stringr)
  scores <- laply(sentences, function(sentence, pos.words, neg.words) {
    sentence <- gsub('https://', '', sentence)
    sentence <- gsub('http://', '', sentence)
    sentence <- gsub('[^[:graph:]]', '', sentence)
    sentence <- gsub('[[:punct:]]', '', sentence)
    sentence <- gsub('[[:cntrl:]]', '', sentence)
    sentence <- gsub('\\d+', '', sentence)
    sentence <- str_replace_all(sentence, "[^[:graph:]]", " ")
    sentence <- tolower(sentence)
    word.list <- str_split(sentence, '\\s+')
    words <- unlist(word.list)
    pos.matches <- match(words, pos.words)
    neg.matches <- match(words, neg.words)
    pos.matches <- !is.na(pos.matches)
    neg.matches <- !is.na(neg.matches)
    score <- sum(pos.matches) - sum(neg.matches)
    return(score)
  }, pos.words, neg.words, .progress = .progress)
  scores.df <- data.frame(score = scores, text = sentences)
  return(scores.df)
}

analysis <- score.sentiment(kelimeler$word, pos.words, neg.words)
 table(analysis$score)

analysis %>%
  ggplot(aes(x = score)) +
  geom_histogram(binwidth = 1, fill = "lightblue") +
  ylab("Frekans") +
  xlab("Duygu Skoru") +
  ggtitle("Yorumlarýn Duyarlýlýk Puanlarýnýn Daðýlýmý") +
  ggeasy::easy_center_title()

neutral <- length(which(analysis$score == 0))
positive <- length(which(analysis$score > 0))
negative <- length(which(analysis$score < 0))
toplam <- positive + neutral + negative
Duygular <- c("Pozitif", "Nötr", "Negatif")


deprem <- c((positive / toplam) * 100, (neutral / toplam) * 100, (negative / toplam) * 100)
output <- data.frame(Duygular, deprem)
output$Duygular <- factor(output$Duygular, levels = Duygular)
ggplot(output, aes(x = Duygular, y = deprem)) +
  geom_bar(stat = "identity", aes(fill = deprem)) +
  ggtitle("Duygu Analizine Göre Pozitif, Negatif ve Nötr Kelimelerin Yüzde Grafiði")

head((positive / toplam) * 100)
head((neutral / toplam) * 100)
head((negative / toplam) * 100)























