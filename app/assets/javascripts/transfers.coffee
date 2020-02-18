$(document).on 'turbolinks:load', -> 

  $('#modal-window').on 'show.bs.modal', (e) ->
    $('.btn_transferir').on 'click', (e) ->
      $('#transfer_vehicle').attr('readonly', false)
      $('#transfer_seller').attr('disabled', false)
      return
    return