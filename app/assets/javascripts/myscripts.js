/*
 * My Proprietary Javascript Code
 * (C) 2014 Arena.pl Sp. z o.o.
 *
 */

// --------------------------------------------------------------

function refresh_page() {
	window.location.reload();
	return false;
}

// --------------------------------------------------------------

function close_cookie_warning() {
	// -- funkcja zamyka ostrzeżenie o ciasteczkach
	//alert('Wow, super, ale nie tak szybko!');
	var elem=document.getElementById('cookie_warning');
	if (elem) {
		// -- cookie set
		document.cookie="cookie_warning=Accepted";
		// -- alert dismiss (nice animation... some day)
		elem.style.display='none';
		// -- info
		//alert('Cookie on cookies set.');
	} else {
	    alert('Cook! We have a problem!');
	}
	return false;
}

// --------------------------------------------------------------

function delet_cookie_warning_cookie() {
	document.cookie = "cookie_warning=; expires=Thu, 01 Jan 1970 00:00:00 GMT";
	if (confirm('Informacja o akceptacji ciasteczek została usunięta.\n\nKliknik OK, aby przeładować stronę.')) {
		window.location.reload();
	}
	return false;
}

// --------------------------------------------------------------

function swich_login_input() {
	// -- funkcja zmienia sposób logowania: identyfikator lub email
	var elem1=document.getElementById('inputUserId-group');
	var elem2=document.getElementById('inputEmail-group');
	if (elem1 && elem2) {
		if (elem1.style.display=='none') {
			// -- chowamy inputEmail
			//elem2.value='';
			elem2.style.display='none';
			// -- wyświetlamy inputUserId
			elem1.style.display='block';
			//elem1.select();
			elem1.focus();
		} else {
			// -- chowamy inputUserId
			//elem1.value='';
			elem1.style.display='none';
			// -- wyświetlamy inputEmail
			elem2.style.display='block';
			//elem2.select();
			elem2.focus();
		}
	} else {
		alert('Damn!\nSomething went wrong. (#98732451.24)');
	}
	return false;
}

// --------------------------------------------------------------
