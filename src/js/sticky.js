AUI().ready(function () {
	const controlPanelContainer = document.getElementsByClassName('control-menu-container')[0];

	const header = document.getElementById("lowerHeader");
	const wrapper = document.getElementById("wrapper");

	if (header) {
		const headerOffset = header.offsetTop;
		const headerHeight = header.offsetHeight;
	
		window.onscroll = function() {
			if (window.pageYOffset > headerOffset) {
				const CPCHeight = controlPanelContainer ? controlPanelContainer.offsetHeight : 0;
	
				header.classList.add("sticky");
	
				header.style.setProperty('top', `${CPCHeight}px`);
	
				wrapper.style.setProperty('padding-top' ,`${headerHeight}px`);
			} else {
				header.classList.remove("sticky");
				
				header.style.removeProperty('top');
	
				wrapper.style.removeProperty('padding-top');
			}
		};
	}
});