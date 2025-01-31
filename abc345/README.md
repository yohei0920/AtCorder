## 教材

A - Leftrightarrow
https://atcoder.jp/contests/abc345/tasks/abc345_a

B - Integer Division Returns
https://atcoder.jp/contests/abc345/tasks/abc345_b

## かかった時間
a: 5分
b: 10分

## 学び
### b問題
* Rubyの Float は IEEE 754 の 64-bit浮動小数点数 を使用しており、約 16 桁の精度しかない
* だから`(num + 9) / 10`のように+9することで桁が上がる
* +10にしないのは10の倍数の時、意図しない繰り上がりになってしまうため