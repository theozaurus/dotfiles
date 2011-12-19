export PATH="$PATH:/usr/local/mysql/bin"

# http://stackoverflow.com/questions/4512362/rails-server-fails-to-start-with-mysql2-using-rvm-ruby-1-9-2-p0-on-osx-10-6-5
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:$DYLD_LIBRARY_PATH"
