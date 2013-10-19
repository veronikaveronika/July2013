init_autocompletion =  ->
    $("input[autocompletion_path]").select2
      placeholder: "Поиск..."
      minimumInputLength: 1
      initSelection : (element, callback) ->
        if element.val()
          title = element.attr('title')
          if title
            data = { id: element.val(), text: title }
            callback(data)

      ajax:
          url: (term, page, context) ->
            this.attr('autocompletion_path')

          dataType: 'json'
          data: (term, page) ->
              return {
                  q: term
                  page_limit: 10
              }

          results: (data, page) ->
              return {results: data}

$(document).ready( init_autocompletion )
$(window).on( 'page:change', init_autocompletion )
