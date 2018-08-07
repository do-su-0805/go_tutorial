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

