<div class="header">
  <h1>Это мой сайт!!!</h1>
  <span>Если вы сдесь впервые, тогда вы счастливчик - ведь именно вам повезло заценить его крутость</span>
</div>
<div class="about">
  <h5>Как пользоваться сайтом?</h5>
  <div class="about-info">
    <p> Представьте что здесь Реально написана какая-то инструкция по поводу того как пользоваться сайтом!</p>
    <p> Теперь немного о черепахах: Черепа́хи (лат. Testudines) — один из четырёх современных отрядов
      пресмыкающихся. Содержит около 328 современных видов, группируемых в 14 семейств и два подотряда[1]Перейти к
      разделу «#Классификация». Ископаемые остатки черепах прослеживаются на протяжении более 220 миллионов лет.

      Несмотря на то, что традиционно черепахи рассматривались как анапсиды[2][3][4], все генетические
      исследования подтвердили гипотезу о том, что черепахи — это диапсиды с редуцированными височными окнами;
      некоторые авторы помещали черепах в группу лепидозавроморф[5], хотя все более поздние исследования
      подтвердили их положение внутри группы архозавроморф[6].

      Отличительным признаком черепах является панцирь, состоящий из двух частей: карапакса и пластрона, и
      служащий основной защитой от враговПерейти к разделу «#Панцирь».</p>
  </div>
</div>
<div class="module">
  <p>Доступные модули:</p>
  <ul>
    <?php
    foreach ($modules as $val) {
      if ($val != "errors" && $val != "adminPanel") {
        echo "<li>";
        echo $val;
        echo "</li>";
      } 
    }
    ?>
  </ul>
  <div class="ALLcomments">
    <?php include "./skins/defoult/comments/getALL.tpl";
    ?>
  </div>
  <div class="ADDcomments">
    <?php include "./skins/defoult/comments/add.tpl"?>
  </div>
</div>