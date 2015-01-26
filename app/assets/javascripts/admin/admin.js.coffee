jQuery ->

  createRequestData = (model, item_id, position) ->
    if model == "artwork"
      return { artwork: {artwork_id: item_id, row_order_position: position } }
    if model == "art_group"
      return { art_group: {art_group_id: item_id, row_order_position: position } }

  $sortableTable = $('.sortable')
  if $sortableTable.length > 0
    table_width = $sortableTable.width()
    cells = $sortableTable.find('tr')[0].cells.length
    desired_width = table_width / cells + 'px'
    $sortableTable.find('td').css('width', desired_width)

    $sortableTable.sortable(
      axis: 'y'
      items: '.sortable-row'
      cursor: 'move'

      sort: (e, ui) ->
        ui.item.addClass('active-item-shadow')
      stop: (e, ui) ->
        ui.item.removeClass('active-item-shadow')
        # highlight the row on drop to indicate an update
        ui.item.children('td').effect('highlight', {}, 1000)
      update: (e, ui) ->
        item_id = ui.item.data('item-id')
        url = "#{ui.item.data('controller-url')}update_row_order"
        model = ui.item.data('model')
        position = ui.item.index()
        console.log model
        data = createRequestData(model, item_id, position)
        console.log data
        $.ajax(
          type: 'POST'
          url: url
          dataType: 'json'
          data: data
        ).fail( (test)->
          console.log test
        )
    )

  $("form.artwork-filters-form select").change () ->
    $(@).parents("form").submit()
