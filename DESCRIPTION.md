ファイルテンプレートの導入

## 概要
UIViewController等を新規作成する際に、不要なコードが入っている。また、チーム内のコーディングルールに則ったカスタムのテンプレートを利用したい。そこで、Xcodeインストール時に用意されたテンプレートをカスタマイズし、ファイルの新規作成時に読み込めるようにする。

## インストール方法と使い方

### 1. シェルスクリプトとサンプルテンプレートの入手
[Xcode-Template@github](https://github.com/ayakix/Xcode-Template) よりxcodeTemplateディレクトリにあるシェルスクリプトとサンプルテンプレートをダウンロードする。

### 2. テンプレートの配備
シェルスクリプトにより、カスタムテンプレートをXcodeで読み込めるようにする。Xcodeを開いている場合には、再起動する。

```
xcodeTemplate> chmod +x deploy_templates.sh
xcodeTemplate> ./deploy_templates.sh
```

### 3. テンプレートの選択
ファイルの新規作成より、[Custom]-[Cocoa Touch Class]を選択

![select_custom](https://github.com/ayakix/Xcode-Template/raw/master/images/select_custom.png)

### 4. クラスの作成
カスタムしたCocoa Tocuhクラスのサブクラスとしてクラスを作成する。（例ではUIViewController）

![new_file](https://github.com/ayakix/Xcode-Template/raw/master/images/new_file.png)

### 5. テンプレートの適用を確認
![custom_view_controller](https://github.com/ayakix/Xcode-Template/raw/master/images/custom_view_controller.png)

## テンプレートの修正方法
`xcodeTemplate/Cocoa Touch Class.xctemplate/UIViewControllerSwift/___FILEBASENAME___.swift`を修正する。
また、修正後には、再度シェルスクリプトを起動する。

UIViewController以外を修正する場合には、`/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File Templates/Source/Cocoa Touch Class.xctemplate` にある修正したいクラス名のディレクトリを`xcodeTemplate/Cocoa Touch Class.xctemplate`以下にコピーし、修正する。

## サンプル
[Xcode-Template@github](https://github.com/ayakix/Xcode-Template)に動作するプロジェクトがあります。
