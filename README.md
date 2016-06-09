# render in rake

## これはなに

rake でテンプレートからPDFに変換するサンプルアプリです

```
rake pdf
```

とすると、app/views/things/index.pdf.erb を pdf に変換した things.pdf がアプリケーションルートに作成されます。生成しているコードは lib/tasks/pdf.rake です。
