# pt in docker

> Minimal client to use Pivotal Tracker from the console.

## Building

Build the image first:

    docker build -t pt .

Or use the Makefile:

    make

## Usage

To use the image run:

    docker run -it --rm -v $HOME/.pt:/root/.pt -v $(pwd):/pwd pt

To make using this simpler there is a small shell script called `pt`. It
can be installed with:

    make install

## Config

You have to create your credentials config file in `~/.pt`:

    :email: mail@example.com
    :api_number: abcdef123456789abcdef123456789ff
