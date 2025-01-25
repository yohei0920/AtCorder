## 教材

A - 12435
https://atcoder.jp/contests/abc390/tasks/abc390_a

B - Geometric Sequence
https://atcoder.jp/contests/abc390/tasks/abc390_b

## かかった時間
a: 8分
b: 16分

## 学び
### a問題
* コピーの仕方
  * sorted = numsはnums自体をコピーしており、オブジェクトの参照を共有しているのでどちらか一方の変更があるともう一方にも同じ変更がされる
  * sorted = nums[0..]などの書き方をすることでオブジェクトのコピーではなくなるので期待値が取れる