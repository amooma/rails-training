A Game of Ping Pong
===================

Please add a controller `game` with the actions `index`, `ping` and `pong` to this Rails application. 

http://0.0.0.0:3000/game/index
------------------------------

`game#index` should output the following webpage:

<h1>Welcome!</h1>
<p>Your choices:</p>

<ul>
  <li><a href="/game/ping">Ping</a></li>
  <li><a href="/game/pong">Pong</a></li>
</ul>

http://0.0.0.0:3000/game/ping
------------------------------

`game#ping` should output the following webpage:

<h1>Ping!</h1>

<ul>
  <li><a href="/game/pong">Pong</a></li>
</ul>

http://0.0.0.0:3000/game/pong
------------------------------

`game#pong` should output the following webpage:

<h1>Ping!</h1>

<ul>
  <li><a href="/game/ping">Ping</a></li>
</ul>

Tips
====

Use `link_to` to create the links. You'll find help for `link_to` on 
http://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to 

You can check your application by running the tests with the command `rake`. The result should be:

    $ rake
    Run options: --seed 51222

    # Running tests:

    .......

    Finished tests in 0.077132s, 90.7535 tests/s, 557.4859 assertions/s.

    7 tests, 43 assertions, 0 failures, 0 errors, 0 skips
    $
