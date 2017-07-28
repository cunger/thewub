require_relative 'src/action'
require_relative 'src/wub'

class Main < Wub
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
end
