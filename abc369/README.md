## 教材

A - 369
https://atcoder.jp/contests/abc369/tasks/abc369_a

## かかった時間
5分

## 問題の考え方
a = 5, b = 7の場合
aより小さい数とbより大きい数の2つが確実に存在する
aとbの間が奇数(またはaとbの絶対値差が偶数)なら中間が存在するため1つ存在する

## 学んだこと
* 複数inputを分割代入して、integer型にする
  * `a, b = gets.chomp.split.map(&:to_i)`