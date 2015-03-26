# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery('document').ready ($) ->

  arielElements = {}
  tags = []
  $('#tag-selected option').each () ->
    tags.push $(this).val()
  tags.map (tag) ->
    $iframe = $('iframe[id^="tagged"]')
    frameDoc = $iframe.get(0).contentDocument
    document.registerElement tag
    document.createElement tag
    elm = frameDoc.registerElement tag
    frameDoc.createElement tag
    arielElements[tag] = elm

  $.fn.loadCss = (css) ->
    iframe = this.eq(0)
    $iframe = $ iframe
    id = $iframe.attr 'id'
    $iframe.load () ->
      icontents = $iframe.contents()
      $head = icontents.find('head')
      $head.append($('<link/>', {
          rel: 'stylesheet',
          href: css,
          type: 'text/css'
        }
      ))

  $('iframe[id^="tagged"]').loadCss('/assets/document.tagged.css')
  $('iframe[id^="original"]').loadCss('/assets/document.original.css')


  makeTags = (tag) -> o: '<'+tag+'>', c: '</'+tag+'>'

  $('#mark-selection').on 'click', (evt) ->
    evt.preventDefault()
    $iframe = $('iframe[id^="tagged"]')
    frameDoc = $iframe.get(0).contentDocument
    selection = frameDoc.getSelection()
    tag = $('#tag-selected').val()
    tags = makeTags tag
    customElm = new arielElements[tag]()

    strSelection = $('<div />').append(getHTMLOfSelection(frameDoc)).html()
    ['Selected string', strSelection].logb()

    range = selection.getRangeAt(0)
    if range.commonAncestorContainer.nodeName == '#text'
      parent = $(range.commonAncestorContainer.parentNode)
      ancestor_is_text = true
    else
      parent = $(range.commonAncestorContainer)
      ancestor_is_text = false

    childList = parent.get(0).childNodes

    parentInner = parent.html()
    ['Parent inner before'].logb()
    console.log parentInner

    if ancestor_is_text
      startIndex = parentInner.indexOf(strSelection)
      parentInner = [parentInner.slice(0, startIndex), tags.o, parentInner.slice(startIndex)].join ''
      endIndex = startIndex + tags.o.length + strSelection.length
      parentInner = [parentInner.slice(0, endIndex), tags.c, parentInner.slice(endIndex)].join ''
      parent.html parentInner
    else
      childList = $.map(childList, (e) ->
        e unless e.nodeName == '#text'
      )
      start_element = range.startContainer
      index = 0
      while start_element.parentNode != parent.get(0)
        start_element = start_element.parentNode
        index++
      end_element = range.endContainer
      while end_element.parentNode != parent.get(0)
        end_element = end_element.parentNode
      to_push = false
      saved = []
      $.each childList, (i, c) ->
        if c == start_element
          to_push = true
        if to_push
          saved.push $(c.outerHTML).get(0)
          c.outerHTML = ''
        if c == end_element
          to_push = false
          return
      $.each saved, (i, e) ->
        customElm.appendChild e
      parent.children().eq(index).after(customElm)

    ['Parent inner after'].logb()
    console.log parentInner

  $('#import-tagged').on 'click', (evt) ->
    evt.preventDefault()
    $iframe = $('iframe[id^="tagged"]')
    frameDoc = $iframe.get(0).contentDocument
    html = $(frameDoc.children[0]).outerHTML()

    $('#document_tagged').val html
