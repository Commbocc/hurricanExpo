---
---

$ ->

	# freetile
	$('#partner-images').freetile()

	# google sheet parser
	googleSheetKey = "1iXNfU49QJvmW5QP6p50gbEc3Qbqi_EoByVEU6d4WAIY"

	Highcharts.data
		googleSpreadsheetKey: googleSheetKey
		googleSpreadsheetWorksheet: 1
		parsed: (columns) ->
			i = 1
			unorderedList = $("<ul>")

			while i < columns[0].length
				if columns[0][i]
					liText = columns[0][i] 
					liText += " <a href='#{columns[1][i]}' class='small' target='_blank'><i class='fa fa-fw fa-external-link'></i></a>" if columns[1][i]?
				unorderedList.append $("<li>").html liText
				i++
			return $("#sponsors").html unorderedList if columns[0][1]?

			