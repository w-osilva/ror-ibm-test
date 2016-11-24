# Setup

Clone application

    $ git clone https://github.com/w-osilva/ror-ibm-test.git

Update dependencies
 
    $ cd ror-ibm-test
    $ bundle update
    
Dabase setup
     
    $ rake db:create
    $ rake db:drop
    
# CSV Import

From rake task    
         
    $ rake importer:csv[us-500.csv]
    
# WEB Pages

Run webserver

    $ rails s
    
Check application in [http://localhost:3000](http://localhost:3000)    

######OBS: Create your account and login
