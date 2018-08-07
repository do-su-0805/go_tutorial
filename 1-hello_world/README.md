# 気づいたこと

## import 文のこと

- `import fmt "fmt"` ってなんぞや
    - [ここ](https://qiita.com/taji-taji/items/5a4f17bcf5b819954cc1) を見て見たところ、 alias 貼っているみたい
- 試してみた。
    ```
    diff --git a/1-hello_world/main.go b/1-hello_world/main.go
    index 148cbd2..f9645e2 100644
    --- a/1-hello_world/main.go
    +++ b/1-hello_world/main.go
    @@ -1,7 +1,8 @@
     package main
    
    -import fmt "fmt"
    +// import fmt "fmt"
    +import f "fmt"
    
     func main() {
    -       fmt.Printf("Hello, world; or Καλημέρα κόσμε; or こんにちは 世界\n")
    +       f.Printf("Hello, world; or Καλημέρα κόσμε; or こんにちは 世界\n")
     }
   ```
   - これでも動いた。そういうことやな。

## fmt パッケージの事
- [参考](https://golang.org/pkg/fmt/)
- Go のパッケージは、 function の一文字目を大文字にするらしい。
- 使う気にならないと調べないし、その時になったら調べるからここでは深くは追わない。

## go のコンパイラについて
- どうやら二種類あるらしい。普段 `go build` とかするのは gc (go compiler と思ったんだけど、そうすると gc compiler って呼ばれるの不自然) 
    - `gc` が多分普段使っている方。本当は `6g` とか `8g` とからしい。 [参考](https://ja.wikipedia.org/wiki/Go_\(%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E8%A8%80%E8%AA%9E\))
    - もう一つが gccgo らしく、gcc に入ってるらしい

## `package main` について
- `main` の時だけは、`func main` が実行される
- `package XXX` なら、`import XXX` できるという認識
- [このあたり](http://cuto.unirita.co.jp/gostudy/post/go-package/) をあとで読む必要が出てきそう
