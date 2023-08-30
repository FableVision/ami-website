# AMI Website

## Building/Running

This site uses [Jekyll](https://jekyllrb.com)! Requires Ruby 3.3.0+, so make sure that you've installed the newer version of ruby from [homebrew](https://brew.sh/) and set up your path to use brew-installed gems before installing jekyll. 

Actually building the site is just running `jekyll build` and the output goes to `_site`, which can be uploaded onto a server. When developing, `jekyll serve` will auto-build the site on file change.

## Making Changes

All content is held in the `_data` folder, with relatively self-explanatory file names!

### Projects

- All project information is stored in the `_projects` folder, each project gets its own markdown file. I recommend just duplicating an existing project and editing that when making a new one. The beginning of the file name is an [ISO date](https://en.wikipedia.org/wiki/ISO_8601) which is used for sorting, but doesn't have to be accurate.
- If you want a project to be marked as "coming soon", make the `coming_soon` variable `true` at the top of the file (or add it if it doesn't exist).
- The images are pulled from the `carousel` variable at the top. It's in an array format, so ['image.png', 'image.jpg', etc]
  - those images are pulled from the `img` root folder, I highly recommend setting the `assets_folder` variable to a folder name, and then make a folder with that same name to store project images in, as you can see with the example `ragamala-lab` project and img folder
  - to add a new folder in the github.com interface, click the plus icon to add a new file, then in the file name you want to add the desired folder name and then a slash (for example, if you want to name the folder "sample project", name the file `sample-project/temp`). The contents of this file don't matter, but git does not allow adding empty folders. commit the new file, and then you should have a new folder to add those images to!
  - these images are shown in the order they exist in the array, feel free to move a file name around in the array to change the order they're shown in! The `thumbnail` variable is the one that's show on the "What" project thumbnails page, that file is also taken from the assets_folder like the ones in the carousel
- The body text supports full [markdown](https://daringfireball.net/projects/markdown/basics) for more advanced text formatting

### Events

- the events are sorted by their [ISO date](https://en.wikipedia.org/wiki/ISO_8601) field in chronological order, starting from the earliest date
- can include [markdown tags](https://daringfireball.net/projects/markdown/basics) for things like links
- if there's more than one paragraph, please use the [| syntax](https://stackoverflow.com/a/21699210), making sure to indent subsequent lines to match the first one (otherwise it will not save properly!). I recommend using a code editor like sublime text for this as it will color-code the text to make it more obvious when it's formatted correctly!