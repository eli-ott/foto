document.addEventListener('DOMContentLoaded', function () {
	let e = document.getElementsByTagName('include');

	// go through all the include tags and fetch the html to add it
	for (var t = 0; t < e.length; t++) {
		let a = e[t];
		n(e[t].attributes.src.value, function (e) {
			a.insertAdjacentHTML('afterend', e), a.remove();
		});
	}

	/**
	 * Fetch and return the html
	 *
	 * @param {string} e The source to fetch
	 * @param {Function} t The callback to add the fetched HTML to the DOM
	 */
	function n(e, t) {
		fetch(e)
			.then(e => e.text())
			.then(e => t(e));
	}
});
