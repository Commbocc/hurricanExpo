---
---

$ ->

	expireDate = new Date(2016, 3-1, 31);
	todayDate = new Date();
	if (todayDate < expireDate)
		$('#early-registration-business').html('<abbr data-toggle="tooltip" data-placement="bottom" title="Early registration ends March 31st">$450<sup>*</sup></abbr>')
		$('#select-early-registration-business').text('Business $450.00 USD - until March 31st')
