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

  makeTags = (tag) -> o: '<'+tag+'>', c: '</'+tag+'>'

  $('#mark-selection').on 'click', (evt) ->
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
      childList = $.map childList, (e) ->
        e unless e.nodeName == '#text'
      start_element = range.startContainer
      while start_element.parentNode != parent.get(0)
        start_element = start_element.parentNode
      index = $(start_element).index()
      end_element = range.endContainer
      while end_element.parentNode != parent.get(0)
        end_element = end_element.parentNode
      to_push = false
      saved = []
      for c in childList
        if c == start_element
          to_push = true
        if to_push
          saved.push c
          $(c).remove()
        if c == end_element
          break
      for e in saved
        customElm.appendChild e

      parent_children = parent.children()
      if parent_children.length > 0
        parent_children.eq(index).before(customElm)
      else
        parent.append(customElm)

    ['Parent inner after'].logb()
    console.log parentInner

  $('#import-tagged').on 'click', (evt) ->
    $iframe = $('iframe[id^="tagged"]')
    frameDoc = $iframe.get(0).contentDocument
    htmlTag = $(frameDoc.children[0]).clone()
    htmlTag.find('script').remove()
    htmlTag.find('link').remove()
    html = htmlTag.outerHTML()

    $('#document_tagged').val html
