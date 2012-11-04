module.exports =

  http: (options) -> new @HttpClient options

  getClient: (options) ->
    options or= {}
    options.api or= module.exports.defaults.api
    module.exports[options.api] options

# exports

module.exports.__defineGetter__ 'HttpClient', ->
  @_httpClient ||= require './http_client'
