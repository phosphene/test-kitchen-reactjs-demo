# react_demo

A Chef cookbook for configuration of a generic react app informed by Inspec testing



## Quick Start

Test Kitchen is a RubyGem

We have used Bundler, and have added `gem "test-kitchen"` to our Gemfile among others

make sure to run `bundle install`.

And, of course, you will need bundler installed as well, if it is not yet installed.

```
$ gem install bundler
```


A `.kitchen.yml` was created in our project base directory. This file
describes yur testing configuration; what we want to test and on which target
platforms.

Each of these suite and platform combinations are called instances.
By default our instances will be converged with Chef Solo and run in Vagrant
virtual machines.

Get a listing of our instances with:

```
$ kitchen list
```

We only have one instance in the yaml file

in this case `default-ubuntu-1404`, with:

```
$ kitchen converge default-ubuntu-1404
```


```
$ kitchen converge
```

currently only converges on `default-ubuntu-1404`


Destroy all instances with:

```
$ kitchen destroy
```

You can clone this project that contains Test Kitchen support and
run through all the instances in serial by running:

```
$ kitchen test
```

## Usage

There is help included with the `kitchen help` subcommand which will list all
subcommands and their usage:

```
$ kitchen help test
```

More verbose logging for test-kitchen can be specified when running test-kitchen from the command line using:

```
$ kitchen test -l debug
```

For the provisioner (e.g. chef-solo or chef-zero) add a `log_level` item to the provisioner section of the `.kitchen.yml`
For more information see the Documentation.  This is a change since version 1.7.0
