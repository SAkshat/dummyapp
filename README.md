## Setup

Install [Git](http://git-scm.com/), [RVM](https://rvm.io/), PostgreSQL, [InfluxDB](https://portal.influxdata.com/downloads#influxdb).

    $ git clone https://github.com/SAkshat/dummyapp.git
    $ cd dummyapp/ # prompted by RVM
    $ bundle
    $ rake db:create
    $ rake db:migrate


#### Seeding data

    - Use script `app/adhoc_scripts/generate_seed_data` to generate records.
    - Use script `app/adhoc_scripts/seed_influx` to seed the generated data into the influx db
    - Use script `app/adhoc_scripts/seed_postgres` to seed the generated data into the postgres db
