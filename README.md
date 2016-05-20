# Magic The Gathering Engine
An open source implementation of the rules engine MTG (Magic The Gathering)

## Goal

- Coverage all MTG's rules (oldest and newest mechanics);
- Achive simple integration (or embeded) the engine with other projects;
- Give the opportunity add custom user's card and mechanics in the game (using special DSL);
- The engine must support to save game in file and to load game from file.

Now project is at early stage his live. More info will be with the development.

Good Luck!

# Requirements

- SBCL (http://www.sbcl.org/)
- Quickload (https://www.quicklisp.org/beta/)

# Installation

- Create asdf folder anywere;
- Make links on kontur.ac.asd, kontur.ac.test.asd and move them in asdf folder;
- Run sbcl
- Setup asdf folder

```Lisp
(setf asdf:*central-registry*
      ;; Default directories, usually just the ``current directory''
      '(*default-pathname-defaults*
        ;; Additional places where ASDF can find
        ;; system definition files
        #p"YOUR_PATH_TO_ASDF"
        ))
```
- load

```Lisp
(load "PATH_TO_APPLICATION_FOLDER\bootstrap.lisp")
```

# ToDo

- [ ] Usage section
- [ ] Implement Core set of rules
- [ ] Travis CI
