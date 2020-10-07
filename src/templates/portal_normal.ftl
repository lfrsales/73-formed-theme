<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<div class="d-flex flex-column min-vh-100">
	<@liferay.control_menu />

	<div class="d-flex flex-column flex-fill" id="wrapper">
		<#if show_header>
			<header id="banner">
				<div class="navbar navbar-classic navbar-top py-2 upper-header upper-header-bg upper-header-text-color"  id="upperHeader">
					<div class="bg-transparent container-fluid px-lg-4 px-xl-6 user-personal-bar">
						<div class="align-items-center autofit-row">
							<#if show_language_selector>
								<div class="autofit-col language-selector mr-1 mr-md-2">
									<#assign preferences = freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone") />

									<@liferay_portlet["runtime"]
										defaultPreferences=preferences
										portletProviderAction=portletProviderAction.VIEW
										portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"
									/>
								</div>
							</#if>

							<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

							<div class="autofit-col flex-grow-1 flex-shrink-1">
								<#if show_header_search>
									<div class="justify-content-md-end ml-md-2 mr-2 mr-md-4 navbar-form" role="search">
										<@liferay.search_bar default_preferences="${preferences}" />
									</div>
								</#if>
							</div>

							<div class="autofit-col personal-bar-container">
								<@liferay.user_personal_bar />
							</div>
						</div>
					</div>
				</div>

				<div class="lower-header lower-header-bg lower-header-text-color navbar navbar-classic navbar-expand-md navbar-light py-2 site-navigation" id="lowerHeader">
					<div class="bg-transparent container-fluid px-lg-4 px-xl-6">
						<a class="${logo_css_class} align-items-center d-md-flex d-none logo-md mx-2" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
							<img alt="${logo_description}" class="mx-2 site-logo" src="${site_logo}" />

							<#if show_site_name>
								<h2 class="font-weight-light h2 mb-0 mx-2 lower-header-text-color text-uppercase">${site_name}</h2>
							</#if>
						</a>
						
						<a class="${logo_css_class} align-items-center d-inline-flex d-md-none logo-xs mr-4" href="${site_default_url}" rel="nofollow">
							<img alt="${logo_description}" class="mr-2 site-logo" src="${site_logo}" />

							<#if show_site_name>
								<h2 class="font-weight-light h2 mb-0 lower-header-text-color text-uppercase">${site_name}</h2>
							</#if>
						</a>

						<#include "${full_templates_path}/navigation.ftl" />
					</div>
				</div>
			</header>
		</#if>

		<section class="${portal_content_css_class} flex-fill" id="content">
			<h2 class="sr-only" role="heading" aria-level="1">${the_title}</h2>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</section>

		<#if show_footer>
			<footer class="footer-bg footer-text-color" id="footer" role="contentinfo">
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-center text-md-left">
							<@liferay.language key="powered-by" />

							<a class="text-white" href="http://www.liferay.com" rel="external">Liferay</a>
						</div>
					</div>
				</div>
			</footer>
		</#if>
	</div>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<#if enable_sticky_header>
	<script data-senna-track="permanent" id="stickyJS" src="${javascript_folder}/sticky.js" type="text/javascript"></script>
</#if>

</body>

</html>