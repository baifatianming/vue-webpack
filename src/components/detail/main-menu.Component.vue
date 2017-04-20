<template>
	<div id="main-menu">
		<ul>
			<li data-category="WOMEN" class="wd16">
				<span id="WOMEN" class="ui-btn" @click='addActive'>女装</span>
			</li>
			<li data-category="MEN" class="wd16">
				<span id="MEN" class="ui-btn" @click='addActive'>男装</span>
			</li>
			<li data-category="KIDS" class="wd16">
				<span id="KIDS" class="ui-btn" @click='addActive'>童装</span>
			</li>
			<li data-category="BABY" class="wd20">
				<span id="BABY" class="ui-btn" @click='addActive'>婴幼儿</span>
			</li>
			<li data-category="SPORTS" class="wd16">
				<span id="SPORTS" class="ui-btn" @click='addActive'>运动</span>
			</li>
			<li data-category="SALE" class="wd16">
				<span id="SALE" class="ui-btn" @click='addActive'>特惠</span>
			</li>
		</ul>
	</div>
</template>

<script>
	export default{
		name:'main-menu'
	}
</script>