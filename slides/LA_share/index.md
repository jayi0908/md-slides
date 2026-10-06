---
title: 线性代数：未竟之美 - 学科分享
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

<!-- .slide: data-background="background.webp" -->

<div class="middle center">
<div style="width: 100%">
<h1> 线性代数学了什么 </h1>
<p> Linear Algebra Done What </p>
</div></div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 写在前面

<div class="fragment" style="margin-top: 0px">

线性代数大概是很多同学在大学遇到的第一门数学课. 它的重要性不言而喻，但它也常常是同学第一次面对如此抽象的数学内容的地方.

</div>

<div class="fragment" style="margin-top: 0px">

于是便有了两个几乎人人都问过的问题：

> 1. 线性代数到底在讲什么？
> 2. 线性代数到底有什么用？

</div>

<div class="fragment" style="margin-top: 0px">

本次分享就围绕这两个问题展开，加上一些我个人的感想. 我们不会讲太多抽象的知识，只希望大家能看到一条自然的主线，以及这条主线延伸出去能望到多远.

</div>

<div class="fragment" style="margin-top: 0px">

<s>当然，更实际的目的是希望大家在期末之前就知道自己在学什么</s>.

</div>

<!--s-->
<!-- .slide: data-background="background.webp" -->

<div class="middle center">
<div style="width: 100%">
<h1> Part 1 线性代数在讲什么 </h1>
</div></div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 从一个幼稚的问题出发

<div class="fragment" style="font-size: 20pt; margin-top: 0px">

考虑如下两个方程组：

<div>
$$\text{(1)}\begin{cases} x_1+x_2+x_3=0 \\ x_1+2x_2+3x_3=0 \\ 2x_1+3x_2+4x_3=0 \end{cases} \qquad \text{(2)}\begin{cases} x_1+x_2+x_3=0 \\ x_1+2x_2+3x_3=0 \\ x_1+3x_2+4x_3=0 \end{cases}$$
</div>

不难解得，第一个方程组有无穷解，第二个方程组只有零解.

</div>

<div class="fragment" style="margin-top: 0px">

**为什么？** 从高斯-若当消元的过程来看，(1) 的简化阶梯矩阵出现了全零行，而原因是显而易见的：它的三个行向量
$$ \alpha_1=(1,1,1),\quad \alpha_2=(1,2,3),\quad \alpha_3=(2,3,4) $$
满足 $\alpha_1+\alpha_2=\alpha_3$，第三行本来就是多余的.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 问题被改写了

<div class="fragment" style="margin-top: 0px">

于是"线性方程组何时有唯一解、无穷解或无解"这个问题，被翻译成了另一个问题：

> 一组向量之间，什么时候存在"可以互相消去"的关系？

</div>

<div class="fragment" style="margin-top: 0px">

注意这里发生了什么：我们不再盯着方程里的 $x_1,x_2,x_3$，而是把每一行当作一个**整体**，去研究这些整体之间的关系.

</div>

<div class="fragment" style="margin-top: 0px">

要统一地研究"向量之间的关联"，就需要一个合适的舞台——一个定义了加法与数乘的代数结构. 这就是**线性空间**.

</div>

<div class="fragment" style="margin-top: 0px">

*这也是整门课的第一次抽象：从解方程，到研究解方程背后的结构.*

</div>

<div class="fragment" style="margin-top: 0px">

：那群环域呢？

</div>

<div class="fragment" style="margin-top: 0px">

：是为了引入线性空间和适应抽象语言做的准备。

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 插曲：什么是"代数结构"

<div class="fragment" style="margin-top: 0px">

本质上，运算就是一个映射. 例如实数的加法与乘法是

<div style="font-size: 18pt; margin-top: 0px">

$$ +\colon \mathbf{R}\times\mathbf{R}\to\mathbf{R},\ (a,b)\mapsto a+b; \qquad \times\colon \mathbf{R}\times\mathbf{R}\to\mathbf{R},\ (a,b)\mapsto a\times b. $$

</div>

把 $+$ 和 $\times$ 看成函数名，写成 $+(2,3)=5$，$\times(2,3)=6$，想必就会恍然大悟.

</div>

<div class="fragment" style="margin-top: 0px">

一个非空集合 $X$ 加上其上若干运算 $f_1,\ldots,f_k$，称为**代数系统** $\langle X\colon f_1,\ldots,f_k\rangle$；其中运算满足特定性质的一类，称为**代数结构**.

</div>

<div class="fragment" style="margin-top: 0px">

*关键在于：我们忽略了元素到底是实数、向量还是多项式，只关心运算的性质.*

</div>

<div class="fragment" style="margin-top: 0px">

这也是线性代数（H）这门课一直在做的却也不能被大多数人所理解的东西：把简单的东西抽象化，从而在许多看似无关的事物之间建立联系，并通过对抽象结构的讨论得到普适性的结论。

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

此事在 LALU 中亦有记载：

- 也许读到这里很多读者都会有些迷惑与焦急——为什么我们仿佛在学习很多看起来十分抽象而且似乎没什么实际应用的知识呢？或许我们需要在这里给读者一个“定心丸”. 事实上，我们在上一讲中定义的线性空间运算法则就是从一般向量加法数乘运算法则抽象而来的最为抽象和基本的内容，在这一讲中仅仅基于线性空间的公理，伴随着线性表示、线性扩张、线性相关等概念的提出，导出了（有限维）线性空间都具有一种统一的本质结构描述——基和维数，由此我们从抽象的运算规则走到了比较具体的结构. ... 这一路上我们实际上是从最为抽象的内容逐步定义概念，说明定理，走向具象的内容. 不同于一般线性代数从行列式、矩阵开始，这样的思路一定能让读者对线性代数有更为深刻的认识.


<!--v-->
<!-- .slide: data-background="background.webp" -->

## 再以线性空间为例

<div class="fragment" style="margin-top: 0px">

设 $V$ 是非空集合，$\mathbf{F}$ 是数域. 若 $\langle V\colon +\rangle$ 构成阿贝尔群：

- 加法结合律、加法单位元 $\vec{0}$、逆元 $-\alpha$、加法交换律；

并且定义了数乘 $\mathbf{F}\times V\to V$，$(\lambda,\alpha)\mapsto\lambda\alpha$，满足

- 数乘单位元 $1\cdot\alpha=\alpha$、数乘结合律 $\lambda(\mu\alpha)=(\lambda\mu)\alpha$；
- 左分配律 $(\lambda+\mu)\alpha=\lambda\alpha+\mu\alpha$、右分配律 $\lambda(\alpha+\beta)=\lambda\alpha+\lambda\beta$；

则称 $V$ 是域 $\mathbf{F}$ 上的**线性空间**，记作 $V(\mathbf{F})$.

</div>

<div class="fragment" style="margin-top: 0px">

全部家当就是这 $4+4$ 条公理. 此后我们必须**忘掉其他一切规则**，哪怕是 $(-1)\alpha=-\alpha$ 这样"显然"的事实，也只能一步步从公理推出来.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 抽象换来了什么

一旦接受了这 8 条公理，下面这些东西就都是线性空间：

<div class="fragment" style="margin-top: 0px">

- 平面向量 $\mathbf{R}^2$、空间向量 $\mathbf{R}^3$、列向量 $\mathbf{F}^n$；
- 次数小于 $n$ 的多项式全体 $\mathbf{F}[x]_n$；
- $m\times n$ 矩阵全体 $\mathbf{F}^{m\times n}$；
- 区间 $[a,b]$ 上的连续函数全体 $C[a,b]$、可微函数全体；
- 齐次线性方程组 $A\vec{x}=\vec{0}$ 的解集；
- 收敛数列全体、$\mathbf{R}$ 作为 $\mathbf{Q}$ 上的线性空间……

</div>

<div class="fragment" style="margin-top: 0px">

**我们只证一遍定理，却同时在所有这些对象上得到了结论.** 这就是抽象的意义.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 基与维数：线性空间的全部秘密

<div class="fragment" style="margin-top: 0px">

回到最初的问题——"可以互相消去的关系"，形式化之后就是**线性相关性**：

$$ \lambda_1\alpha_1+\lambda_2\alpha_2+\cdots+\lambda_n\alpha_n=\vec{0} $$

是否存在不全为零的解？

</div>

<div class="fragment" style="margin-top: 0px">

接着一个很自然的问题是：一个线性空间最少能由多少个向量线性扩张而来？答案就是**基**与**维数**.

</div>

<div class="fragment" style="margin-top: 0px">

于是我们得到一个相当惊人的结论：**有限维线性空间的结构，全部写在"维数"这一个数里**. 它可以由一组基经过线性运算完整地生成出来.

</div>

<div class="fragment" style="margin-top: 0px">

线性空间被研究清楚了，剩下的是它们之间的关系，也就是线性映射.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 线性映射

<div class="fragment" style="margin-top: 0px">

**定义**：$\sigma\colon V_1(\mathbf{F})\to V_2(\mathbf{F})$ 是线性的，若

$$ \sigma(\lambda\alpha+\mu\beta)=\lambda\sigma(\alpha)+\mu\sigma(\beta). $$

</div>

<div class="fragment" style="margin-top: 0px">

拆开来就是加性 $\sigma(\alpha+\beta)=\sigma(\alpha)+\sigma(\beta)$ 与齐次性 $\sigma(\lambda\alpha)=\lambda\sigma(\alpha)$ —— 也就是说，**线性映射就是线性空间之间的同态**：它把出发空间的运算"原封不动"地搬到到达空间.

</div>

<div class="fragment" style="margin-top: 0px">

一个容易忽视却很重要的细节：上式左边的加法是 $V_1$ 中的加法，右边的加法是 $V_2$ 中的加法，二者并非同一个运算.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 像、核与线性映射基本定理

<div class="fragment" style="margin-top: 0px">

研究一个映射，最自然的两个问题是：它把什么压成了零（**核**），它能够够到哪里（**像**）.

$$ \ker\sigma=\lbrace \alpha\in V_1 \mid \sigma(\alpha)=\vec{0}\rbrace ,\quad \operatorname{im}\sigma=\lbrace \sigma(\alpha)\mid \alpha\in V_1\rbrace . $$

</div>

<div class="fragment" style="margin-top: 0px">

**线性映射基本定理**：

$$ \dim V_1=\dim\ker\sigma+\dim\operatorname{im}\sigma. $$

</div>

<div class="fragment" style="margin-top: 0px">

这一个等式几乎串起了后面所有的内容：矩阵的秩、线性方程组解空间的维数、相抵标准形的存在性，本质上都是它.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 目标一：给线性空间分类

<div class="fragment" style="margin-top: 0px">

既然线性映射保持结构，那么**可逆的线性映射**就把两个空间彻底等同了起来——这就是**同构**.

</div>

<div class="fragment" style="margin-top: 0px">

> 两个有限维线性空间同构 $\iff$ 它们的维数相同.

</div>

<div class="fragment" style="margin-top: 0px">

于是 $\mathbf{R}^4$、$\mathbf{R}[x]_4$、$\mathbf{R}^{2\times 2}$ 在线性代数的眼中是**同一个东西**. 多项式和矩阵看起来天差地别，但只要维数相同，它们的线性结构就没有任何区别.

</div>

<div class="fragment" style="margin-top: 0px">

这标志着线性代数的**第一个目标达成**：线性空间这一代数结构已经被研究清楚了，完全的不变量只有一个数.

</div>

<div class="fragment" style="margin-top: 0px">

*这也是抽象的制高点. 接下来我们要从这个制高点往回走，走向具象.*

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 矩阵：抽象之后的具象

<div class="fragment" style="margin-top: 0px">

取定出发空间的基 $\alpha_1,\ldots,\alpha_n$ 与到达空间的基 $\beta_1,\ldots,\beta_m$，线性映射 $\sigma$ 完全由它在基上的取值决定：

$$ \sigma(\alpha_j)=\sum_{i=1}^m a_{ij}\beta_i. $$

</div>

<div class="fragment" style="margin-top: 0px">

把这些系数排成表，就是 $\sigma$ 的**矩阵表示** $A=(a_{ij})_{m\times n}$. 于是

$$ \mathcal{L}(V_1,V_2)\cong \mathbf{F}^{m\times n}. $$

</div>

<div class="fragment" style="margin-top: 0px">

矩阵的一切运算规则至此都不再是"规定"，而是被线性映射**逼出来**的：矩阵乘法对应映射复合，矩阵的逆对应映射的逆，矩阵的秩对应像空间的维数.

</div>

<div class="fragment" style="margin-top: 0px">

*为什么矩阵乘法要"行乘列"？因为复合映射只能这么算.*

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 目标二：选一组好基

<div class="fragment" style="margin-top: 0px">

同一个线性映射，在不同的基下有不同的矩阵. 自然的问题是：

> 能否选取合适的基，使得矩阵表示尽可能简单？

</div>

<div class="fragment" style="margin-top: 0px">

这就是线性代数的**第二个目标**，也是后半学期的全部主线——一串**标准形**：

</div>

<div class="fragment" style="font-size: 18pt; margin-top: 0px">

| 标准形 | 约束 | 结果 |
| --- | --- | --- |
| 相抵标准形 | 出发、到达空间的基可各自任选 |$\operatorname{diag}(I_r,O)$  |
| 相似/对角化 | $V\to V$，两边取同一组基 | $\operatorname{diag}(\lambda_1,\ldots,\lambda_n)$（不总是可行） |
| 若当标准形 | 同上，复数域 | 若当块的分块对角阵 |
| 有理标准形 | 同上，任意域 | 友阵的分块对角阵 |

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 行列式：代数与几何的一体两面

<div class="fragment" style="margin-top: 0px">

大部分教材从行列式起步，在我们的体系里它反而是一件**工具**. 但它确实有着丰富的内涵，可以从两条路线引入：

</div>

<div class="fragment" style="margin-top: 0px">

**代数的一面**：二次方程 $ax^2+bx+c=0$ 有判别式 $b^2-4ac$ 作为**重根的判据**，三次方程也有. 那么线性方程组的判别式是什么？——实际上正是行列式. $\det A=0$ 即 $A\vec{x}=\vec{0}$ 有非零解.

</div>

<div class="fragment" style="margin-top: 0px">

**几何的一面**：线性变换把直线映为直线，长度和角度的变化没有统一规律，但**体积的变化比例是一个常数**. 取由自然基张成的"单位正方体"，它在 $A$ 作用下变成由 $\alpha_1,\ldots,\alpha_n$ 张成的平行多面体，其体积就是 $\det A$.
</div>

<div class="fragment" style="margin-top: 0px">

**两条路线为何一致？** 体积被压成 $0$，说明空间被降了维，必有一个方向被整体压到零向量，这正是"重根"；反之亦然.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 回到起点

<div class="fragment" style="margin-top: 0px">

绕了这么多，我们终于可以回答一开始所提出的问题了. 对 $A\vec{x}=\vec{b}$，$A\in\mathbf{F}^{m\times n}$：

</div>

<div class="fragment" style="margin-top: 0px">

- 齐次情形 $A\vec{x}=\vec{0}$ 的解集就是 $\ker A$，由基本定理，它的维数为 $n-\operatorname{rank}A$；
- 非齐次情形有解 $\iff \vec{b}\in\operatorname{im}A \iff \operatorname{rank}A=\operatorname{rank}(A\mid \vec{b})$；
- 有解时，通解 = 一个特解 + 齐次解空间（一个仿射子空间）.

</div>

<div class="fragment" style="margin-top: 0px">

唯一解、无穷解、无解——三种情形，原来对应的是像空间与核空间的三种状态.

</div>

<div class="fragment" style="margin-top: 0px">

*这就是抽象的回报：那个一开始靠观察"第三行等于前两行之和"才看出来的事实，现在成了定理的一个平凡推论.*

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 最后一步：加上度量

<div class="fragment" style="margin-top: 0px">

到此为止，我们只谈了线性结构，从未谈过"长度"与"夹角"——但这恰是分析与几何中不可缺少的.

</div>

<div class="fragment" style="margin-top: 0px">

于是引入**内积** $\langle\cdot,\cdot\rangle$，线性空间升格为**内积空间**. 随之而来的是正交、投影、Gram-Schmidt、正交补……

</div>

<div class="fragment" style="margin-top: 0px">

研究线性空间靠同构（即维数），研究内积空间则要靠**保内积的同构**，也就是正交（酉）变换. 由此引出自伴算子、正规算子，以及线代 II 中最重要的**谱定理**.

</div>

<div class="fragment" style="margin-top: 0px">

再往下便是**奇异值分解**与**二次型**——它们是整门课通向应用最近的两扇门.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 一张地图

<div class="fragment" style="font-size: 18pt; margin-top: 0px">

$$ \text{线性方程组} \longrightarrow \text{线性相关性} \longrightarrow \text{线性空间} \xrightarrow{\ \text{基与维数}\ } \text{结构清楚} $$

$$ \downarrow $$

$$ \text{线性映射} \xrightarrow{\ \ker,\operatorname{im}\ } \text{基本定理} \longrightarrow \text{同构} \;\textbf{(目标一：分类)} $$

$$ \downarrow\ \text{取基} $$

$$ \text{矩阵} \longrightarrow \text{相抵} \to \text{相似} \to \text{若当/有理标准形} \;\textbf{(目标二：标准形)} $$

$$ \downarrow\ \text{加度量} $$

$$ \text{内积空间} \longrightarrow \text{谱定理} \longrightarrow \text{SVD、二次型} $$

</div>

<div class="fragment" style="margin-top: 0px">

**一句话总结**：线性代数从解线性方程组出发，研究的是线性空间与线性映射. 它一共做了两件事——给线性空间分类，给线性映射找最简单的矩阵表示.

</div>

<!--s-->
<!-- .slide: data-background="background.webp" -->

<div class="middle center">
<div style="width: 100%">
<h1> Part 2 线性代数有什么用 </h1>
</div></div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 一个需要认真对待的问题

<div class="fragment" style="margin-top: 0px">

"线性代数有什么用"是几乎每个初学者都会问的问题. 遗憾的是，回答它既需要对线性代数的深入学习，也需要有一个现代数学的全局观——这恰恰是初学者最缺的两样东西.

</div>

<div class="fragment" style="margin-top: 0px">

所以下面的内容注定是走马观花的. 但我们希望呈现一个更广阔的线性代数观：

> 一切事关**线性性**的探讨，都可以被称为线性代数.

</div>

<div class="fragment" style="margin-top: 0px">

接下来我们仅取一瓢之水，希望读者窥一斑可见全豹. 这些内容中有不少是尚未学习的，读者留个印象即可，日后回头再看，一定会感觉无比亲切.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 为什么是"线性"

<div class="fragment" style="margin-top: 0px">

先回答一个更根本的问题：凭什么线性的东西值得专门开一门课？

</div>

<div class="fragment" style="margin-top: 0px">

**因为线性问题是我们唯一能彻底解决的一类问题.**

</div>

<div class="fragment" style="margin-top: 0px">

从 Part 1 我们已经看到：有限维线性空间被一个数完全分类，线性映射有标准形，线性方程组有完整的解理论. 在整个数学中，能被如此彻底地"做完"的分支屈指可数.

</div>

<div class="fragment" style="margin-top: 0px">

于是处理非线性问题的基本套路就有了：**先线性化，再用线性代数的全部武器库**. 微积分如此，数值计算如此，机器学习亦如此.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 线性代数与微积分

<div class="fragment" style="margin-top: 0px">

微积分中最核心的概念——**导数**，本质上就是线性映射：

$$ f(x_0+h)=f(x_0)+\mathrm{D}f(x_0)h+o(\|h\|), $$

其中 $\mathrm{D}f(x_0)$ 是一个线性映射，在取定基后就是 Jacobi 矩阵.

</div>

<div class="fragment" style="margin-top: 0px">

换句话说，**微分就是用线性映射去逼近一个一般的映射**. 二阶导数（Hesse 矩阵）则对应一个二次型，其正定性决定了极值的类型——这又回到了二次型理论.

</div>

<div class="fragment" style="margin-top: 0px">

反过来，分析的语言也丰富了线性代数：定义线性映射的**范数**

$$ \|A\|=\sup_{\|x\|=1}\|Ax\|=\sup_{x\neq 0}\frac{\|Ax\|}{\|x\|}, $$

它的几何意义是 $A$ 在一切方向上伸张系数的上确界.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 线性代数与几何

<div class="fragment" style="margin-top: 0px">

解析几何很大程度上就是线性代数发展的初衷：把具体的几何问题翻译为代数问题.

</div>

<div class="fragment" style="margin-top: 0px">

- 点、直线、平面的位置关系 $\to$ 点积、叉积、混合积，以及线性方程组；
- 二次曲线与二次曲面的分类 $\to$ **二次型的标准形与惯性定理**；
- 旋转、反射、投影 $\to$ 正交变换与投影算子；
- 体积与定向 $\to$ 行列式.

</div>

<div class="fragment" style="margin-top: 0px">

这段关系在历史上是互相成就的：从希腊时代到 1600 年，几何统治着数学，代数只居附庸地位. 正是解析几何的出现，为代数确立自己的地位铺平了道路.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 线性代数与最优化

<div class="fragment" style="margin-top: 0px">

**线性规划**：在若干线性不等式约束下最大化一个线性目标. 约束围成的可行域是一个凸多面体，最优解必在顶点取得——这是纯粹的线性代数几何.

</div>

<div class="fragment" style="margin-top: 0px">

**最小二乘**：当 $A\vec{x}=\vec{b}$ 无解时，退而求其次地最小化 $\|A\vec{x}-\vec{b}\|$. 答案由正交投影给出，也可以统一写成 Penrose-Moore 广义逆

$$ \vec{x}=A^{\dagger}\vec{b}. $$

</div>

<div class="fragment" style="margin-top: 0px">

**下降方法**：梯度下降、共轭梯度、牛顿法——每一步都在解一个线性子问题，收敛速度由 Hesse 矩阵的**条件数**（最大与最小特征值之比）决定.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 数据与机器学习

<div class="fragment" style="margin-top: 0px">

**奇异值分解**是最通用的工具：任意 $A\in\mathbf{R}^{m\times n}$ 可写成 $A=U\Sigma V^{\mathrm{T}}$. 截断前 $k$ 个奇异值即得 Frobenius 范数意义下的最佳 $k$ 秩逼近——主成分分析、推荐系统、图像压缩皆由此而来.

</div>

<div class="fragment" style="margin-top: 0px">

机器学习，包括大家熟悉的 Transformer，其内部都涉及了大量的矩阵计算.

</div>

<div class="fragment" style="margin-top: 0px">

<s>以及，深度学习的绝大部分计算量，是在做矩阵乘法</s>.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 往上走：线性空间还能怎么推广

<div class="fragment" style="margin-top: 0px">

线性空间定义在**域**上. 但域中的除法和乘法交换性，对"线性性"其实没什么用——如果注意到这一点，你已经能写出**模**的定义了：把域换成环即可.

</div>

<div class="fragment" style="margin-top: 0px">

模的理论在代数几何等现代领域中举足轻重. 一个漂亮的侧面：

> **定理（Freyd-Mitchell, 1964）** 任意小的 Abel 范畴都可以满、忠实且正合地嵌入到某个环 $R$ 的左模范畴中.

即：对 Abel 范畴的研究，可以在模范畴中完成.

</div>

<div class="fragment" style="margin-top: 0px">

沿另一条路，把线性映射推广为**双线性/多重线性映射**，便得到**张量积** $V\otimes W$ 与**张量**. 物理学中张量无处不在，以至于 Lillian R. Lieber 称之为 *the fact of universe*.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 线性化：群表示的艺术

<div class="fragment" style="margin-top: 0px">

一般的群没有线性结构. 但如果研究群 $G$ 到 $\mathcal{L}(V)$ 的群同态，就相当于把群**线性化**了——这就是**表示**.

</div>

<div class="fragment" style="margin-top: 0px">

于是群论里一批用常规方法无从下手的结论被攻克：

- **Burnside 定理**：$p^aq^b$ 阶的群都可解（据笔者所知尚无不用表示论的证明）；
- **Feit-Thompson 定理**：奇数阶群都可解；
- **有限单群分类定理**：上世纪到本世纪群论最重要的结果之一，主要部分正是用了特征标理论；
- **Ore 猜想**：1951 年提出，2010 年借李型单群的特征标理论完全解决.

</div>

<div class="fragment" style="margin-top: 0px">

在物理中，李群的表示论是现代粒子物理的主要工具之一；量子力学里哈密顿量对称群的表示则刻画了系统可能的能级（多重态）.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 往下走：无穷维的世界

<div class="fragment" style="margin-top: 0px">

把"有限维"这个限制去掉，会发生什么？

</div>

<div class="fragment" style="margin-top: 0px">

物理学的发展带动了向量空间理论的发展：向量空间的第一个具体定义由 Peano 在 1888 年的《几何计算》中给出，但影响有限；直到 1918 年 Weyl 的工作，人们才重新认识到这一公理化定义的重要性. 1920 年前后，Banach、Hahn、Wiener 等分析学家将其进一步发展，于是有了**赋范空间**与 **Hilbert 空间**.

</div>

<div class="fragment" style="margin-top: 0px">

这就是**泛函分析**的起点：线性空间 + 拓扑/完备性. Fourier 级数不过是在 $L^2$ 这个无穷维内积空间里做正交展开；量子力学的态空间就是一个 Hilbert 空间，可观测量就是其上的自伴算子.

</div>

<div class="fragment" style="margin-top: 0px">

*谱定理在无穷维下的推广，是二十世纪数学最深刻的成果之一.*

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 还能望到多远

<div class="fragment" style="margin-top: 0px">

以线性代数为主线出发，还能贯串现代数学的诸多方向：

</div>

<div class="fragment" style="margin-top: 0px">

- **分析**：Hilbert 空间、线性动力系统、微分方程的解空间；
- **几何**：微分几何与微分形式、射影几何的代数方法、仿射簇与代数几何；
- **代数**：Galois 理论、有限域上的线性代数与二次型、李群与李代数；
- **拓扑**：纽结的多项式不变量、同调代数（"本真意义的线性代数"）；
- **组合**：图论中的线性代数方法、对称多项式与 Young 图；
- **计算机**：编码与密码学、计算几何、程序设计范式中的代数结构与单子；
- **范畴论**：从更高的视角重看一切.

</div>

<div class="fragment" style="margin-top: 0px">

这些正是《线性代数：未竟之美》讲义中"**未竟专题**"想要回答的事：从线性代数出发，我们能走多远.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 所以，到底有什么用

<div class="fragment" style="margin-top: 0px">

可以给三个层次的回答：

</div>

<div class="fragment" style="margin-top: 0px">

1. **工具层面**：它是几乎所有后续课程的预修知识——微积分、概率统计、数值分析、信号处理、机器学习、量子力学、图形学，没有一门绕得开矩阵.

</div>

<div class="fragment" style="margin-top: 0px">

2. **方法层面**：它教会我们处理复杂问题的基本范式——**先线性化，再分类，再找标准形**. 这个范式本身的适用面，远远超出线性代数.

</div>

<div class="fragment" style="margin-top: 0px">

3. **观念层面**：它是大多数人第一次完整地见识**公理化**与**结构主义**——忽略元素是什么，只关心运算如何作用. 这正是现代数学的代表性方法论.

</div>

<div class="fragment" style="margin-top: 0px">

*"数学或许不能帮你买菜，但其中的思维方式才是最重要的"——这句老生常谈，在线性代数这里是实打实的.*

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 一点学习建议

<div class="fragment" style="margin-top: 0px">

- **抓主线**. 把握了"分类"与"标准形"这两个目标，剩下的就只是细节待补. 遇到新概念先问：它是为了解决主线上的哪一步？

</div>

<div class="fragment" style="margin-top: 0px">

- **区分清楚运算**. 抽象的困难大多来自符号的重载：$\alpha+\beta$ 里的加法究竟是哪个空间的？$\lambda\mu$ 里的乘法是域里的还是数乘？

</div>

<div class="fragment" style="margin-top: 0px">

- **做题，但题在精不在多**. 没有适量练习，是很难在初学时清晰掌握这些抽象思路和运算技巧的；但刷题也替代不了对概念的理解.

</div>

<div class="fragment" style="margin-top: 0px">

- **允许自己暂时不懂**. 抽象的回报来得比代价晚，很多东西要到第二遍、第三遍才会豁然开朗.

</div>

<!--v-->
<!-- .slide: data-background="background.webp" -->

## 一些我自己想说的

<div class="fragment" style="margin-top: 0px">

- 关于线性代数（H）这门课的意义

</div>

<div class="fragment" style="margin-top: 0px">

- 关于如何学习线性代数

</div>

<!--s-->
<!-- .slide: data-background="background.webp" -->

<div class="middle center">
<div style="width: 100%">
<h1> Thanks! </h1>
</div></div>
