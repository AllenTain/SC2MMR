# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You canuse CoffeeScript in this file: http://coffeescript.org/
#
# Global Var
obj = this
obj.params = {}

# On Document Load, init these functions
$(document).on 'DOMContentLoaded page:load', ->
  initRegionDropdown()

jQuery ->
  $('#mainTable').dataTable
    "iDisplayLength": 20
    "search":
      "caseInsensitve": true

initRegionDropdown = () -> 
  $('.js-region-select').on "change", () -> 
    $(this).submit()
