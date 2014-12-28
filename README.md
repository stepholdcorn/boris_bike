# Boris Bikes

Software to manage renting and returning Boris Bikes.

The following classes and modules are used.

### Class - Docking Station 
 Responsibilities        |Collaborators
 ------------------------|-----------------
 Hold bike               | Bike
 Release bike            | User, bike, van
 Accept bike 			         | User, bike, van

### Class - Van 
 Responsibilities        |Collaborators
 ------------------------|------------------------------
 Move bike               | Bike
 Release bike            | Docking station, bike, garage
 Accept bike             | Docking station, bike, garage

### Class - Garage 
 Responsibilities        |Collaborators
 ------------------------|--------------
 Fix bike                | Bike
 Release bike            | Van, bike
 Accept bike             | Van, bike

### Class - Bike 
 Responsibilities        |Collaborators
 ------------------------|-----------------------------------
 Be released             | User, docking station, van, garage
 Be accepted             | User, docking station, van, garage
 Be broken               | User
 Be fixed                | Garage

### Class - User 
 Responsibilities        |Collaborators
 ------------------------|----------------------
 Rent bike               | Bike, docking station
 Have bike               | Bike
 Break bike              | Bike
 Return bike             | Bike, docking station
