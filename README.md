# libft

42 Tokyoのプロジェクトの一つです。標準ライブラリの一部の関数を模倣したカスタム C ライブラリです。

## 概要

libftは、C言語の標準ライブラリ関数を自作で実装することで、メモリ管理、文字列操作、リンクリストなどの基礎的なプログラミング概念を学習するためのプロジェクトです。42スクールのカリキュラムの一環として作成されています。

## プロジェクト構成

```
42_libft/
├── Makefile          # ビルド設定
├── libft.h           # ヘッダーファイル
├── ft_*.c            # 各関数の実装ファイル
└── README.md         # このファイル
```

## 実装関数一覧

### 文字判定関数 (Character Classification)
- `ft_isalpha` - アルファベットかどうかを判定
- `ft_isdigit` - 数字かどうかを判定  
- `ft_isalnum` - 英数字かどうかを判定
- `ft_isascii` - ASCII文字かどうかを判定
- `ft_isprint` - 印刷可能文字かどうかを判定

### 文字変換関数 (Character Conversion)
- `ft_toupper` - 小文字を大文字に変換
- `ft_tolower` - 大文字を小文字に変換

### 文字列操作関数 (String Manipulation)
- `ft_strlen` - 文字列の長さを取得
- `ft_strchr` - 文字列内で文字を検索
- `ft_strrchr` - 文字列内で文字を逆方向検索
- `ft_strncmp` - 文字列を指定文字数分比較
- `ft_strlcpy` - 安全な文字列コピー
- `ft_strlcat` - 安全な文字列連結
- `ft_strnstr` - 部分文字列を検索
- `ft_strdup` - 文字列を複製

### メモリ操作関数 (Memory Management)
- `ft_memset` - メモリブロックを指定値で埋める
- `ft_bzero` - メモリブロックをゼロクリア
- `ft_memcpy` - メモリブロックをコピー
- `ft_memmove` - 重複可能なメモリコピー
- `ft_memchr` - メモリブロック内でバイトを検索
- `ft_memcmp` - メモリブロックを比較
- `ft_calloc` - ゼロ初期化されたメモリを割り当て

### 文字列処理関数 (Advanced String Processing)
- `ft_substr` - 部分文字列を抽出
- `ft_strjoin` - 文字列を連結
- `ft_strtrim` - 文字列の前後から指定文字を削除
- `ft_split` - 区切り文字で文字列を分割
- `ft_itoa` - 整数を文字列に変換
- `ft_strmapi` - 文字列の各文字に関数を適用
- `ft_striteri` - 文字列の各文字にインデックス付き関数を適用

### 型変換・変換関数 (Conversion Functions)
- `ft_atoi` - 文字列を整数に変換

### ファイル出力関数 (File Output)
- `ft_putchar_fd` - ファイルディスクリプタに文字を出力
- `ft_putstr_fd` - ファイルディスクリプタに文字列を出力
- `ft_putendl_fd` - ファイルディスクリプタに文字列と改行を出力
- `ft_putnbr_fd` - ファイルディスクリプタに数値を出力

### リンクリスト関数 (Linked List - ボーナス部分)
- `ft_lstnew` - 新しいリストノードを作成
- `ft_lstadd_front` - リストの先頭にノードを追加
- `ft_lstsize` - リストのサイズを取得
- `ft_lstlast` - リストの最後のノードを取得
- `ft_lstadd_back` - リストの末尾にノードを追加
- `ft_lstdelone` - 指定ノードを削除
- `ft_lstclear` - リスト全体をクリア
- `ft_lstiter` - リストの各ノードに関数を適用
- `ft_lstmap` - リストの各ノードに関数を適用して新しいリストを作成

## コンパイルと使用方法

### ライブラリのビルド
```bash
make        # 基本関数のみビルド
make bonus  # ボーナス関数も含めてビルド
make clean  # オブジェクトファイルを削除
make fclean # すべてのビルド成果物を削除
make re     # リビルド
```

### ライブラリの使用
```c
#include "libft.h"

int main(void)
{
    char *str = ft_strdup("Hello, libft!");
    ft_putstr_fd(str, 1);
    free(str);
    return 0;
}
```

コンパイル時にライブラリをリンク：
```bash
gcc -Wall -Wextra -Werror your_program.c -L. -lft
```

## 特徴

- **メモリ安全**: 適切なメモリ管理とエラーハンドリング
- **エッジケース対応**: NULL ポインタや境界値の適切な処理
- **効率性**: 最適化されたアルゴリズムの実装
- **互換性**: 標準ライブラリ関数との高い互換性
- **拡張性**: ボーナス部分でリンクリスト操作を提供

## 学習目標

このプロジェクトを通じて以下のスキルを習得できます：

- C言語の基礎的な理解
- メモリ管理の技術
- アルゴリズムとデータ構造の実装
- エラーハンドリングの重要性
- プロジェクト構造化と Makefile の作成
- 標準ライブラリ関数の内部動作の理解

## テクニカルノート

### メモリ管理
すべての動的メモリ割り当て関数は適切なエラーチェックを含み、失敗時にはNULLを返します。

### 文字列処理
安全な文字列操作を重視し、バッファオーバーフローを防ぐために `strlcpy` や `strlcat` などの安全な関数を実装しています。

### リンクリスト
汎用的な `void *` を使用してどのデータ型でも格納可能な柔軟なリンクリスト実装を提供します。

## 作者情報

- **作成者**: miyazawa.kai.0823
- **学校**: 42 Tokyo
- **作成日**: 2023年5月21日
- **最終更新**: 2023年12月18日

---

*このプロジェクトは 42 Tokyo の教育カリキュラムの一部として作成されました。*