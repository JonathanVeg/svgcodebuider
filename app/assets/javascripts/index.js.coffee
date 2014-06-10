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
