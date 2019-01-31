require(twitteR)
require(RCurl)
require(ggmap)
Consumer_key<-"eApCmbYKYV5tPDlgANXPGYvaF"
Consumer_secret<-"Hb0JcZulZD2NtkzosB2fCxsj3UW8Ljb8ekXdn5tBKrkDZ87SFX"
Access_token<-"1090445466293202945-rpXy2dXQiXIgSRQ2KZUy5mRLt3FHUu"
Access_secret<-"idXFEKLMH69MUWJfdQf45XALKCZD47kxxiRUIuJcgsTdD"

setup_twitter_oauth(Consumer_key,Consumer_secret,Access_token,Access_secret)
crypt_tweets <- searchTwitter('blockchain', n = 1000, lang = "en",since="2019-01-27",until="2019-01-28")
text_data<-sapply(crypt_tweets, function(x) x$getText())
#str(text_data)
text_data1<-data.frame(text_data)
write.table(text_data2, file ="D:/project/text_data2.txt")