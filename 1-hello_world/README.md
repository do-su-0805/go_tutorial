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
