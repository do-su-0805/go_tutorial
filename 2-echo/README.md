# 気づいたこと

## このプログラムの意図通りに動かない？
- おそらく、改行認識したら止まるって意味だと思うんだけど、止まらない
    ```
    $ ./2-echo TEST \
    > TEST \
    > TEST
    TEST TEST TEST
    ```
- こうしてもダメ
    ```
    $ cat newline
    TEST
    TEST
    TEST
    $ cat newline | xargs ./2-echo
    TEST TEST TEST
    ```
### って思ってたんだけど、勘違いでした。
- `var omitNewline = flag.Bool("n", false, "don't print final newline")` のこと
    - 第一引数: `-n` で有効
    - 第二引数: default ( `-n` しなかった場合) は false 
    - 第三引数: help メッセージでした。
- その上で改めてソースを読んで挙動理解
    - `-n` つけない。
    ```
    $ cat newline | xargs ./2-echo
    TEST TEST TEST
    - `-n` つける
    $ cat newline | xargs ./2-echo -n
    TEST TEST TEST$
    ```
- 最後に改行を足さないのか。よく考えたら `echo` 自体がそうか。
    - `-n` つけない。
    ```
    $ cat newline | xargs echo
    TEST TEST TEST
    - `-n` つける
    $ cat newline | xargs echo -n
    TEST TEST TEST$
    ```

