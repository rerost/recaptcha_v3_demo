# recaptcha_v3_demo
reCAPTCHA v3 のデモ

http://localhost:3000/recaptcha_v3.html
![image](https://user-images.githubusercontent.com/5201588/42306047-74624930-8068-11e8-8b9f-3a7fc7c1eb78.png)

http://localhost:3000/check
![image](https://user-images.githubusercontent.com/5201588/42306051-7ca2935c-8068-11e8-9c23-fe7caf55f3d4.png)


### 初期設定
```
gem install faraday
gem install selenium-webdriver
```

`RECAPTCHA_SITE_KEY`, `RECAPTCHA_SECRET_KEY` を自分のものに設定
```
root = File.expand_path "/Users/user/Project/slide_demo"
```
の`/Users/user/Project/slide_demo`をこのレポジトリへのパスへ

### サーバの起動
```
ruby server.rb
```

### Botでのテスト
```
ruby bot.rb
```
