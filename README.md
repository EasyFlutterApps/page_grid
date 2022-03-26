# Page Grid

<img src="https://user-images.githubusercontent.com/62440911/160253683-3c3f9419-8347-40d7-89ad-85671a3872b3.png" width="100" height="100"> 

# Demo

![flutter_flex](https://user-images.githubusercontent.com/62440911/160254118-f5bfc0f8-003b-432c-84a4-795eb27b5c2f.gif)

# How to use
- Create Page Grid
```

PageGrid(
    head: Container(color: Colors.yellow),
    body: Container(color: Colors.red),
    footer: Container(color: Colors.pink),
)

```

- Mirror Page Grid
```

PageGrid(
    mirror: true,
    head: Container(color: Colors.yellow),
    body: Container(color: Colors.red),
    footer: Container(color: Colors.pink),
)

```

- Customize Grid
```

PageGrid(
    mirror: true,
    mobileFlex: const BodyFlex(footer: 0),
    desktopFlex: const BodyFlex(),
    head: Container(color: Colors.yellow),
    body: Container(color: Colors.red),
    footer: Container(color: Colors.pink),
)

```
