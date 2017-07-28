
![Beyond lies the wub](https://www.gutenberg.org/files/28554/28554-h/images/001.png)

[_"The wub, sir," Peterson said. "It spoke!"_](https://www.gutenberg.org/files/28554/28554-h/28554-h.htm)

## Background

This is a very first step in web development, building a super simple web service using Rack, following [Launch School](https://launchschool.com)'s [Rack tutorial](https://launchschool.com/blog/growing-your-own-web-framework-with-rack-part-1).

## Usage

Start the server:
```
bundle exec rackup config.ru -p 3000
```

Routing:

* `localhost:3000/` lets you see a [Fnord](https://en.wikipedia.org/wiki/Fnord)
* `localhost:3000/env` displays the `env` that is passed to `call`
* `localhost:3000/action` suggest something to do (in case you happen to be bored)
* `localhost:3000/whatever` (and any other path not specified above) results in a 404
