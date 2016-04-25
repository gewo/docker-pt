# pt in docker

> Minimal client to use Pivotal Tracker from the console.

## Usage

Build the image first:

    docker build -t pt .

To use the image run:

    docker run -it --rm -v $HOME/.pt:/root/.pt -v $(pwd):/pwd pt

To make using this simpler there is a small shell script which you may
want to add to your path:

    export PATH=/path/to/docker-pt/bin:$PATH
    pt

## Config

You have to create your credentials config file in `~/.pt`:

```
:email: !ruby/string:HighLine::String mail@example.com
:api_number: abcdef123456789abcdef123456789ff
```
