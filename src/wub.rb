require 'mustache'

class Wub
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
