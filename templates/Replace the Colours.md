#### You can replace quickly the colours of original folders icons in the terminal
#### Puoi sotituire rapidamente i colori delle icone originali di cartelle nel terminale

```
find . -type f -exec sed -i \
-e 's/#fb7c38/#E44739/g' \
-e 's/#fda463/#EB7B71/g' \
-e 's/#903906/#991F15/g' \
-e 's/#f34f17/#D12B1D/g' \
-e 's/#fedbc7/#F7CAC6/g' '{}' +
```

* primary color – start   `#a0649a #fb7c38 #F22C42 #8f76e4 #31C6B7 #76C22B #FFDA64 #E44739`
* primary color – end     `#ad7aa9 #fda463 #F76363 #a7a7f1 #5BDBC1 #A6D74F #FEE581 #EB7B71`
* blurry shadow           `#4f1748 #903906 #7F1126 #642f99 #1F6166 #1F6617 #664F02 #991F15`
* secondary color         `#85377d #f34f17 #DA1636 #8c59d0 #2DAAAA #46A926 #FDC92B #D12B1D`
* color of symbol         `#ddc8db #fedbc7 #FAC3BA #dcdef5 #BAE8D5 #DCE6B8 #403101 #F7CAC6`