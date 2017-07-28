require 'mustache'
require_relative 'src/action'

class Main
  def call(env)
    header = {'Content-Type' => 'text/html'}

    case env['REQUEST_PATH']
    when '/'
      response(200, header) { render('index') }
    when '/env'
      response(200, header) { render('env', to_context(env)) }
    when '/action'
      response(200, header) { render('action', action: Action.pick) }
    else
      response(404, header) { render('404') }
    end
  end

  private

  def response(status, header, body='')
    body = yield if block_given?
    [status, header, [body]]
  end

  def render(file, context={})
    Mustache.render(File.read("views/#{file}.mustache"), context)
  end

  def to_context(hash)
    { entries: hash.to_a.map { |k, v| { key: k.to_s, value: v.to_s } } }
  end
end
