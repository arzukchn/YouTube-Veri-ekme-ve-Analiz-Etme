
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

liste<- c("yay�nlar�", "artt�rsan�z", "bi�ey", "yapm�yor", "kanal", "gezip", 
          "s�yl�yor", "adam", "uyuyor", "7", "9", "10", "13", "i", "allah",
          "olacak", "mi", "stanbul", "bi", "naci", "mi", "2", "hocam", "abi",
          "1", "y�l","bey", "olaca��n�", "bekliyoruz", "���mezsoy", "m�mk�n", 
          "konusunda", "y�lda", "d�n���m", "nygma", "i�i", "oturuyorum", "takip",
          "te�ekk�r", "beklenen", "ger�ek", "nin", "rahat", "demek", "i�inde", 
          "geliyor", "y�lda", "binlerce", "yanl��", "kolay", "k���k", "demek", 
          "alt�nda", "ders", "hala", "bey", "ger�ekten", "size", "devam", "ediyorum",
          "yapan", "stanbulda", "diyor", "000", "yada", "cok", "eski", "tane", "olabilir",
          "icin", "say�n", "olmayacak", "bbc", "250", "bence", "dan", "bo�", "y�zden", 
          "de�erli", "fatih", "korusun", "malasef", "tekrar", "az�ndan", "etmek", "yapan",
          "videoyu", "gerekiyor", "hoca", "varsa", "a�ac�", "gelen", "edin", "bo�", "alan",
          "250", "olas�", "in�aallah", "fazla", "g�r�r", "000", "de�erli", "y�zden", "s�rekli",
          "g�n", "olucak", "karde�im", "ayn�", "te�ekk�rler", "25", "umar�m", "sonras�", 
          "olmu�", "ne", "�imdiden", "bug�n", "yere", "vars�n�z", "�uan", "belli","evet",
          "kar��", "rabbim", "bende", "harika", "yapar", "100", "�n", "ederim", "laz�m", "anda",
          "resmen", "257", "youtube", "diyorlar", "�zerinde", "arkada�lar", "say�s�", "diyorlar",
          "kesin", "hemen", "y�l�nda", "1766", "yerde", "falan", "saniye", "hakk�nda","degil",
          "son", "sonras�", "ortaya", "geri", "resmen", "etsin", "hocan�n", "program", "1509", 
          "falan", "diyorlar", "yapar", "hale", "1509", "istiyorum", "257", "video", "falan", 
          "ge�", "ka�", "degil", "veren", "�n", "ya��yorum", "ge�mi�", "gider", "bug�n", "den",
          "ka�", "ya�ayan", "saniye", "2023", "ayn�", "bilir", "aras�nda", "a��k", "ge�en", "vars�n�z",
          "laz�m", "bilir", "yer", "ederim", "arkada�lar", "1766", "olmu�", "n", "ider", "degil", 
          "hay�r", "laz�m", "adam�", "dayan�kl�", "y�l�nda", "aras�nda", "hale", "stanbulu", "257", 
          "1509", "i�in", "d���n�yorum", "�nemli", "laz�m", "etsin", "�da�lar", "rkez", "helal", "diyorlar",
          "�zellikle", "hemen", "in�aallah", "helal", "istiyorum", "uzun", "ka�", "laz�m", "veren", "den",
          "adam�", "arkada�lar", "�uan", "hocan�n", "den", "�nemli", "�n", "1509", "2023", "geri", "ortaya",
          "umar�m", "257", "100", "etsin", "te�ekk�rler", "sekilde", "videonun", "hay�r", "y�l�nda", "257",
          "laz�m", "falan", "degil", "tabi", "gider", "olmu�", "d���n�yorum", "1766", "100", "videonun",
          "�zerine", "y�l�nda", "vars�n�z", "youtube", "hemen", "istiyorum", "aras�nda", "sahip", "vars�n�z",
          "bende", "tabi", "bende", "g�zel", "hakk�nda", "olanlar", "ya��yorum", "istiyorum", "257", "2023", 
          "ayn�", "uzun", "arkada�lar", "youtube", "1509", "1766", "ka�", "te�ekk�rler", "videonun", "aras�nda", 
          "aras�nda", "ka�", "257", "1509", "2023", "100", "youtube", "gelecek", "evet", "�nemli", "olanlar",
          "den", "dua", "�n", "anda", "257", "100", "�zerine", "�ekilde", "degil", "hale", "bende")

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
  ggtitle("En �ok Tekrar Eden Kelimelerin Frekans Analizi")

wordcloud(kelimeler$word, min.freq = 5, max.words = 200, scale = c(2,0.4), colors = brewer.pal(8, "Dark2"), random.color = T, random.order = F,
          main="marmara_depremi")


install.packages("plyr")
library(plyr)

install.packages("ggeasy")
library(ggeasy)

pos.words <- c("ak�l","can","yasak","plan","d�zen","�nlem","te�ekk�r","iyi","dikkat","de�erli",
               "tedbir","emek","umut","uygun","sa�lam","g�lmek","ho�","bilgi","�nemli","d�zg�n",
               "geli�im","iyimser","bar��","yarat�c�","ba�ar�", "sevgi","ma�allah","hayatlar",
               "tebrikler","g�zel","sa�l�k","olumlu","g�ncel","yard�m","g�ven","haz�rl�k",
               "tedbir","in�aat","iyimser","korunma","yard�m","umar�m","�nlem","kahramanl�k",
               "analiz","��z�m","koordinasyon","g�venlik","analiz","bilim","g��","haz�rl�k",
               "tedbir","yap�","g��lendirilmi�","bilim","tatbikat","imar","g��lendirme",
               "tebrikler","hayatta kalma","haz�rl�k","temiz","kolay","yard�msever","hay�rl�",
               "tatl�","g�venlik","yap�m","umar�m","tavsiye","seviyorum")

neg.words <- c("�l�ler","risk","korku","yanl��","tehlike","y�k�m","hasar","enkaz","hata","�l�m",
               "yapm�yor","yaz�k","Kaos", "ak�llanm�yor","iptal","bela","b�kmak","sa�malama","ahlar",
               "olanaks�z","zarar","korku","d�k�lecek","uykusuz","yorgun","y�k�m","kay�p","felaket",
               "k�t�","�almak","yarg�lamak","ceza","can kayb�","�z�lmek","panik","yang�n", "ya�ma",
               "su�","cahiliyet","eski","ele�tiri","karamsar","hastal�k","nefret","ba�ar�s�z","h�z�n",
               "zorluk","hayal k�r�kl���","cehennem","kaza","sa�mal�k","k�t�","k�ymet bilinmez",
               "��r�m��","umursamaz","k�r�k","s�k�nt�","risk","�l�m","hasar","felaket","endi�e","tehlike",
               "y�k�lmak","tehlikeli","ac�","kaza","��r�k","sars�nt�","�l�","kay�p","felaket","keder",
               "can kayb�","y�k�c�","��r�k","endi�e","ekonomik batarl�k","�l�cez","tahliye","acil",
               "g���k","yaz�klar olsun","unutulur","tehlikeli","felaket","yang�n","�arp�k","korkun�",
               "zorunlu","vefat","katil","a�l�k","susuz","projesiz","plans�z","hasar","zor","�zg�n",
               "��kme","susuzluk","mal kayb�","tehlike","k�t� zihniyet","vefat","ceset","y�k�c�",
               "tedirgin","d�k�l�yor","korkuyorum","korkun�","sakat","ma�dur","�aresiz","vir�s","s�k�nt�",
               "kay�p","tehlike","panik","tehlike","berbat")


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
  ggtitle("Yorumlar�n Duyarl�l�k Puanlar�n�n Da��l�m�") +
  ggeasy::easy_center_title()

neutral <- length(which(analysis$score == 0))
positive <- length(which(analysis$score > 0))
negative <- length(which(analysis$score < 0))
toplam <- positive + neutral + negative
Duygular <- c("Pozitif", "N�tr", "Negatif")


deprem <- c((positive / toplam) * 100, (neutral / toplam) * 100, (negative / toplam) * 100)
output <- data.frame(Duygular, deprem)
output$Duygular <- factor(output$Duygular, levels = Duygular)
ggplot(output, aes(x = Duygular, y = deprem)) +
  geom_bar(stat = "identity", aes(fill = deprem)) +
  ggtitle("Duygu Analizine G�re Pozitif, Negatif ve N�tr Kelimelerin Y�zde Grafi�i")

head((positive / toplam) * 100)
head((neutral / toplam) * 100)
head((negative / toplam) * 100)























