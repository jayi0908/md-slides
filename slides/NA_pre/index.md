---
title: NA 小组展示
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

<!-- .slide: data-background="background.webp" -->
<div class="middle center">
<div style="width: 100%">
<h1> NA Research Topic 6 </h1>
</div></div>

<!-- <div class="middle center">
<div style="width:100%">
袁楚涵，苏子皓，侯爵，陈响
</div></div> -->

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 问题表述

设矩阵 $A$ 的值是准确的，$\vec{b}$ 有误差 $\delta \vec{b}$，则带有误差形式的解可写为 $\vec{x} + \delta \vec{x}$，即
$$ A(\vec{x} + \delta \vec{x}) = \vec{b} + \delta \vec{b}. $$
请分析 $\space\vec{b}$ 的相对误差和解 $\space\vec{x}$ 的相对误差的关系.

如果 $\space\vec{b}$ 是精确的而 $A$ 有误差 $\delta A$ 呢？

<!--s-->
<!-- .slide: data-background="background.webp" -->

<div class="middle center">
<div style="width: 100%">
<h1> Part 1 数学推导 </h1>
</div></div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## $\vec{b}$ 的扰动对解 $\space \vec{x}$ 的影响

如果 $A$ 是不可逆的，那么 $A\vec{x} = \vec{b}$ 的解可能不存在或者有无穷多解，取决于 $\space\vec{b}$ 能否落在 $A$ 的列空间中.

而由于 $\space\vec{b}$ 有误差 $\delta \vec{b}$，则 $\vec{b} + \delta \vec{b}$ 可能不在列空间中，这样讨论解的误差就没有意义了. 因此为了讨论方便以及更有意义，我们假设 $A$ 是可逆的.

<div class="fragment" style="margin-top: 0px">

利用矩阵加法，$A(\vec{x} + \delta \vec{x}) = \vec{b} + \delta \vec{b}$，且 $A\vec{x} = \vec{b}$，可得 

$$ A \delta \vec{x} = \delta \vec{b}. $$

</div>
<div class="fragment" style="margin-top: 0px">

设 $\space\vec{b}$ 的相对误差 $\epsilon_b = \dfrac{\lVert\delta \vec{b}\rVert}{\lVert\vec{b}\rVert}$，解 $\space\vec{x}$ 的相对误差为 $\epsilon_x = \dfrac{\lVert\delta \vec{x}\rVert}{\lVert\vec{x}\rVert}$.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

利用范数的性质：

$$ \lVert \vec{b}\rVert = \lVert A \vec{x} \rVert \leq \lVert A \rVert \lVert \vec{x} \rVert, \lVert \delta \vec{x} \rVert = \lVert A^{-1} \delta \vec{b} \rVert \leq \lVert A^{-1} \rVert \lVert \delta \vec{b} \rVert. $$

<div class="fragment" style="margin-top: 0px">

则 $$ \epsilon_x = \dfrac{\lVert\delta \vec{x}\rVert}{\lVert\vec{x}\rVert} \leq \lVert A^{-1} \rVert \dfrac{\lVert \delta \vec{b} \rVert}{\lVert \vec{x} \rVert} \leq \lVert A^{-1} \rVert \lVert A \rVert \dfrac{\lVert\delta \vec{b}\rVert}{\lVert\vec{b}\rVert}. $$

</div>

<div class="fragment" style="margin-top: 0px">

将对 $\space \vec{b}$ 和对 $\space \vec{x}$ 的处理反过来，即根据

$$ \lVert \delta \vec{b} \rVert = \lVert A \delta \vec{x} \rVert \leq \lVert A \rVert \lVert \delta \vec{x} \rVert, \lVert \vec{x} \rVert = \lVert A^{-1} \vec{b} \rVert \leq \lVert A^{-1} \rVert \lVert \vec{b} \rVert $$

</div>

<div class="fragment" style="margin-top: 0px">

同样可以得到：

$$ \epsilon_b = \dfrac{\lVert\delta \vec{b}\rVert}{\lVert\vec{b}\rVert} \leq \lVert A \rVert \dfrac{\lVert \delta \vec{x} \rVert}{\lVert \vec{b} \rVert} \leq \lVert A \rVert \lVert A^{-1} \rVert \dfrac{\lVert\delta \vec{x}\rVert}{\lVert\vec{x}\rVert}. $$

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

综上所述，若矩阵 $A$ 可逆，则有

$$ \dfrac{1}{\kappa(A)} \epsilon_b \leq \epsilon_x \leq \kappa(A) \epsilon_b. $$

这里 $\kappa(A) = \lVert A \rVert \lVert A^{-1} \rVert$ 称为矩阵 $A$ 的条件数.

<!--s-->
<!-- .slide: data-background="background.webp" -->

<div class="middle center">
<div style="width: 100%">
<h1> Part 2 数学推导 </h1>
</div></div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## $A$ 的扰动对解 $\space \vec{x}$ 的影响

尽管非奇异矩阵远比奇异矩阵更加稠密，但在假设 $A$ 可逆的情况下，$\delta A$ 的扰动仍然有可能使得 $A + \delta A$ 变为奇异矩阵，或者至少在计算机上表现为奇异矩阵. 而 $A + \delta A = A(I + A^{-1}\delta A)$，因此我们希望 $I + A^{-1}\delta A$ 是可逆的.

<div class="fragment" style="margin-top: 0px">

我们知道当矩阵 $B$ 的谱半径小于 $1$ 时，矩阵 $I + B$ 是可逆的（谱半径小于 $1$ 意味着矩阵收敛，因此可使用类似于泰勒展开，将 $I - T$ 展开为 $\displaystyle\sum_{i=0}^{\infty} T^i$）. 因此我们希望 $\rho(A^{-1}\delta A) < 1$.

由于 $(A+\delta A)(\vec{x} + \delta \vec{x}) = \vec{b}$，且 $A\vec{x} = \vec{b}$，可得

$$ (A+\delta A)\delta \vec{x} = \vec{b} - (A+\delta A)\vec{x} = -(\delta A)\vec{x}. $$

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

从而 $$ \delta \vec{x} = -(A + \delta A)^{-1}(\delta A)\vec{x} = -(I + A^{-1}\delta A)^{-1} A^{-1}(\delta A)\vec{x}. $$

因此 $$ \lVert \delta \vec{x} \rVert \leq \lVert (I + A^{-1}\delta A)^{-1} \rVert \lVert A^{-1} \rVert \lVert \delta A \rVert \lVert \vec{x} \rVert . $$

若 $\lVert A^{-1} \delta A \rVert < 1$，则 $$ (I + A^{-1}\delta A)^{-1} = I + \sum_{i=1}^{+\infty} (-1)^i (A^{-1}\delta A)^i $$

$$ \lVert (I + A^{-1}\delta A)^{-1} \rVert = 1 + \sum_{i=1}^{+\infty} (-1)^i \lVert (A^{-1}\delta A)^i \rVert = \frac{1}{1-\lVert A^{-1} \delta A \rVert}$$

<!--v-->
<!-- .slide: data-background="background.webp" -->

$$ \epsilon_x = \dfrac{\lVert \delta \vec{x} \rVert}{\lVert \vec{x} \rVert} \leq \dfrac{\lVert A^{-1} \rVert \lVert \delta A \rVert}{1 - \lVert A^{-1} \rVert \lVert \delta A \rVert} = \frac{\lVert A^{-1} \rVert \lVert A \rVert \frac{\lVert \delta A \rVert}{\lVert A \rVert}}{1 - \lVert A^{-1} \rVert \lVert A \rVert \frac{\lVert \delta A \rVert}{\lVert A \rVert}}. $$

设 $ \epsilon_A = \dfrac{\lVert \delta A \rVert}{\lVert A \rVert} $，则有 $\epsilon_x \leq \dfrac{\kappa(A) \epsilon_A}{1 - \kappa(A) \epsilon_A}$.
