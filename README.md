
## Install gems: 
bundle install 

## Read, Parse File & Get Data post analysis : 

<!-- input -->
ruby ./main.rb webserver.log

<!-- output -->

/about/2 90 visits
/contact 89 visits
/index 82 visits
/about 81 visits
/help_page/1 80 visits
/home 78 visits

/help_page/1 23 visits
/contact 23 visits
/home 23 visits
/index 23 visits
/about/2 22 visits
/about 21 visits


## Run Test case
rspec ./spec/parser.spec 