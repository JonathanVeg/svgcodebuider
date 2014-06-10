$ ->
	$("#code").val('''<svg height="600" width="600">
  <text x="0" y="15" fill="red">Para usar svg, digite seu código e veja o resultado em tempo real.!</text>
  Sorry, your browser does not support inline SVG.
</svg>
''')

	$(".svg_view").html $("#code").val()

	$("#code").bind "input propertychange", ->

		$(".svg_view").html $("#code").val()
		return 

		
	$("#code").keypress (e) ->
		if e.keyCode is 9
			myValue = "\t"
			startPos = @selectionStart
			endPos = @selectionEnd
			scrollTop = @scrollTop
			@value = @value.substring(0, startPos) + myValue + @value.substring(endPos, @value.length)
			@focus()
			@selectionStart = startPos + myValue.length
			@selectionEnd = startPos + myValue.length
			@scrollTop = scrollTop
			e.preventDefault()
		return
