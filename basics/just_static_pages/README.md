Task
====

Modify this Rails project so that it answers requests to the following URLs:
- http://0.0.0.0:3000/home/index
- http://0.0.0.0:3000/home/about

The content of http://0.0.0.0:3000/home/index should be:

    <h1>Hello World!</h1>
    <p>This is just a training example.</p>


The content of http://0.0.0.0:3000/home/about should be:

    <h1>About</h1>
    <p>Some basic info about this project.</p>

Tip
===

This project includes a test which you can use to analyse your work.

Use the command `rake test` to run the tests. Don't forget to run `rake db:migrate` before you run the first time `rake test`