# TinyTapeout

See https://tinytapeout.com for more information on the project and how to get involved.

![tiny tapeout](tinytapeout.png)

# Progress notes

* PDN hang issues https://github.com/The-OpenROAD-Project/OpenLane/issues/1173
* Also discovered PDN hangs if extra lefs/defs are not deduplicated
* with PDN set so dense, tapeout job fails with density checks
* with unused PDN straps turned off, precheck fails
* copied the erased version (just power rings) and deleted the first digital power rings, copy pasted that over final gds
* precheck fails with missing power ports
* manually added missing power ports to gl verilog of user_project_wrapper

