AUI().ready(function () {
	const header = document.getElementById("lowerHeader");
	const wrapper = document.getElementById("wrapper");

	const headerOffset = header.offsetTop;
	const headerHeight = header.offsetHeight;

	window.onscroll = function() {
		if (window.pageYOffset > headerOffset) {
			header.classList.add("sticky");

			wrapper.setAttribute('style', `padding-top: ${headerHeight}px`);
		} else {
			header.classList.remove("sticky");

			wrapper.removeAttribute('style');
		}
	};
});