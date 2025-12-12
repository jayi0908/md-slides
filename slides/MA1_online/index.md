---
title: 数学分析 I (H) - 线上课程
separator: <!--s-->
verticalSeparator: <!--v-->
theme: simple
highlightTheme: monokai-sublime
css:
    - assets/custom.css
revealOptions:
    transition: 'slide'
    transitionSpeed: fast
    center: false
    slideNumber: "c/t"
    width: 1000
---

<!-- .slide: data-background="cover.png" -->

<!--v-->
<!-- .slide: data-background="background.webp" -->

<div class="middle center">
<div style="width: 100%">
<h1> Part 1 不定积分 </h1>
</div></div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 不定积分

<div class="fragment" style="margin-top: 0px">

定义：若在区间 $I$ 上，函数 $F(x)$ 的导数 $F'(x)=f(x)$，则称 $F(x)$ 是 $f(x)$ 在区间 $I$ 上的*一个***原函数**.

</div>

<div class="fragment" style="margin-top: 0px">

若 $F(x)$ 与 $G(x)$ 都是 $f(x)$ 在区间 $I$ 上的原函数，则 $$ (F(x)-G(x))'=0 \implies F(x)-G(x)=C, C \text{ 为常数}. $$

</div>

<div class="fragment" style="margin-top: 0px">

用 $\displaystyle\int f(x) \mathrm{d}x$ 表示 $f(x)$ 的所有原函数的集合，称为 $f(x)$ 的不定积分.

</div>

<div class="fragment" style="margin-top: 0px">

不难看出，微分运算与不定积分运算构成了一对逆运算：

$$ F(x) + C \xrightarrow{\mathrm{d}} f(x)\mathrm{d}x $$
$$ F(x) + C \xleftarrow{\int} f(x)\mathrm{d}x $$

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 不定积分

实际上，微分与不定积分的逆运算体现了两个重要的性质：

<div class="fragment" style="margin-top: 0px">

> 1. $\dfrac{\mathrm{d}}{\mathrm{d}x}\left(\displaystyle\int f(x)\mathrm{d}x\right) = f(x).$
> 2. $\displaystyle\int F'(x)\mathrm{d}x = \displaystyle\int \mathrm{d}F(x) = F(x) + C.$

</div>

<div class="fragment" style="margin-top: 0px">

这两条性质看似显然，但在微积分运算中经常使用，且初学者往往难以熟练运用，值得注意.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 不定积分的运算

不同于“正着来”的导数运算，不定积分的运算需要我们“反着来”构造原函数，因此相对来说会较为困难. 

<div class="fragment" style="margin-top: 0px">

首先需要我们熟记基本初等函数的不定积分公式，一些易混易错的公式：

</div>

<div class="fragment" style="margin-top: 0px">

1. $\int \frac{1}{x}\mathrm{d}x = \ln|x| + C$，而非 $\ln x + C$.
2. $\int \cos ax \mathrm{d}x = \frac{1}{a}\sin ax + C$，$\int \sin ax \mathrm{d}x = -\frac{1}{a}\cos ax + C \quad (a \neq 0)$. 注意 $\frac{1}{a}$ 与正负号.
3. $\int \frac{1}{\sqrt{1-x^2}} \mathrm{d}x = \arcsin x + C$，$\int \frac{1}{1+x^2} \mathrm{d}x = \arctan x + C$.  
不要与 $\int \frac{1}{\sqrt{1+x^2}} \mathrm{d}x$ 和 $\int \frac{1}{1-x^2} \mathrm{d}x$ 混淆.

</div>

<div class="fragment" style="margin-top: 0px">

然而，仅掌握这些公式并不能解决大部分的不定积分计算，还需要掌握一些常用的计算技巧，例如**换元积分法**和**分部积分法**.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 换元积分法

<div class="fragment" style="margin-top: 0px">

第一换元积分法（凑微分法）：若 $f(x) = \tilde{f}(g(x)) \cdot g'(x)$，且 $\displaystyle\int \tilde{f}(u) \mathrm{d}u = F(u) + C$，则 $$ \int f(x) \mathrm{d}x = \int \tilde{f}(g(x)) g'(x) \mathrm{d}x = F(g(x)) + C. $$

</div>

<div class="fragment" style="margin-top: 0px">

第二换元积分法：若 $x = g(t)$，且可以反过来求解出 $t=g^{-1}(x)$，并且 $\displaystyle\int f(g(t)) g'(t) \mathrm{d}t = F(t) + C$，则 $$ \int f(x) \mathrm{d}x = \int f(g(t)) g'(t) \mathrm{d}t = F(g^{-1}(x)) + C. $$

</div>

<div class="fragment" style="margin-top: 0px">

第一换元积分通过凑微分实现，而第二换元积分常常通过三角换元实现.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 换元积分法的例子

求 $\displaystyle\int \dfrac{1}{x^2\sqrt{1+x^2}} \mathrm{d}x$.

<div class="fragment" style="margin-top: 0px">

- 解法1：用第一换元，令 $u=\dfrac{1}{x^2}$.

</div>
<div class="fragment" style="margin-top: 0px">

- 解法2：用第二换元，令 $x=\dfrac{1}{t}$.

</div>
<div class="fragment" style="margin-top: 0px">

- 解法3：用第二换元，令 $x=\tan t$.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## Tips

<div class="fragment" style="margin-top: 0px">

- 记住一些常见的微分形式，如 $x\mathrm{d}x = \frac{1}{2}\mathrm{d}(x^2)$, $\frac{1}{\sqrt{x}}\mathrm{d}x = 2\mathrm{d}(\sqrt{x})$, $\frac{1}{x}\mathrm{d}x = \mathrm{d}(\ln |x|)$, $e^x\mathrm{d}x = \mathrm{d}(e^x)$, $\sin x \mathrm{d}x = -\mathrm{d}(\cos x)$, $\cos x \mathrm{d}x = \mathrm{d}(\sin x)$ 等.

</div>

<div class="fragment" style="margin-top: 0px">

- 带根号的积分往往会考虑三角换元.
    - 若遇到$\sqrt{a^2 - x^2}$，可令 $x = a \sin t$ 或 $x = a \cos t$.
    - 若遇到$\sqrt{a^2 + x^2}$，可令 $x = a \tan t$ 或 $x = a \cot t$.
    - 若遇到$\sqrt{x^2 - a^2}$，可令 $x = a \sec t$ 或 $x = a \csc t$.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 分部积分法

<div class="fragment" style="margin-top: 0px">

分部积分法是基于以下公式的积分方法：

$$ \int u \mathrm{d}v = uv - \int v \mathrm{d}u $$

其中 $u$ 和 $v$ 是可微函数.

</div>
<div class="fragment" style="margin-top: 0px">

分部积分法常用于处理积的积分，特别是当其中一个因子容易求导而另一个因子容易积分时.

在进行分部积分时也常常将容易求导的部分设为 $u$，容易积分的部分设为 $\mathrm{d}v$.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 分部积分法的例子

1. 求 $\displaystyle \int x \arctan x \mathrm{d}x$.

<div class="fragment" style="margin-top: 0px">

**解**：$\arctan x$ 易求导， $x\mathrm{d}x$ 易积分，因此可令 $u = \arctan x$，$\mathrm{d}v = x \mathrm{d}x$，则

</div>

<div class="fragment" style="font-size: 18pt; margin-top: 0px">
$$ \begin{aligned} \int x \arctan x \mathrm{d}x &= \frac{1}{2}x^2 \arctan x - \int \frac{x^2}{2} \cdot \frac{1}{1+x^2} \mathrm{d}x \\ &= \frac{1}{2}x^2 \arctan x - \frac{1}{2}\int \frac{x^2+1-1}{1+x^2} \mathrm{d}x. \\ &= \frac{1}{2}x^2 \arctan x - \frac{1}{2}\int \mathrm{d}x + \frac{1}{2}\int\frac{1}{1+x^2}\mathrm{d}x. \\ &= \frac{1}{2}x^2 \arctan x -\frac{x}{2} +\frac{\arctan x}{2}. \end{aligned} $$
</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 分部积分法的例子

2. 求 $\displaystyle \int \arcsin x \mathrm{d}x$.

<div class="fragment" style="margin-top: 0px">

*Tips: 不要忘了 $\mathrm{d}x$ 也可以充当 $\mathrm{d}v$.*

</div>

<div class="fragment" style="font-size: 18pt; margin-top: 0px">
$$ \begin{aligned} \int \arcsin x \mathrm{d}x &= x \arcsin x - \int \frac{x}{\sqrt{1-x^2}} \mathrm{d}x \\ &= x \arcsin x + \frac{1}{2} \int \frac{1}{\sqrt{1-x^2}} \mathrm{d}(1-x^2) \\ &= x \arcsin x + \sqrt{1-x^2} + C. \end{aligned} $$
</div>

<div class="fragment" style="font-size: 18pt; margin-top: 0px">

这种情况可以总结为：$\displaystyle\int f(x) \mathrm{d}x = xf(x) - \displaystyle\int x f'(x) \mathrm{d}x$. 当 $f'(x)$ 为只包含 $x$ 的有理函数（或其他易于积分的形式）时，可以使用该方法求解.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 分部积分法的例子

3. 求 $\displaystyle \int f(x) \cos nx \mathrm{d}x$ 与 $\displaystyle \int f(x) \sin nx \mathrm{d}x$，其中 $f(x)$ 为多项式函数.

<div class="fragment" style="margin-top: 0px">

*Tips: 在两个因子都容易求导/求积分时可以试试轮流充当 $u$ 与 $\mathrm{d}v$.*

</div>

<div class="fragment" style="margin-top: 0px">

以 $\displaystyle \int f(x) \cos nx \mathrm{d}x$ 为例，经试验，以 $f(x)$ 为 $u$ 更合适.

</div>

<div class="fragment" style="font-size: 18pt; margin-top: 0px">
$$ \int f(x) \cos nx \mathrm{d}x = \frac{f(x)}{n} \sin nx - \frac{1}{n} \int f'(x) \sin nx \mathrm{d}x. $$
</div>

<div class="fragment" style="margin-top: 0px">

注意到 $f'(x)$ 的次数比 $f(x)$ 小 1，因此对 $\displaystyle \int f'(x) \sin nx \mathrm{d}x$ 再次使用相同的分部积分处理，最终可得到一个只包含三角函数的不定积分，可直接积出.

</div>

<div class="fragment" style="margin-top: 0px">

<s>实际上这就是Fourier级数的系数，超纲了</s>. 感兴趣的同学可尝试推导通项公式.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 除此以外...

<div class="fragment" style="margin-top: 0px">

换元积分和分部积分是最常用的两种不定积分计算方法，很多时候需要结合使用，灵活使用，掌握一些常见的变形技巧，将题目转换成适于使用这两种方法的形式.

</div>

<div class="fragment" style="margin-top: 0px">

<s>换句话说，需要代数变形的功力</s>.

</div>

<div class="fragment" style="margin-top: 0px">

当然，掌握一些常见的不定积分型也有助于我们拓宽变形的思路，很多时候题目也会直接考察这些常见形式的不定积分——有理函数的不定积分，三角函数的不定积分，根式函数的不定积分，等等.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 有理函数的不定积分

<div class="fragment" style="margin-top: 0px">

称 $\dfrac{p_m(x)}{q_n(x)}$ 为有理函数，其中 $p_m(x)$ 和 $q_n(x)$ 分别为 $m$ 次和 $n$ 次多项式.

由于带余除法可将有理函数化为真分式加多项式，因此只考虑 $m<n$ 的情形.

</div>

<div class="fragment" style="margin-top: 0px">

基本步骤：

</div>

<div class="fragment" style="margin-top: 0px">

1. **化为真分式**：若 $\deg P(x) \geq \deg Q(x)$，先用多项式除法化为多项式与真分式之和.

</div>

<div class="fragment" style="margin-top: 0px">

2. **分母因式分解**：将分母 $Q(x)$ 分解为一次因式和二次不可约因式的乘积.

</div>

<div class="fragment" style="margin-top: 0px">

3. **部分分式分解**：将真分式分解为简单分式的和.

</div>

<div class="fragment" style="margin-top: 0px">

4. **逐项积分**.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 有理函数的部分分式分解

由代数基本定理，设 $Q(x)$ 已分解为：
$$Q(x) = (x-a)^k \cdots (x^2+px+q)^m \cdots$$
其中 $x^2+px+q$ 无实根（判别式 $\Delta < 0$）.

<div class="fragment" style="margin-top: 0px">

则分解形式为：

<div class="fragment" style="font-size: 18pt; margin-top: 0px">
$$ \begin{aligned}\frac{P(x)}{Q(x)} &= \frac{A_1}{x-a} + \frac{A_2}{(x-a)^2} + \cdots + \frac{A_k}{(x-a)^k} + \cdots \\
&+ \frac{B_1x+C_1}{x^2+px+q} + \frac{B_2x+C_2}{(x^2+px+q)^2} + \cdots + \frac{B_mx+C_m}{(x^2+px+q)^m}. \end{aligned} $$
</div>

</div>

<div class="fragment" style="margin-top: 0px">

让我们用具体的例子来说明如何进行部分分式分解.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 有理函数积分的例子

1. 求 $\displaystyle\int \frac{x+1}{x^2-5x+6} \mathrm{d}x$.

<div class="fragment" style="font-size: 18pt; margin-top: 0px">

**解**：分母分解：$x^2-5x+6 = (x-2)(x-3)$.

</div>
<div class="fragment" style="font-size: 18pt; margin-top: 0px">

设 $\dfrac{x+1}{x^2-5x+6} = \dfrac{A}{x-2} + \dfrac{B}{x-3}$.

</div>
<div class="fragment" style="font-size: 18pt; margin-top: 0px">

通分：$x+1 = A(x-3) + B(x-2)$,

解得：$A = -3, B = 4$.

</div>

<div class="fragment" style="font-size: 18pt; margin-top: 0px">
$$ \begin{aligned}\int \frac{x+1}{x^2-5x+6} \mathrm{d}x &= \int \left(\frac{-3}{x-2} + \frac{4}{x-3}\right) \mathrm{d}x \\ &= -3\ln|x-2| + 4\ln|x-3| + C.\end{aligned} $$
</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 有理函数积分的例子

2. 求 $\displaystyle\int \frac{x^4+x^3+3x^2-1}{(x-1)(x^2+1)^2} \mathrm{d}x$.

<div class="fragment" style="margin-top: 0px">

**解**：设 $\dfrac{x^4+x^3+3x^2-1}{(x-1)(x^2+1)^2} = \dfrac{A}{x-1} + \dfrac{Bx+C}{x^2+1} + \dfrac{Dx+E}{(x^2+1)^2}$. 通分：

</div>

<div class="fragment" style="font-size: 16pt; margin-top: 0px">
$$ x^4+x^3+3x^2-1 = A(x^2+1)^2 + (Bx+C)(x-1)(x^2+1) + (Dx+E)(x-1). $$
</div>

<div class="fragment" style="margin-top: 0px">

取 $x=1$ 可得 $A=1$，比较 $x^4$ 与 $x^3$ 的系数可得 $B=0, C=1$.

取 $x=\mathrm{i}$ 可得 $-3-\mathrm{i} = (-D-E)+(E-D)\mathrm{i}$，从而 $D=2, E=1$.

</div>

<div class="fragment" style="font-size: 16pt; margin-top: 0px">
$$ \begin{aligned} \int \frac{x^4+x^3+3x^2-1}{(x-1)(x^2+1)^2} \mathrm{d}x &= \int \left( \frac{1}{x-1} + \frac{1}{x^2+1} + \frac{2x+1}{(x^2+1)^2} \right) \mathrm{d}x \\ &= \ln|x-1| + \arctan x + \int \frac{\mathrm{d}(x^2+1)}{(x^2+1)^2} + \int \frac{1}{(x^2+1)^2} \mathrm{d}x \\ &= \ln|x-1| + \frac{3}{2}\arctan x - \frac{1}{x^2+1} + \frac{x}{2(x^2+1)} + C. \end{aligned} $$
</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 三角函数的不定积分

<div class="fragment" style="margin-top: 0px">

处理三角函数积分时，常用的方法有：

</div>

<div class="fragment" style="margin-top: 0px">

1. **三角恒等式变形**：如 $\sin^2 x + \cos^2 x = 1$，$\sin^2 x = \dfrac{1-\cos 2x}{2}$，$\cos^2 x = \dfrac{1+\cos 2x}{2}$ 等.

</div>
<div class="fragment" style="margin-top: 0px">

2. **配对积分**：对于 $\int \sin^m x \cos^n x \mathrm{d}x$，根据 $m,n$ 的奇偶性选择不同方法.

</div>
<div class="fragment" style="margin-top: 0px">

3. **万能代换**：令 $t = \tan\dfrac{x}{2}$，则 $\sin x = \dfrac{2t}{1+t^2}$，$\cos x = \dfrac{1-t^2}{1+t^2}$，$\mathrm{d}x = \dfrac{2}{1+t^2}\mathrm{d}t$.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 三角函数积分的例子

1.（$m,n$ 一奇一偶）求 $\displaystyle\int \sin^3 x \cos^2 x \mathrm{d}x$.

<div class="fragment" style="margin-top: 0px">

**解**：$\sin^3 x \cos^2 x = \sin x (1-\cos^2 x) \cos^2 x$.

令 $u = \cos x$，则 $\mathrm{d}u = -\sin x \mathrm{d}x$

</div>

<div class="fragment" style="font-size: 18pt; margin-top: 0px">
$$ \begin{aligned} \int \sin^3 x \cos^2 x \mathrm{d}x &= \int u^2(1-u^2)(-\mathrm{d}u) = \int (u^4 - u^2) \mathrm{d}u \\
&= \frac{u^5}{5} - \frac{u^3}{3} + C = \frac{\cos^5 x}{5} - \frac{\cos^3 x}{3} + C. \end{aligned} $$

</div>

<div class="fragment" style="margin-top: 0px">

*Tips：当正弦或余弦的幂次为奇数时，可以分离出一个因子与 $\mathrm{d}x$ 凑微分.*

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 三角函数积分的例子

2.（$m,n$ 同奇同偶）求 $\displaystyle\int \sin^3 x \cos^3 x \mathrm{d}x$.

<div class="fragment" style="font-size: 16pt; margin-top: 0px">
&nbsp;&nbsp;<strong>解</strong>：设 $t=\tan x$，则 $\sin x \cos x = \dfrac{\sin x \cos x}{\sin^2 x + \cos^2 x} = \dfrac{t}{1+t^2}$, $\sin^2 x = \dfrac{\sin^2 x}{\sin^2 x + \cos^2 x} = \dfrac{t^2}{1+t^2}$，$\cos^2 x = \dfrac{1}{1+t^2}$，$\mathrm{d}x = \dfrac{1}{1+t^2} \mathrm{d}t$.
</div>
<div class="fragment" style="font-size: 16pt; margin-top: 0px">
$$ \begin{aligned} \int \sin^3 x \cos^3 x \mathrm{d}x &= \int \left(\frac{t}{1+t^2}\right)^3 \cdot \frac{1}{1+t^2} \mathrm{d}t = \frac{1}{2} \int \frac{t^2}{(1+t^2)^4} \mathrm{d}t^2 \\ &= \frac{1}{2} \int \left(\frac{1}{u^3} - \frac{1}{u^4}\right) \mathrm{d}u \quad (u = 1+t^2=\sec^2 x) \\ &= \frac{1}{2} \left( -\frac{1}{2u^2} + \frac{1}{3u^3} \right) + C = -\frac{1}{4}\cos^4 x + \frac{1}{6}\cos^6 x + C. \end{aligned} $$
</div>

<div class="fragment" style="margin-top: 0px">

*Tips：当正弦和余弦的幂次同为奇数或偶数时，可以尝试用正切函数代换.*

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 三角函数积分的例子

3.（使用万能公式）求 $\displaystyle\int \frac{1}{4 + 4\sin x + \cos x} \mathrm{d}x$.

<div class="fragment" style="margin-top: 0px">

**解**：令 $t = \tan \dfrac{x}{2}$，则 $\sin x = \dfrac{2t}{1+t^2}$，$\cos x = \dfrac{1-t^2}{1+t^2}$，$\mathrm{d}x = \dfrac{2}{1+t^2}\mathrm{d}t$.

</div>

<div class="fragment" style="font-size: 16pt; margin-top: 0px">
$$ \begin{aligned} \int \frac{1}{4 + 4\sin x + \cos x} \mathrm{d}x &= \int \frac{1}{4 + \frac{8t}{1+t^2} + \frac{1-t^2}{1+t^2}} \cdot \frac{2}{1+t^2} \mathrm{d}t = \int \frac{2}{5 + 8t + 3t^2} \mathrm{d}t \\ &= \int \frac{2}{(3t+5)(t+1)} \mathrm{d}t = \int \left( \frac{1}{t+1} - \frac{3}{3t+5} \right) \mathrm{d}t \\ &= \ln|t+1| - \ln|3t+5| + C \\ &= \ln\left|\tan \frac{x}{2} + 1\right| - \ln\left|3\tan \frac{x}{2} + 5\right| + C. \end{aligned} $$
</div>

<div class="fragment" style="margin-top: 0px">

*Tips: 对于有理次数组成的三角函数积分，万能公式能将其转换为有理函数积分，因此总是可行的，<s>但不总是可算的</s>.*

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 除此以外...

更一般的：

<div class="fragment" style="margin-top: 0px">

- 若 $R(\cos x, -\sin x) = -R(\cos x, \sin x)$, 则令 $t = \cos x$, $x \in (-\frac{\pi}{2}, \frac{\pi}{2})$;

</div>
<div class="fragment" style="margin-top: 0px">

- 若 $R(-\cos x, \sin x) = -R(\cos x, \sin x)$, 则令 $t = \sin x$, $x \in (0, \pi)$;

</div>
<div class="fragment" style="margin-top: 0px">

- 若 $R(-\cos x, -\sin x) = R(\cos x, \sin x)$, 则令 $t = \tan x$, $x \in (-\frac{\pi}{2}, \frac{\pi}{2})$.

</div>


<!--v-->
<!-- .slide: data-background="background.webp" -->

## 根式函数的不定积分

对于含有根式的积分，常用的方法有：

<div class="fragment" style="margin-top: 0px">

1. **三角代换**：对于 $\sqrt{a^2-x^2}$，$\sqrt{a^2+x^2}$，$\sqrt{x^2-a^2}$ 等形式进行三角换元，前面已经提到.

</div>
<div class="fragment" style="margin-top: 0px">

2. **欧拉代换**：适用于 $\sqrt{ax^2+bx+c}$ 的形式.
    - 若 $a>0$，则令 $ \sqrt{ax^2+bx+c} = \pm \sqrt{a}x + t$；
    - 若 $c>0$，则令 $ \sqrt{ax^2+bx+c} = xt \pm \sqrt{c}$.
    - 若 $ax^2+bx+c$ 有实根 $\alpha, \beta$，则可令 $ax^2+bx+c = (x-\alpha)t$.

</div>
<div class="fragment" style="margin-top: 0px">

3. **有理化代换**：若整个积分是关于 $x$ 和 $\sqrt[m]{\dfrac{ax+b}{cx+d}}$ 的有理函数，则令整个根式等于新的变量 $t$，将 $x$ 用 $t$ 表示出来，从而将积分化为关于 $t$ 的有理函数积分.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 根式函数积分的例子

求 $\displaystyle\int \frac{\sqrt{x^2+1}}{x} \mathrm{d}x$.

<div class="fragment" style="font-size: 18pt; margin-top: 0px">

**解**：令 $x = \tan t$，则 $\mathrm{d}x = \sec^2 t \mathrm{d}t$，$\sqrt{x^2+1} = \sqrt{\tan^2 t+1} = \sec t$

$$\int \frac{\sqrt{x^2+1}}{x} \mathrm{d}x = \int \frac{\sec t}{\tan t} \sec^2 t \mathrm{d}t = \int \frac{1}{\cos^2 t \sin t} \mathrm{d}t = \int \frac{\mathrm{d}(\cos t)}{\cos^2 t \sin^2 t}.$$

令 $u = \cos t$，则相当于对 $\displaystyle\int \dfrac{\mathrm{d} u}{u^2(1-u^2)}$ 进行有理函数积分.

</div>

<div class="fragment" style="font-size: 16pt; margin-top: 0px">
$$ \int \frac{1}{u^2(1-u^2)} \mathrm{d}u = \int \left( \frac{1}{u^2} + \frac{1}{2(1-u)} + \frac{1}{2(1+u)} \right) \mathrm{d}u = -\frac{1}{u} + \frac{1}{2}\ln \left|{\frac{u+1}{u-1}} \right| + C. $$

再将 $u = \cos t$，$t = \arctan x$ 代回，即得最终结果.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 总结

<div class="fragment" style="margin-top: 0px">

- **有理函数积分**：部分分式分解是关键
- **三角函数积分**：灵活运用三角恒等式和代换
- **根式函数积分**：三角代换是常用方法

</div>

<div class="fragment" style="margin-top: 0px">

掌握这些常见类型的不定积分计算方法，结合换元积分法和分部积分法，可以解决大部分的不定积分问题。

</div>

<div class="fragment" style="margin-top: 0px">

*实际计算中，多练习、多总结是提高积分计算能力的最佳途径。*

</div>

<!--s-->
<!-- .slide: data-background="background.webp" -->

<div class="middle center">
<div style="width: 100%">
<h1> Part 2 定积分 </h1>
</div></div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 定积分

<div class="fragment" style="margin-top: 0px">

定义：对于定义在 $[a,b]$ 上的函数 $f(x)$，取分点：$a=x_0 < x_1 < \ldots < x_n = b$ 将 $[a,b]$ 划分为 $n$ 个子区间，并在每个子区间 $\Delta_i = [x_{i-1}, x_i]$ 上取一点 $\xi_i$，称和式 $S_n = \sum_{i=1}^n f(\xi_i) \Delta x_i \quad(\Delta x_i = x_i - x_{i-1})$ 为 $f(x)$ 在区间 $[a,b]$ 上的一个 *Riemann 和*. 

</div>
<div class="fragment" style="margin-top: 0px">

若对任意的 $\epsilon >0$，存在 $\delta >0$，使得对任意一种划分与任意取的点 $\xi_i$，只要 $\max \Delta x_i < \delta$，都有 $|S_n - I| < \epsilon$，则称 $f(x)$ 在区间 $[a,b]$ 上 *Riemann 可积*，并称极限 $\lim_{\max \Delta x_i \to 0} S_n = I$ 为 $f(x)$ 在区间 $[a,b]$ 上的*定积分*，记作 $$ I = \int_a^b f(x) \mathrm{d}x. $$

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 关于可积理论

数学分析注重定理的证明，有关达布和与可积理论的证明虽然较为抽象和繁琐，但是希望同学们能够理解与掌握. 不过由于可积理论一直不是考试重点，并且本讲的专题是计算相关，因此这里不再赘述. 这里仅提及一些十分重要的结论.

<div class="fragment" style="margin-top: 0px">

1.（可积的简单充分条件）对于定义在闭区间 $[a,b]$ 上的函数，有以下结论：

- 函数连续必可积.
- 函数仅有有限个间断点必可积.
- 函数单调必可积（不论间断点个数）.

</div>

<div class="fragment" style="margin-top: 0px">

2.（可积准则）易证 $f$ 在 $[a,b]$ 上可积则在 $[a,b]$ 上有界. 则对分割 $T = \set{ \Delta_i | 1\leq i \leq n }$，由有界性可定义 $M_i = \sup_{x \in \Delta_i} f(x)$ 和 $m_i = \inf_{x \in \Delta_i} f(x)$，则 $f$ 在 $[a,b]$ 上可积当且仅当对 $\forall \epsilon > 0$，存在分割 $T$ 使得 $$ \sum_{i=1}^n (M_i - m_i) \Delta x_i < \epsilon. $$

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 相关应用

1. 证明 Riemann 函数：

<div style="font-size: 18pt; margin-top: 0px">
$$ R(x) = \begin{cases} \frac{1}{q}, & x = \frac{p}{q}(p,q \in \mathbf{N}^+, \gcd(p,q) = 1， p < q) \\ 0, & x = 0,1 \text{ 及 } x \in (\mathbf{R} \setminus \mathbf{Q}) \cap (0,1) \end{cases} $$
</div>

在区间 $[0,1]$ 上可积，且 $\displaystyle\int_0^1 R(x) \mathrm{d}x = 0$.

<div class="fragment" style="font-size: 18pt; margin-top: 0px">

**解**：利用可积准则，对任意的 $\epsilon > 0$，我们要构造分割 $T$ 使得 $$ \sum_{i=1}^n (M_i - m_i) \Delta x_i < \epsilon. $$

由于对于任意给定值 $M > 0$，使 $R(x)>M$ 的 $x$ 的个数有限，因此只需要构造分割使得包含这些 $x$ 的子区间的长度足够小即可.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 相关应用(Cont.)

从而我们可以设 $[0,1]$ 上使得 $\frac{1}{q} > M$ 的有理点 $\frac{p}{q}$ 只有有限个，记为 $r_1, r_2, \ldots, r_k$，$M$ 待定. 对 $[0,1]$ 作分割 $T = \set{ \Delta_i | 1\leq i \leq n }$ 使得 $||T|| < M'$，$M'>0$ 待定，且子区间可重排为 $\Delta'_1, \Delta'_2, \ldots, \Delta'_n$，使得存在 $m \in \mathbf{N}$ 使得 $r_1,\ldots,r_k$ 均落在 $\Delta'_1,\ldots,\Delta'_m$ 中. 特别的，$m \leq 2k$.

<div class="fragment" style="font-size: 18pt; margin-top: 0px">
$$ \begin{aligned} \sum_{i=1}^n (M_i - m_i) \Delta x_i &= \sum_{i=1}^m M_i \Delta x_i + \sum_{i=m+1}^n M_i \Delta x_i \leq \sum_{i=1}^m \frac{1}{2} \Delta x_i + \sum_{i=m+1}^n M \Delta x_i \\ &\leq \frac{1}{2} \cdot 2k \cdot ||T|| + M < kM' + M. \end{aligned} $$
</div>

<div class="fragment" style="font-size: 18pt; margin-top: 0px">

从而可取 $M = \dfrac{\epsilon}{2}$，$M' = \dfrac{\epsilon}{2k}$，则有 $\sum_{i=1}^n (M_i - m_i) \Delta x_i < \epsilon.$ 故 $R(x)$ 在 $[0,1]$ 上可积. 

取 Riemann 和的分点全为无理点可得 Riemann 和为 $0$，故所求积分为 $0$.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 牛顿-莱布尼兹公式

大部分题目采取可积准则证明可积+取分点得到积分值的方法会很麻烦（但因为是充要条件所以总是可做的），牛顿-莱布尼兹公式则给出了一种简单的求解方法：

若 $f(x)$ 在 $[a,b]$ 上连续，则 $f(x)$ 在 $[a,b]$ 上可积，且 $$ \int_a^b f(x) \mathrm{d}x = F(b) - F(a). $$ 其中 $F(x)$ 是 $f(x)$ 的原函数.

<div class="fragment" style="margin-top: 0px">

这里条件只提到了 $f(x)$ 在 $[a,b]$ 上连续，这是因为连续能推出 $f$ 在 $[a,b]$ 上的任意闭区间内可积，从而原函数一定存在. 事实上用积分中值定理可以证明，$F(x) = \displaystyle\int_a^x f(t) \mathrm{d}t$ 为 $f(x)$ 在 $[a,b]$ 上的一个原函数.

</div>
<div class="fragment" style="margin-top: 0px">

如果能求出原函数的显式表示，就可以将定积分的求解转化为不定积分的求解.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 相关应用

2. （用定义将极限转换为积分）求 $\displaystyle\lim_{n \to \infty} n \sum_{k=1}^n \frac{1}{n^2 + k^2}$.

<div class="fragment" style="font-size: 18pt; margin-top: 0px">
$$ \begin{aligned} \lim_{n \to \infty} n \sum_{k=1}^n \frac{1}{n^2 + k^2} &= \lim_{n \to \infty} \sum_{k=1}^n \frac{1}{n} \cdot \frac{1}{1 + \left(\frac{k}{n}\right)^2} = \int_0^1 \frac{1}{1 + x^2} \mathrm{d}x \\ &= \arctan 1 - \arctan 0 = \frac{\pi}{4}. \end{aligned} $$
</div>

<div class="fragment" style="margin-top: 0px">

关键为将极限式转换为 $\displaystyle\lim_{n \to \infty} \sum_{k=1}^n f(\xi_k) \Delta x_k$ 的形式. 这种题常见的就是取 $\xi_k = \frac{k}{n}$, $\Delta x_k = \frac{1}{n}$（即将 $[0,1]$ $n$ 等分）.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 相关应用

3. 求 $\displaystyle \lim_{n\to \infty} \sum_{k=1}^n \frac{\sin \frac{k\pi}{n}}{n+\frac{k}{n}}.$

<!--<div class="fragment" style="font-size: 18pt; margin-top: 0px">
$$ \begin{aligned} \lim_{n \to \infty} \sum_{k=1}^n \frac{\sin \frac{k\pi}{n}}{n+\frac{k}{n}} &= \lim_{n \to \infty} \sum_{k=1}^n \frac{\sin \frac{k\pi}{n}}{n} \cdot \frac{1}{1 + \frac{k}{n^2}} \\ &= \int_0^1 \frac{\sin \pi x}{1 + x} \mathrm{d}x. \end{aligned} $$
</div>-->
<div class="fragment" style="font-size: 18pt; margin-top: 0px">
$$ \lim_{n \to \infty} \sum_{k=1}^n \frac{\sin \frac{k\pi}{n}}{n+\frac{k}{n}} = \lim_{n \to \infty} \sum_{k=1}^n \frac{1}{n} \sin \frac{k\pi}{n} \cdot \frac{1}{1 + \frac{k}{n^2}}. $$
</div>

<div class="fragment" style="font-size: 18pt; margin-top: 0px">

由 $\displaystyle\lim_{n \to \infty} \sum_{k=1}^n \frac{1}{n} \sin \frac{k\pi}{n} = \int_0^1 \sin \pi x \mathrm{d}x = \frac{2}{\pi}$，且 $\dfrac{1}{1+\frac{1}{n}} \leq \dfrac{1}{1+\frac{k}{n^2}} < 1$，故

$$  \lim_{n\to\infty} \frac{n}{n+1} \cdot \lim_{n \to \infty} \sum_{k=1}^n \frac{1}{n} \sin \frac{k\pi}{n} \leq \lim_{n \to \infty} \sum_{k=1}^n \frac{\sin \frac{k\pi}{n}}{n+\frac{k}{n}} < \lim_{n \to \infty} \sum_{k=1}^n \frac{1}{n} \sin \frac{k\pi}{n}. $$

由夹逼定理可知所求结果即为 $\frac{2}{\pi}$.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 变限积分

前面提到的积分 $F(x)=\displaystyle\int_a^x f(t) \mathrm{d}t$ 实际上就是**变限积分**，且根据定积分的性质我们有：

- 若 $f$ 在 $[a,b]$ 上可积，则 $F$ 在 $[a,b]$ 上连续.
- 若 $f$ 在 $[a,b]$ 上连续，则 $F$ 在 $[a,b]$ 上可导，且 $F'(x)=f(x)$.

<div class="fragment" style="margin-top: 0px">

变限积分最基础的应用就是 $F'(x)=f(x)$，在洛必达等场景中会用到. 

除此以外还有一些题目涉及到变限积分和其他结构的转换.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->
