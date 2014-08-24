resque: env TERM_CHILD=1 COUNT=10 bundle exec bin/rake resque:workers QUEUE=*
heroku ps:scale resque=2 --app bureaucrat
