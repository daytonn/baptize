baptize
=======

Sure, your shell is bourne again... but is it baptized?

![](https://raw.githubusercontent.com/daytonn/baptize/master/jesus-loves-baptize.png)

About
-----
baptize is a small bash framework for making sweet prompts that Jesus would be proud of. Baptize aims to be a shareable, testable, and configurable way to share common terminal environment customizations.

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

### Prompt Variables

There are several variables that control your customized prompt. Simply set them in your `~/.holywater` file and then `baptize repent` and you will see your changes.

#### PROMPT_ARROW

This sets the symbol at the end of your prompt. By default baptize uses a unicode arrow `❯` but you can set it to anything you like. If you don't wish to see a symbol at the end of your prompt, simply set `PROMPT_ARROW` to an empty string `PROMPT_ARROW=""`.

#### PROMPT_ICON

This sets the icon at the beginning of your prompt. This is just for style to add a bit of personality. You can use emoji or unicode characters or anything you like. If you prefer not to have an icon, simply set `PROMPT_ICON` to an empty string `PROMPT_ICON=""`.

#### PROMPT_CONTENT

This sets the content between the `PROMPT_ICON` and the `PROMPT_ARROW`. You can use any of the [prompt statment variables](http://ss64.com/bash/syntax-prompt.html). The baptize default is simply the working directory `\w` variable.

#### PROMPT\_ICON_COLOR

This sets the color of the `PROMPT_ICON`. Set this to any of the available baptize colors. To see a list of available colors use `baptize colors`.

#### PROMPT_COLOR

This sets the color of the from the `PROMPT_CONTENT` to the end of the `PROMPT_ARROW` (everything but the `PROMPT_ICON`). Set this to any of the available baptize colors. To see a list of available colors use `baptize colors`.

#### PROMPT\_2_ARROW

This sets the symbol of the continuation interactive prompt. This is the prompt you see when you enter multiline commands or when a script asks you for input. The baptize default is `❯❯`.

#### PROMPT\_2_COLOR

This sets the color of the continuation interactive prompt. Set this to any of the available baptize colors. To see a list of available colors use `baptize colors`.

### Git Prompt Variables

Baptize will change your prompt when the current directory is within a git repository. There are a few variables that let you customize the look of the prompt when in "git mode".


#### GSHOW_STATS

This variable determines whether or not the status "stats" will be shown in your prompt. By default baptize is set to show the stats of the current git status `GSHOW_STATS="yes"`. Meaning the modified file count, the added file count, and the deleted file count. This shows up in your prompt like so: `1:2:3`. This example would mean you have 1 modified file, 2 added files, and 3 deleted files. To turn off the stats count, simply set this variable to no: `GSHOW_STATS="no"`.

#### GSTATS_SEPARATOR

This variable sets the character that separates the stat count numbers. By default it is set to: `GSTATS_SEPARATOR_COLOR=":"`

#### GSHORT_PATH

This variable determines whether or not to show the entire working path, or just the path from the root of the project. By default bpatize is set to only show the path from the project root `GSHORT_PATH="yes"`. This means that a project in `/Users/username/development/work/myproject` would only show `myproject` as the working directory. If you cd to a directory inside the project, that will be reflected in the prompt: `myproject/nested/directory`. To turn off the short path, simply set this variable to no: `GSHORT_PATH="no"`.

#### GPULL_ICON

This variable sets the icon that will display when your local branch is behind the remote branch. By default this icon is set to: `GPULL_ICON=" ⇣ "`. If you prefer not to see this icon, simply set this variable to an empty string: `GPULL_ICON=""`.

#### GPUSH_ICON

This variable sets the icon that will display when your local branch has changes to be push up to the remote. By default this icon is set to: `GPUSH_ICON=" ⇡ "`. If you prefer not to see this icon, simply set this variable to an empty string: `GPUSH_ICON=""`.

#### GCLEAN_ICON

This variable sets the icon that will display when your local branch is clean. By default this icon is set to: `GCLEAN_ICON=" ✓ "`. If you prefer not to see this icon, simply set this variable to an empty string: `GCLEAN_ICON=""`.

#### GCLEAN_COLOR

This sets the color of the git prompt when the local branch is clean. By default this is set to: `GCLEAN_COLOR="$BLUEF_GREENB"`. Set this to any of the available baptize colors. To see a list of available colors use `baptize colors`.

#### GMODIFIED_COLOR

This sets the color of the git prompt when the local branch has changes and the color of the _modified_ file count in the git stats. By default this is set to: `GMODIFIED_COLOR="$BLUEF_YELLOWB"`. Set this to any of the available baptize colors. To see a list of available colors use `baptize colors`.


#### GADDED_COLOR

This sets the color of the _added_ file count in the git stats. By default this is set to: `GADDED_COLOR="$GREENF_YELLOWB"`. Set this to any of the available baptize colors. To see a list of available colors use `baptize colors`.

#### GDELETED_COLOR

This sets the color of the _deleted_ file count in the git stats. By default this is set to: `GDELETED_COLOR="$REDF_YELLOWB"`. Set this to any of the available baptize colors. To see a list of available colors use `baptize colors`.

#### GSTATS_SEPARATOR_COLOR

This sets  the color of the `GSTATS_SEPARATOR` symbol in the git stats count. By default this is set to: `GSTATS_SEPARATOR_COLOR="$BLUEF_YELLOWB"`. Set this to any of the available baptize colors. To see a list of available colors use `baptize colors`.

Colors
------

Baptize comes with a full suite of color variables necessary to create any color your terminal can produce. To view all the available color variables, and what they look like use the `colors` command:

```sh
baptize colors
```

Plugins
-------

Plugins are simply bash scripts placed in folders inside the `plugins` directory. Baptize will load all plugins by sourcing the `.sh` file with the name of it's plugin. For example, the barista plugin is located at `plugins/barista/barista.sh` and will automatically be sourced by baptize.

List of Baptize plugins:

* [Barista](http://github.com/daytonn/barista)
