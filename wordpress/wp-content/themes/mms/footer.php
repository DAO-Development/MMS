<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package MMS
 */

?>

		<footer>
			<section class="contacts">
				<div class="container">
					<div class="social">
						<h4>Мы в социальных сетях:</h4>
						<a class="whatsapp social-link" href="https://api.whatsapp.com/send?phone=79267294942&text=%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D1%81%D1%82%D0%B2%D1%83%D0%B9%D1%82%D0%B5%21%20%D0%AF%20%D1%85%D0%BE%D1%82%D0%B5%D0%BB%D0%B0%20%D0%B1%D1%8B%20%D0%B7%D0%B0%D0%BF%D0%B8%D1%81%D0%B0%D1%82%D1%8C%D1%81%D1%8F..."></a>
						<a class="vk social-link" href=""></a>
						<a class="instagram social-link" href="https://www.instagram.com/mms_massage/"></a>
						<a class="facebook social-link" href="https://www.facebook.com/mmsmassage/"></a>
						<a class="telegram social-link" href="https://t.me/Massagist_Ivan"></a>
						<a class="youtube social-link" href="https://youtube.com/channel/UCUb09LVy9nh6mE8VKfT1buA"></a>	
					</div>
					<div class="phone">
						<h4>Наш контактный телефон:</h4>
						<p class="number">+7 (926) 729 49 42</p>
					</div>
				</div>
			</section>
			<hr>
			<section class="main-footer">
				<div class="container">
					<div class="logo"></div>
					 <div class="menu"> 
						<h4 class="menu-title">Наши услуги</h4>
						<?php wp_nav_menu( [
						'theme_location'  => 'footer-services',
						'menu'            => 'Меню в подвале Услуги', 
						'container'       => 'nav',
						'container_class' => 'menu',
						'menu_class'      => '',
						'items_wrap'      => '<ul>%3$s</ul>',
						'depth'           => 0,
						] ); ?>
					</div>
					<div class="menu">
						<h4 class="menu-title">Информация</h4>
						<?php wp_nav_menu( [
						'theme_location'  => 'footer-info',
						'menu'            => 'Меню в подвале Информация', 
						'container'       => 'nav',
						'container_class' => 'menu',
						'menu_class'      => '',
						'items_wrap'      => '<ul>%3$s</ul>',
						'depth'           => 0,
						] ); ?>
					</div>
					<div class="menu">
						<h4 class="menu-title">Компания</h4>
						<?php wp_nav_menu( [
						'theme_location'  => 'footer-company',
						'menu'            => 'Меню в подвале Компания', 
						'container'       => 'nav',
						'container_class' => '',
						'menu_class'      => '',
						'items_wrap'      => '<ul>%3$s</ul>',
						'depth'           => 0,
						] ); ?>
						<p>Мы работаем пн.-вс.: 10:00-22:00</p>
					</div>				
				</div>
			</section>
			<hr>
		</footer>
	</div><!-- #page -->

<?php wp_footer(); ?>
<!-- YCLIENTS -->
				<script type="text/javascript" src="//w243750.yclients.com/widgetJS" charset="UTF-8"></script>
</body>
</html>
