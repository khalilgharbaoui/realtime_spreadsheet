App.active_users = App.cable.subscriptions.create "ActiveUsersChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    # alert('connected')
  disconnected: ->
    # Called when the subscription has been terminated by the server
    # App.spreadsheet.remove_user(data.old_val)

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    if data.old_val && !data.new_val
      App.spreadsheet.remove_user(data.old_val)
    else if data.new_val
      App.spreadsheet.new_user(data.new_val)
