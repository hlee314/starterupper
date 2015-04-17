#!/bin/bash

# Configuration
# ---------------------------------------------------------------------

# The instructor's course repository
# A good template to use for course repository names is:
#   SUBJECT-NUMBER-YEAR-SEMESTER  (NO SPACES)
readonly REPO=starterupper

# Your school email address domain
readonly SCHOOL=wit.edu

# The instructor's Bitbucket username
readonly INSTRUCTOR_BITBUCKET=lawrancej

# The instructor's Github username
readonly INSTRUCTOR_GITHUB=lawrancej

# The instructor's Gitlab username
readonly INSTRUCTOR_GITLAB=lawrancej

# Upstream host: where to host the course repository
#   (uncomment only one upstream host)
readonly UPSTREAM_HOST=github.com
#readonly UPSTREAM=gitlab.com
#readonly UPSTREAM=bitbucket.org

# Upstream user (most likely the instructor's user name on the upstream host)
readonly UPSTREAM_USER=lawrancej

# Run starter upper
# ---------------------------------------------------------------------

cd ~

# Fetch script, html and javascript
# curl https://raw.githubusercontent.com/lawrancej/starterupper/gh-pages/starter-upper.sh 2> /dev/null > starter-upper.sh
# curl http://lawrancej.github.io/starterupper/index.html 2> /dev/null > $REPO-index.html
cp ~/projects/starterupper/index.html "$REPO-index.html"
cp ~/projects/starterupper/*.js .
cp ~/projects/starterupper/starter-upper.sh .

chmod +x starter-upper.sh
. starter-upper.sh
starterupper::main
