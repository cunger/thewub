
## Simple web service with Rack

Start the server:
```
bundle exec rackup config.ru -p 3000
```

Routing:
* `localhost:3000/` lets you see a [Fnord](https://en.wikipedia.org/wiki/Fnord)
* `localhost:3000/env` displays rack's `env`
* `localhost:3000/action` suggest something to do (in case you happen to be bored)
* `localhost:3000/whatever` (and any other path not specified above) results in a 404
