# matching customer partners

Ruby Version: 3.0.0
Rails Version: 7.0.0.rc1

Simple API to recommended partners based on customer locations and type of work.

### Key files

    
    app
    ├── controller
    │      ├── api                             
    │           └── v1                        
    │               └── partners_controller  
    │
    ├── models                    
    │      ├── customer
    |      ├── partner
    |      ├── skill
    |      ├── partner_skill_set
    |      └── partner_expertise
    |
    ├── services
    │      ├── match_partner 
    |      └── serach_validation 
    |
    └──  serializer
            └── matched_partner
    

### Workflow - How does it work?

The following diagram show the process/workflow of the application.


    Please Postman/ Insomnia to test.

    GET / http://localhost:3000/api/v1/partners

    
        { "partner" : {
            "material": ["wood", "tiles"],
            "lat": 52.05,
            "long": 13,
            "area_in_sqm": "50",
            "customer_id": "1"
          }
        }
    
 
    │    1. GET request with all required params  │ 
    ├──────────────────────────────────────────── │     
    │                                             ├                        
    │    2. It returns all matched partners       │               
    │──────────────────────────────────────────── │
    │                                             │
    │    3. It raises an error with wrong params  │
    ├──────────────────────────────────────────── │ 
    │                                             ├       
    │    3. also return distance to customer      │ 
    │ ────────────────────────────────────────────│

***
**Setup**

* first clone the directory 
                      ```
                      git clone git@github.com:sajjadmurtaza/matching_customer_and_partner.git'
                      ```
 *  ```cd matching_customer_and_partner```

 *  ```bundle install ```
 *  ```rake db:create```
 *  ```rake db:migrate```
 *  ```rake db:seed```

 or

 *  ```rake db:setup```
 
 *  ```rails s ```
 
 Then open Postman or Insomnia or any API Testing Tool to connect with server
 
 * Enter url ```http://localhost:3000/api/v1/partners``` and pass parameters as json


    ```
      { "partner" : {
          "material": ["wood", "tiles"],
          "lat": 52.05,
          "long": 13,
          "area_in_sqm": "50",
          "customer_id": "1"
        }
      }
    ```

![alt text](https://raw.githubusercontent.com/sajjadmurtaza/SchedulyBridge/master/app/assets/images/img/mp1.png "MP1 Screenshot")

    [
      ...
      {
        "name": "Jhon",
        "rating": 1,
        "address": "quickborner straße 80 13439 berlin",
        "phone_number": "01758837834",
        "operating_radius": 25,
        "distance_to_customer": 3.45
      },
      ...
    ]

![alt text](https://raw.githubusercontent.com/sajjadmurtaza/SchedulyBridge/master/app/assets/images/img/mp2.png "MP Screenshot")


### Specs

run ``` bundle exe rspec   ``` to run the tests

![alt text](https://raw.githubusercontent.com/sajjadmurtaza/SchedulyBridge/master/app/assets/images/img/mp3.png "MP3 Screenshot")

#### Note
I used following gems for this challenge.

* [geocoder](http://www.rubygeocoder.com/) - geocoding library for Ruby.
* [rspec-rails](https://github.com/rspec/rspec-rails) - testing framework
* [byebug](https://github.com/deivid-rodriguez/byebug) -  debugger for Ruby