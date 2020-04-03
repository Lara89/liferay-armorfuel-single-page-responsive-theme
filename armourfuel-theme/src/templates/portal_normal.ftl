<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	<link rel="stylesheet" type="text/css" href="${css_folder}/pluton.css" />
	<link rel="stylesheet" type="text/css" href="${css_folder}/jquery.cslider.css" />
	<#--  <link rel="stylesheet" type="text/css" href="${css_folder}/custom.css" />  -->
	<link rel="stylesheet" type="text/css" href="${css_folder}/owl.carousel.css" />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
	</header>

	<div id="content">
		<h2 class="hide-accessible" role="heading" aria-level="1">${the_title}</h2>
		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</div>

	<footer class="footer plu" id="footer" role="contentinfo">
		<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
		</p>
	</footer>

	<!-- ScrollUp button start -->
    <div class="scrollup">
        <a href="#">
            <i class="plu-icon-up-open"></i>
        </a>
    </div>
    <!-- ScrollUp button end -->
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<script>
AUI().applyConfig({
    modules: {
        'jquery': {
            fullpath: '${javascript_folder}/jquery.min.js'
        },
        'jquery-mixitup': {
            fullpath: '${javascript_folder}/jquery.mixitup.js',
            requires: ['jquery']
        }     
    }
});
</script>
<script type="text/javascript" src="${javascript_folder}/jquery.min.js"></script>
<script type="text/javascript" src="${javascript_folder}/jquery.inview.js"></script>
<script type="text/javascript" src="${javascript_folder}/jquery.mixitup.js"></script>
<script type="text/javascript" src="${javascript_folder}/modernizr.custom.js"></script>
<script type="text/javascript" src="${javascript_folder}/jquery.cslider.js"></script>
<script type="text/javascript" src="${javascript_folder}/jquery.placeholder.js"></script>
<script type="text/javascript" src="${javascript_folder}/bootstrap.js"></script>
<script type="text/javascript" src="${javascript_folder}/owl.carousel.js"></script>
<script type="text/javascript" src="${javascript_folder}/app.js"></script>
<!-- endinject -->

</body>

</html>