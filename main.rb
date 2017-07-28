require_relative 'action'

class Main
  def call(env)
    status = 200
    case env['REQUEST_PATH']
    when '/'
      body = ['Fnord!']
    when '/env'
      body = env.to_a.map { |k, v| "#{k}: #{v}\n" }
    when '/action'
      body = [Action.pick]
    else
      status = 404
      body = ["This is not the page you're looking for."]
    end
    [status, {'Content-Type' => 'text/plain'}, body]
  end
end
