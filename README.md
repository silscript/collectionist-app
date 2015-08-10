#Collectionist Appplication
A simple collection application for print collectors.

##Installation Instructions
The instructions already assume that you have all the necessary installationEither fork the repository into your account or clone it through terminal. Change to the directory to place the repository. Do not place it into a repository with git initialized.

```console
$ cd to_your_directory
```

######To fork:
* In Github, select the 'Fork' button.
* In Github, a new forked repository will be added to your account.
* In Github, select and copy the HTTPS clone URL.
* In your CLI, use the git clone command to clone the repository.
* In your directory, the forked repository should be added.

######To clone:
* In Github, select and copy the HTTPS clone URL.
* In your CLI, use the git clone command to clone the repository.
* In your directory, the cloned repository should be added.

```console
$ git clone https://github.com/siltastic/collectionist-app.git
```

######To run the application:
* Have PostgreSQL running to connect to the server.
* Once repository is cloned, change directory to the repository.
* In your CLI, do a bundle install to fetch gem metadata.
* In your CLI, create the database, migrate information, and seed data.
* In your CLI, run the rails application.

```console
$ cd .../collectionist-app
```

```console
$ bundle install
```

```console
$ rake db:create db:migrate db:seed
```

```console
$ rails s
```

##Author
- Email: siltastic@gmail.com
- Dribbble: https://dribbble.com/siltastic
- GitHub: https://github.com/siltastic
- Twitter: http://twitter.com/siltastic

##Credits
- All screen print images by Mondo.
- Font by Eben Sorkin & Google Fonts.
- Font-Awesome Iconography by Dave Gandy & Fort Awesome