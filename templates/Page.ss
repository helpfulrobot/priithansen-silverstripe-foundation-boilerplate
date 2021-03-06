
<!DOCTYPE html>
<!--[if IE 8]> <html class="no-js lt-ie9" lang="$ContentLocale"> <![endif]-->
<!--[if gt IE 8]> <!--> <html class="no-js" lang="$ContentLocale"> <!--<![endif]-->

<head>
	<% base_tag %>
	<meta charset="utf-8" />

	<meta name="viewport" content="width=device-width" />

	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>

	$MetaTags(false)

	<!-- Included CSS Files -->
	<% require themedCSS('foundation') %>
	
	<script src="$ThemeDir/js/thirdparty/custom.modernizr.js"></script>

	<!-- This could be used in Page_Controller init() instead of having it here in template code.
	define("CURRENT_THEME_DIR", SSViewer::get_theme_folder());
	Requirements::insertHeadTags(sprintf(
			'<script src="%s"></script>',
			CURRENT_THEME_DIR . '/js/thirdparty/custom.modernizr.js'
		));
	-->

	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
</head>

<body>
	
	<% include Header %>
	
	<div class="row" role="main">
		<div class="large-12 columns">
			$Layout

		</div>

	</div>
	
	<% include Footer %>

	<!-- Instead of including files separately in template copy this code to mysite/code/Page.php init() method 
		and let Silverstripe combine and minify needed js files for you.

	define("CURRENT_THEME_DIR", SSViewer::get_theme_folder());
	Requirements::combine_files(
			'javascript.js',
			array(
					CURRENT_THEME_DIR.'/js/thrirdparty/jquery.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.abide.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.alerts.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.clearing.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.cookie.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.dropdown.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.forms.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.interchange.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.joyride.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.magellan.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.orbit.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.placeholder.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.reveal.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.section.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.tooltips.js',
					CURRENT_THEME_DIR.'/js/foundation/foundation.topbar.js',
			)
		);

	-->
	<!-- JS includes after this can be removed if above method is used instead -->
	<!-- Included JS Files (Uncompressed) -->

	<% require javascript('themes/foundation/js/thirdparty/jquery.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.abide.js') %>	
	<% require javascript('themes/foundation/js/foundation/foundation.alerts.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.clearing.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.cookie.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.dropdown.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.forms.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.interchange.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.joyride.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.magellan.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.orbit.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.placeholder.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.reveal.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.section.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.tooltips.js') %>
	<% require javascript('themes/foundation/js/foundation/foundation.topbar.js') %>
	
	<script>
		$(document).foundation();
	</script>
</body>
</html>
