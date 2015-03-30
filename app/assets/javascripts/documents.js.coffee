# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery('document').ready ($) ->

  tags = []
  $('#tag-selected option').each () ->
    tags.push $(this).val()

  arielElements = {}
  $('iframe[id^="tagged"]').load (e) ->
    iframe = e.target
    tags.map (tag) ->
      frameDoc = iframe.contentDocument
      elm = frameDoc.createElement(tag).constructor
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

  $('iframe[id^="original"]').loadCss('/assets/document.original.css')

  $('#mark-selection').on 'click', (evt) ->
    $iframe = $('iframe[id^="tagged"]')
    frameDoc = $iframe.get(0).contentDocument
    selection = frameDoc.getSelection()
    tag = $('#tag-selected').val()
    tags =
      o: '<span data-' + tag + '="true" data-' + tag + '-condition="open">'
      c: '</span>'
    customElm = new arielElements[tag]()

    strSelection = $('<div />').append(getHTMLOfSelection(frameDoc)).html()
    ['Selected string', strSelection].logb()

    range = selection.getRangeAt(0)
    parent = ancestor_is_text = undefined
    if range.commonAncestorContainer.nodeName == '#text'
      parent = $(range.commonAncestorContainer.parentNode)
      ancestor_is_text = true
    else
      parent = $(range.commonAncestorContainer)
      ancestor_is_text = false

    if ancestor_is_text
      parentInner = parent.html()
      startIndex = parentInner.indexOf(strSelection)
      parentInner = [parentInner.slice(0, startIndex), tags.o, parentInner.slice(startIndex)].join ''
      endIndex = startIndex + tags.o.length + strSelection.length
      parentInner = [parentInner.slice(0, endIndex), tags.c, parentInner.slice(endIndex)].join ''
      parent.html parentInner
    else
      parent = parent.get(0)
      childList = $.map parent.childNodes, (e) ->
        e unless e.nodeName == '#text'
      start_element = range.startContainer
      while start_element.parentNode != parent
        start_element = start_element.parentNode
      end_element = range.endContainer
      while end_element.parentNode != parent
        end_element = end_element.parentNode
      to_push = false
      for c in childList
        if c == start_element
          to_push = true
          $(c).attr('data-'+tag+'-condition', 'open')
        if to_push
          $(c).attr('data-'+tag, true)
        if c == end_element
          $(c).attr('data-'+tag+'-condition', 'close')
          break

  $('#import-tagged').on 'click', (evt) ->
    $iframe = $('iframe[id^="tagged"]')
    frameDoc = $iframe.get(0).contentDocument
    htmlTag = $(frameDoc.children[0]).clone()
    htmlTag.find('script').remove()
    htmlTag.find('link').remove()
    html = htmlTag.outerHTML()

    $('#document_tagged').val html
