---
title: Markdown Slide 测试
separator: <!--s-->
verticalSeparator: <!--v-->
theme: simple
highlightTheme: monokai-sublime
css:
    - assets/custom.css
    - assets/dark.css
revealOptions:
    transition: 'slide'
    transitionSpeed: fast
    center: false
    slideNumber: "c/t"
    width: 1000
---

<style>    
.button-container {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
    position: relative;
    width: 100%; 
}
.button {
    display: flex;
    align-items: center;
    justify-content: center;  
    text-decoration: none;
    border: 1px solid #ddd;
    padding: 0; 
    border-radius: 50%;  
    width: 85px; 
    height: 85px; 
    transition: transform 0.3s ease, border-color 0.3s ease;  
    cursor: pointer;
    overflow: hidden;
}
.button img {
    width: 100%;  
    height: 100%;  
    object-fit: cover;  
    border-radius: 50%;  
}
.button:hover {
    transform: scale(1.1);
    border-color: rgba(0, 123, 255, 0.2);
    box-shadow: 0 2px 10px rgba(0, 123, 255, 0.2); 
}
.button-container .button-text {
    position: absolute; 
    top: 50%;
    left: 100%;  
    transform: translateY(-50%); 
    opacity: 0;  
    visibility: hidden;  
    transition: opacity 0.3s ease, visibility 0.3s ease;
    white-space: nowrap; 
    font-size: 20px;
}
</style>

<!-- .slide: data-background="test/cover.png" -->

<div class="middle center">
<div style="width: 100%">

# いらっしゃいませ!

</div></div>

<!--v-->
<!-- .slide: data-background="test/background.webp" -->

## 关于封面

只是测试罢了（

- 虽然但是，关注茜特拉莉谢谢喵~

<div style="text-align: center; zoom: 1.1;">
<iframe id="ytplayer" type="text/html" width="640" height="360"
  src="https://www.youtube.com/embed/Yz9q5yKhpOM"
  frameborder="0"></iframe>
</div>

<!--s-->
<!-- .slide: data-background="test/background.webp" -->

<div class="middle center">
<div style="width: 100%">

# Part.1 标题测试

</div></div>

<!--v-->
<!-- .slide: data-background="test/background.webp" -->

## Quote测试

<style>
.reveal blockquote {
    width: 90%;
}
.reveal blockquote p {
    font-size: 0.5em;
}
</style>

> <a href="https://ciallo.cc" class="hiddenlink">Ciallo～(∠・ω<)⌒★</a>
> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;—— 因幡めぐる

### 图片测试

<div style="text-align: center; margin-top: 0px; margin-bottom: 0px">
<img src="test/img.png" width="40%" style="margin: 0 auto;">
</div>

<!--v-->
<!-- .slide: data-background="test/background.webp" -->

## 代码测试

- 行内代码：`printf("helloworld");`
- 行间代码：
```python
# 一个实现deepseek（简易版）的Python代码
import time
while (0 or 1=1):
    input("请输入文本")
    time.sleep(10)
    print("服务器繁忙，请稍后再试")
```

<!--v-->
<!-- .slide: data-background="test/background.webp" -->

## 数学测试

- 行内环境：$\displaystyle \sum_{i=0}^{\infty} \dfrac{(-1)^i}{i!}=\dfrac{1}{e}.$
- 行间环境：$$ \dfrac{P A \cdot B C}{\sin(\angle B P C-\angle B A C)}=\dfrac{P B \cdot A C}{\sin(\angle A P C-\angle A B C)} $$ 且该式子对于$\triangle{ABC}$轮换对称成立.

<!--s-->
<!-- .slide: data-background="test/background.webp" -->

<div class="middle center">
<div style="width: 100%">

# よろしくお願いします!

</div></div>