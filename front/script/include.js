document.addEventListener('DOMContentLoaded', function () {
	let elements = document.getElementsByTagName('include');

	// go through all the include tags and fetch the html to add it
	for (var i = 0; i < elements.length; i++) {
		let element = elements[i];
		n(elements[i].attributes.src.value, function (html) {
			element.insertAdjacentHTML('afterend', html), element.remove();
		});
	}

	/**
	 * Fetch and return the html
	 *
	 * @param {string} src The source to fetch
	 * @param {Function} callback The callback to add the fetched HTML to the DOM
	 */
	function n(src, callback) {
		fetch(src)
			.then(res => res.text())
			.then(ret => callback(ret));
	}
});
