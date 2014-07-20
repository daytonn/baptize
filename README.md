baptize
=======

Sure, your shell is bourne again... but is it baptized?

About
-----
baptize is a small bash framework for making sweet prompts that Jesus would be proud of.

![](https://raw.githubusercontent.com/daytonn/baptize/master/screenshot.png)

Installation
------------

```sh
git clone git@github.com:daytonn/baptize.git ~/.baptize
```

Then in your `.bashrc` or `.bash_profile` paste this:

```sh
source ~/.baptize/lib/baptize.sh
```

Configuration
-------------

Baptize comes preconfigured with some color settings but to customize the settings you'll need a `~/.holywater` configuration file.

Create a configuration file with the `config` command:

```sh
baptize config init
```

This will create a `~/.holywater` file with all the customizeable variables with their default values. To reload baptize with this configuration type:

```sh
baptize repent
```

Colors
------

Baptize comes with a full suite of color variables necessary to create any color your terminal can produce. To view all the available color variables, and what they look like use the `colors` command:

```sh
baptize colors
```
