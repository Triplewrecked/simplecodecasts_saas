


application = File.expand_path('../my_app.ru', __FILE__)
backend = Heroku::Forward::Backends::Thin.new(application: application, env: env)
proxy = Heroku::Forward::Proxy::Server.new(backend, host: '0.0.0.0', port: port)
proxy.forward!


require 'heroku/forward/backends/thin'