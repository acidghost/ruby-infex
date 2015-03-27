getFile = (url) ->
  if (window.XMLHttpRequest)
    AJAX=new XMLHttpRequest()
  else
    AJAX=new ActiveXObject("Microsoft.XMLHTTP")
  if (AJAX)
    AJAX.open("GET", url, false)
    AJAX.send(null)
    return AJAX.responseText
  else
    return false

tags = JSON.parse getFile('/tags.json')
for t in tags
  document.registerElement t.token, prototype: Object.create(HTMLElement.prototype)
