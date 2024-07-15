import 'package:flutter_riverpod/flutter_riverpod.dart';


final visibleProvider = StateProvider<List<bool>>((ref) => [false,false,false,false,false]);

final mapListProvider =
    StateNotifierProvider<MapListStateNotifier, List<Map<String, dynamic>>>(
  (ref) => MapListStateNotifier(),
);


final lottieProvider = StateProvider<Map<String,dynamic>>((ref) => {
  "regulator1":[],
  "regulator2":[],
  "b1Analog1":[],
  "b1Analog2":[],
  "b2Analog1":[],
  "b2Analog2":[],

  "Analog1":[],
  "Analog2":[],
  "Analog3":[],
  "Analog4":[],
  "Analog5":[],
  "Analog6":[],

  "regulator3":[],
  "Afrr1low":false,
  "Afrr1med":false,
  "Afrr1RC":false,
  "Afrr2low":false,
  "Afrr2med":false,
  "Afrr2RC":false,
  "Fpdr1low":false,
  "Fpdr1med":false,
  "Fpdr1RC":false,
  "Fprlow":false,
  "Fprmed":false,
  "FprRC":false,
  "Fpdr2low":false,
  "Fpdr2med":false,
  "Fpdr2RC":false,
  "Wlr1low":false,
  "Wlr1med":false,
  "Wlr1RC":false,
  "Wlr2low":false,
  "Wlr2med":false,
  "Wlr2RC":false,
  "Spr1low":false,
  "Spr1med":false,
  "Spr1RC":false,
  "Spr2low":false,
  "Spr2med":false,
  "Spr2RC":false,



});


class MapListStateNotifier extends StateNotifier<List<Map<String, dynamic>>> {
  MapListStateNotifier()
      : super([
          {
            "Title":"LIGHTING UP PRE-CHECKS",
            "id":1,
            "steps":[
              {
              "Text":"Ensure DA is running and taken on load.",
              "Voice":"voice/voice1-1.wav",
              "id":0,"state":false
            },
              {
              "Text":"Ensure the funnel cover is off.",
              "Voice":"voice/voice1-2.wav",
              "id":1,
              "state":false
            },
              {
              "Text":"Check the operational readiness of portable and fixed fire-fighting arrangements.",
              "Voice":"voice/voice1-3.wav",
              "id":2,"state":false
            },
              {
              "Text":"Check the boiler water level is +70 mm, if in set storage condition run down the boiler to +70 mm.",
              "Voice":"voice/voice1-4.wav",
              "id":3,"state":false
            },
              {
              "Text":"Check the air cocks open on steam drum and upper super heater header.",
              "Voice":"voice/voice1-5.wav",
              "id":4,"state":false
            },
              {
              "Text":"Check the condensate vessel on steam drum filled, if the boiler was not in wet storage condition earlier.",
              "Voice":"voice/voice1-6.wav",
              "id":5,"state":false
            },
      
              {
              "Text":"Check the availability of fuel and feed water in the storage and service tanks and full.",
              "Voice":"voice/voice1-7.wav",
              "id":6,"state":false
            },
            
              {
              "Text":"Check the power supply available for all MD pumps, lighting up blower and ERCR panel.",
              "Voice":"voice/voice1-8.wav",
              "id":7,"state":false
            },
              {
              "Text":"Check selector switch is set in 'Lighting up from the fan' position on RCR panel.",
              "Voice":"voice/voice1-9.wav",
              "id":8,"state":false
            },
              {
              "Text":"Inspect the boiler air casing by opening 04 casing drain plugs for presence of fuel and water.",
              "Voice":"voice/voice1-10.wav",
              "id":9,"state":false
            },
              {
              "Text":"Ensure burner is cleaned and positioned.",
              "Voice":"voice/voice1-11.wav",
              "id":10,"state":false
            },
              {
              "Text":"Check the spare burners and spare gauge glasses available in the compartment.",
              "Voice":"voice/voice1-12.wav",
              "id":11,"state":false
            },
              {
              "Text":"Reset quick closing mechanisms of all servo drives of stop valves (Main change over valve, main steam stop valve, TBU stop valve, SAT steam stop valve and fuel QCV).",
              "Voice":"voice/voice1-13.wav",
              "id":12,"state":false
            },
            
              {
              "Text":"Check working water is available (10 Bar) if not, start pump.",
              "Voice":"voice/voice1-14.wav",
              "id":13
            },
              {
              "Text":"Check communication from ERCR to boiler front and to PDCR And SPDCR.",
              "Voice":"voice/voice1-15.wav",
              "id":14
            },
            
          
        
              {
              "Text":"Check both drain valves of lower superheater header to bilge and ensure no Water in the super heater. After water drained out from super heater close 2nd pass drain and keep open 3rd pass drain(Steam recirculation valve) Valve.",
              "Voice":"voice/voice1-16.wav",
              "id":15
            },
              {
              "Text":"Check the boiler protection on Control Panel is switched off.",
              "Voice":"voice/voice1-17.wav",
              "id":16
            },
              {
              "Text":"Check steam parameters switch is in low regime.",
              "Voice":"voice/voice1-18.wav",
              "id":17
            },
            ]
          },
          {
             "Title":"FOLLOWING VALVES ARE TO BE OPENED",
            "id":2,
            "steps":[
              {
                 "Text":"Isolating valve on feed line(Steam Drum inlet valve).",
              "Voice":"voice/voice2-1.wav",
              "id":0
              },
              {
                 "Text":"Steam and Water isolating cocks of gauge glasses.",
              "Voice":"voice/voice2-2.wav",
              "id":1
              },
              {
                 "Text":"Impulse valves on condensate vessel on Steam Drum.",
              "Voice":"voice/voice2-3.wav",
              "id":2
              },
              {
                 "Text":"Isolating valves for gauge glass from Steam Drum.",
              "Voice":"voice/voice2-4.wav",
              "id":3
              },
              {
                 "Text":"All valves of instrumentation(Pressure gauges).",
              "Voice":"voice/voice2-5.wav",
              "id":4
              },
            ]
          },
          {
             "Title":"FOLLOWING VALVES ARE TO BE CLOSED",
            "id":3,
            "steps":[
              {
                 "Text":"Steam Drum and Water Drum blow down valves.",
              "Voice":"voice/voice3-1.wav",
              "id":0
              },
              {
                 "Text":"Sampling valves from steam drum.",
              "Voice":"voice/voice3-2.wav",
              "id":1
              },
              {
                 "Text":"Economisers drain valves.",
              "Voice":"voice/voice3-3.wav",
              "id":2
              },
              {
                 "Text":"Main steam stops pulse valves.",
              "Voice":"voice/voice3-4.wav",
              "id":3
              },
              {
                 "Text":"Fuel recirculating valve(near mainfold).",
              "Voice":"voice/voice3-5.wav",
              "id":4
              },
              {
                 "Text":"Wet Storage Tank to boilers isolating valve.",
              "Voice":"voice/voice3-6.wav",
              "id":5
              },
            ]

          },
          {
             "Title":"SYSTEM READINESS AIR SYSTEMS",
            "id":4,
            "steps":[
              {
                 "Text":"Check power supply available for the lighting up blower.",
              "Voice":"voice/voice4-1.wav",
              "id":0
              },
              {
                 "Text":"Ensure MD Blower(Lighting up Blower) discharge trunking change over flap closed and isolating valve is open to the air casing.",
              "Voice":"voice/voice4-2.wav",
              "id":1 
              },
              
            ]
          },
          {
             "Title":"FUEL SYSTEM",
            "id":5,
            "steps":[
              {
                 "Text":"Check the fuel level in all fuel service tanks full.",
              "Voice":"voice/voice5-1.wav",
              "id":0
              },
              {
                 "Text":"Check the fuel for presence of water and drain it.",
              "Voice":"voice/voice5-2.wav",
              "id":1
              },
              {
                 "Text":"Ensure suction and discharge fuel filters cleaned.",
              "Voice":"voice/voice5-3.wav",
              "id":2
              },
              {
                 "Text":"Check the fuel system and clear from service tank to burner.",
              "Voice":"voice/voice5-4.wav",
              "id":3
              },
              {
                 "Text":"Check the fuel Isolantic valves to the burners closed.",
              "Voice":"voice/voice5-5.wav",
              "id":4
              },
              {
                 "Text":"Select the switch on remote control panel for service and stand by pump. Standby pump should be always on Auto and service pump on Manual.",
              "Voice":"voice/voice5-6.wav",
              "id":5
              },
              {
                 "Text":"Check the opening of steam pressure regulator(SPR) 4 to 6% on the remote control panel.",
              "Voice":"voice/voice5-7.wav",
              "id":6
              },
              {
                 "Text":"Open recirculating valve in the fuel system.",
              "Voice":"voice/voice5-8.wav",
              "id":7
              },
              {
                 "Text":"Check the fuel pressure at burner 14 Bar.",
              "Voice":"voice/voice5-9.wav",
              "id":8
              },
              
            ]
          },
          {
             "Title":"FEED SYSTEM",
            "id":6,
            "steps":[
              {
                 "Text":"Check the feed system is clear up to feed check valve.",
              "Voice":"voice/voice6-1.wav",
              "id":0
              },
              {
                 "Text":"Check the feed water quality for salt contents in the tank.",
              "Voice":"voice/voice6-2.wav",
              "id":1
              },
              {
                 "Text":"Prepare Ion exchange filter.",
              "Voice":"voice/voice6-3.wav",
              "id":2
              },
              {
                 "Text":"Prepare feed regulator for putting into use.",
              "Voice":"voice/voice6-4.wav",
              "id":3
              },
              {
                 "Text":"Prepare Deaerator and fill the water 6.6 tons and clear the system from and to feed service tank and main condenser.",
              "Voice":"voice/voice6-5.wav",
              "id":4
              },
              {
                 "Text":"Open booster pump suction valves from deaerator.",
              "Voice":"voice/voice6-6.wav",
              "id":5
              },
             
            
              
            ]
          },
          {
             "Title":"SYSTEM READY OF OPERATION CHECK",
            "id":6,
            "steps":[
              {
                 "Text":"HP air system for charging of TBU protection system.",
              "Voice":"voice/voice7-1.wav",
              "id":0
              },
              {
                 "Text":"Working water system for Autonatics.",
              "Voice":"voice/voice7-2.wav",
              "id":1
              },
              {
                 "Text":"Blowdown drain system of Stream drum, Water drum and Lower super heater.",
              "Voice":"voice/voice7-3.wav",
              "id":2
              },
              {
                 "Text":"Cooling water system.",
              "Voice":"voice/voice7-4.wav",
              "id":3
              },
              {
                 "Text":"LUB oil system.",
              "Voice":"voice/voice7-5.wav",
              "id":4
              },
              {
                 "Text":"Protection and control system for TBU.",
              "Voice":"voice/voice7-6.wav",
              "id":5
              },
              {
                 "Text":"Chemical dosing system for boilers.",
              "Voice":"voice/voice7-7.wav",
              "id":6
              },
              {
                 "Text":"Sampling system of the boilers.",
              "Voice":"voice/voice7-8.wav",
              "id":7
              },
              {
                 "Text":"HP to LP SAT. steam reducer.",
              "Voice":"voice/voice7-9.wav",
              "id":8
              },
              {
                 "Text":"Reduction cooling unit.",
              "Voice":"voice/voice7-10.wav",
              "id":9
              },
              {
                 "Text":"Exhaust steam system.",
              "Voice":"voice/voice7-11.wav",
              "id":10
              },
              {
                 "Text":"LUB oil system.",
              "Voice":"voice/voice7-12.wav",
              "id":11
              },
              {
                 "Text":"Steam system(HP & AU) SUP.",
              "Voice":"voice/voice7-13.wav",
              "id":12
              },
                        ]
          },
          {
             "Title":"STARTING THE BOILER WHEN STEAM IS NOT AVAILABLE",
            "id":7,
            "steps":[
              {
                 "Text":"Before starting the boiler, the values of the regulators are to be set as follows:",
                 "t1":"SPR  - 6 to 85",
                 "t2":"FPDR - 20 to 25",
                 "t3":"FPR  - 50",
                 "t4":"WLR  - 0",
                 "t5":"AFRR - 25 to 35",
              "Voice":"voice/voice8-1.wav",
              "id":0
              },
              {
                 "Text":"Open registers of no.1 and no.2 burners fully.",
              "Voice":"voice/voice8-2.wav",
              "id":1
              },
              {
                 "Text":"Start id blower and direct to air casing.",
              "Voice":"voice/voice8-3.wav",
              "id":2
              },
              {
                 "Text":"Purge the furnace for 5 minutes prior lighting.",
              "Voice":"voice/voice8-4.wav",
              "id":3
              },
              {
                 "Text":"Check the water level in gauge glass and should not be less than +70.",
              "Voice":"voice/voice8-5.wav",
              "id":4
              },
              {
                 "Text":"After ventilation, a lamp flows indicating 'Ventilation over' locally and on the VDU in ERCR.",
              "Voice":"voice/voice8-6.wav",
              "id":5
              },
              {
                 "Text":"Change the no.1 burner register position to lighting up mode and close no.2 register check the fuel pressure 14 Bar at the burners by using fuel recirculating valve. Push the ignition button on the transformer for 2 seconds open the fuel supply to burners simultaneously and close the fuel recirculating valve to maintain fuel pressure at the burner 14 Bar. The register should be in lighting up position.",
              "Voice":"voice/voice8-7.wav",
              "id":6
              },
              {
                 "Text":"After flame ignition, open the register no.1 fully.(Indication of no flare goes off).{In case of ignition failure, close the fuel supply valve to the no.1 burner and open the recirculating valve. The fuel supply valve should not be kept open more than 8 sec. Other rise fuel may accumulate in furnace. Then ventilate the furnace for 5 minutes and again start the lighting up procedure.",
              "Voice":"voice/voice8-8.wav",
              "id":7
              },
              {
                 "Text":"After ignition, set the fuel pressure before burner 14 Bar using fuel recirculating valve at the fuel manifold.",
              "Voice":"voice/voice8-9.wav",
              "id":8
              },
              {
                 "Text":"Raise the pressure in boiler up to 35 Bar, stop the boiler and close lower super heater recirculaing valve.",
              "Voice":"voice/voice8-10.wav",
              "id":9
              },
              {
                 "Text":"Before shutting down the boiler ensure that main steam stop valve is opened by crack and steam inlet system to TBU, feed pump, TD fuel pump, HP to LP SAT steam reducer and atomizing steam system is warmed through. Do not open atomizing steap to burners initially. Open atomizing steap to burners just before light up the burner to avoid the torch igniter electrode to get yet and may lead to failure of igniter.",
              "Voice":"voice/voice8-11.wav",
              "id":10
              },
              {
                 "Text":"Replace the burner with steam mechanical(STANDARD).",
              "Voice":"voice/voice8-12.wav",
              "id":11
              },
              {
                 "Text":"Open main steam stop valve fully.",
              "Voice":"voice/voice8-13.wav",
              "id":12
              },
              {
                 "Text":"Start TBU and ensure super heater recirculating valve remain closed.",
              "Voice":"voice/voice8-14.wav",
              "id":13
              },
              {
                 "Text":"Purged the boiler using TBU.",
              "Voice":"voice/voice8-15.wav",
              "id":14
              },
              {
                 "Text":"RPM of the TBU at this stage is minimum 1000 to 1200 RPM.",
              "Voice":"voice/voice8-16.wav",
              "id":15
              },
              {
                 "Text":"Ignite no.1 burner using 2 Bar of fuel pressure.",
              "Voice":"voice/voice8-17.wav",
              "id":16
              },
              {
                 "Text":"Ignite no.2 burner, raise the boiler pressure by maintaining 2 Bar fuel pressure on both the burners using fuel recirculating valve.",
              "Voice":"voice/voice8-18.wav",
              "id":17
              },
              {
                 "Text":"All pulse valves on the lower super heater and steam drum are to be opened when the boiler pressure reaches 45 Bar.",
              "Voice":"voice/voice8-19.wav",
              "id":18
              },
              {
                 "Text":"Open steam to CFBP pump(feed pump is to be started according to the situation and boiler water level).",
              "Voice":"voice/voice8-20.wav",
              "id":19
              },
              {
                 "Text":"Start TD fuel pump and take into use and keep MD fuel pump on standby mode.",
              "Voice":"voice/voice8-21.wav",
              "id":20
              },
              {
                 "Text":"When pressure reaches 45 Bar, switch 'ON' boiler protection.",
              "Voice":"voice/voice8-22.wav",
              "id":21
              },
                        ]
          },
           {
             "Title":"MAIN PARAMETERS TO BE MONITORED",
            "id":9,
            "steps":[
              {
                 "Text":"Steam drum pressure.",
              "Voice":"voice/voice9-1.wav",
              "id":0
              },
              {
                 "Text":"Water level in the gauge glass.",
              "Voice":"voice/voice9-2.wav",
              "id":1
              },
              {
                 "Text":"Super heater outlet temperature.",
              "Voice":"voice/voice9-3.wav",
              "id":2
              },
              {
                 "Text":"Feed pump dicharge pressure.",
              "Voice":"voice/voice9-4.wav",
              "id":3
              },
              {
                 "Text":"Fuel pump dicharge pressure.",
              "Voice":"voice/voice9-5.wav",
              "id":4
              },
              {
                 "Text":"Fuel pressure before burner should be 1.5 Bar.",
              "Voice":"voice/voice9-6.wav",
              "id":5
              },
              {
                 "Text":"Air pressure inside the casing 300 mm water column.",
              "Voice":"voice/voice9-7.wav",
              "id":6
              },
              {
                 "Text":"RPM of turbo blower 1800 to 2200(When 2 burner in use).",
              "Voice":"voice/voice9-8.wav",
              "id":7
              },
              {
                 "Text":"The pressure across the nozzle block of TBU should be 0.01 to 0.03.",
              "Voice":"voice/voice9-9.wav",
              "id":8
              },
             
            
              
            ]
          },
          {
            "Title":"LIGHTING UP PROCEDURE",
            "id":10,
            "steps":[
              {
              "Text":"Ensure DA is running and taken on load.",
              "Voice":"voice/voice1-1.wav",
              "id":0
            },
              {
              "Text":"Ensure the Funnel Cover is off.",
              "Voice":"voice/voice1-2.wav",
              "id":1
            },
              {
              "Text":"Check the boiler water level is -50 mm, if in wet storage condition run down the boiler to -50 mm.",
              "Voice":"voice/voice10-3.wav",
              "id":2
            },
              {
              "Text":"Check the air cocks open on steam drum and upper super heater header.",
              "Voice":"voice/voice1-5.wav",
              "id":3
            },
              {
              "Text":"Check the condensate vessel on steam drum filled, if the boiler was not in wet storage condition earlier.",
              "Voice":"voice/voice1-6.wav",
              "id":4
            },
              {
              "Text":"Check the boiler room lighting, emergency lighting for the compartment and for the gauge glass.",
              "Voice":"voice/voice10-6.wav",
              "id":5
            },
      
              {
              "Text":"Check the power supply available for all MD pumps and ERCR panel.",
              "Voice":"voice/voice10-7.wav",
              "id":6
            },
              {
              "Text":"Inspect the boiler air casing by opening air casing drain plugs for presence of fuel and water.",
              "Voice":"voice/voice10-8.wav",
              "id":7
            },
              {
              "Text":"Ensure all standard burners are cleaned and positioned.",
              "Voice":"voice/voice10-9.wav",
              "id":8
            },
              {
              "Text":"Check the spare burners and spare gauge glasses available in the compartment.",
              "Voice":"voice/voice10-10.wav",
              "id":9
            },
              {
              "Text":"Reset quick closing mechanism of all servo drives of stop valves (Main switch valve, Main steam stop valve, TBU stop valve, SAT steam stop valve and fuel QCV).",
              "Voice":"voice/voice1-13.wav",
              "id":10
            },
              {
              "Text":"Check the operational readiness of portable and fixed firefighting arrangements.",
              "Voice":"voice/voice1-3.wav",
              "id":11
            },
              {
              "Text":"Check if working water is available (10 Bar) and if not, start the pumps.",
              "Voice":"voice/voice1-14.wav",
              "id":12
            },
              {
              "Text":"Check communication from ERCR to boiler front and to PDCR/SPDCR.",
              "Voice":"voice/voice10-14.wav",
              "id":13
            },
     
              {
              "Text":"Check both drain valves of lower super heater header to boiler and ensure no water in the super heater. After water drained out from super heater close 2nd pass drain and keep open 3rd pass drain valve(Steam recirculation valve).",
              "Voice":"voice/voice10-15.wav",
              "id":14
            },
              {
              "Text":"Check the boiler protection on control panel switched 'Off'.",
              "Voice":"voice/voice10-16.wav",
              "id":15
            },
              {
              "Text":"Check steam parameters switch is in low regime.",
              "Voice":"voice/voice10-17.wav",
              "id":16
            },
            ]
          },
          {
             "Title":"PREPARATION OF FURNACE FOR OPERATION",
            "id":11,
            "steps":[
              {
                 "Text":"Check the operation of registers(3 to 6) for free moment by using hydraulic manipulators locally or using SPR from ERCR and 1 & 2 registers manually.",
              "Voice":"voice/voice11-1.wav",
              "id":0
              },
              {
                 "Text":"Ensure all fuel and steam atomizing valves fully shut.",
              "Voice":"voice/voice11-2.wav",
              "id":1
              },
              {
                 "Text":"Open drain valves on atomizing steam system.",
              "Voice":"voice/voice11-3.wav",
              "id":2
              },
              {
                 "Text":"Check power supply available for the control panel in ERCR.",
              "Voice":"voice/voice11-4.wav",
              "id":3
              },
              {
                 "Text":"Check working water is available for control and protection system.",
              "Voice":"voice/voice11-5.wav",
              "id":4
              },
              {
                 "Text":"Check the burners and registers operating automatically and check the visual indication showing OPEN/CLOSE positions on the signaling panel.",
              "Voice":"voice/voice11-6.wav",
              "id":5
              },
              {
                 "Text":"Check all system valves closed.",
              "Voice":"voice/voice11-7.wav",
              "id":6
              },
            ]
          },
          {
             "Title":"VALVES ARE TO BE OPENED PRIOR LIGHTING UP",
            "id":12,
            "steps":[
              {
                 "Text":"Isolating valve on feed line.",
              "Voice":"voice/voice12-1.wav",
              "id":0
              },
              {
                 "Text":"Steam and water isolating cocks of gauge glasses.",
              "Voice":"voice/voice12-2.wav",
              "id":1
              },
              {
                 "Text":"Impulse valves on condensate vessel on steam drum.",
              "Voice":"voice/voice12-3.wav",
              "id":2
              },
              {
                 "Text":"Isolating valves for gauge glass from steam drum.",
              "Voice":"voice/voice12-4.wav",
              "id":3
              },
              {
                 "Text":"All valves of instrumentation (Pressure gauges).",
              "Voice":"voice/voice12-5.wav",
              "id":4
              },
              {
                 "Text":"Air cocks of steam drum and upper super heater header.",
              "Voice":"voice/voice12-6.wav",
              "id":5
              },
              {
                 "Text":"Lower super heater header drain valves.",
              "Voice":"voice/voice12-7.wav",
              "id":6
              },
            ]
          },
          {
             "Title":"VALVES ARE TO BE CLOSED PRIOR LIGHTING UP",
            "id":13,
            "steps":[
              {
                 "Text":"Steam drum and water drum blow down valves.",
              "Voice":"voice/voice13-1.wav",
              "id":0
              },
              {
                 "Text":"Sampling valves from steam drum.",
              "Voice":"voice/voice13-2.wav",
              "id":1
              },
              {
                 "Text":"Economizers drain valves.",
              "Voice":"voice/voice13-3.wav",
              "id":2
              },
              {
                 "Text":"Main steam stop pulse valves.",
              "Voice":"voice/voice13-4.wav",
              "id":3
              },
              {
                 "Text":"Fuel recirculating valve.",
              "Voice":"voice/voice13-5.wav",
              "id":4
              },
              {
                 "Text":"Wet storage tank to boilers isolating valve.",
              "Voice":"voice/voice13-6.wav",
              "id":5
              },
             
            ]
          },
          {
             "Title":"CHECK THE FOLLOWING SYSTEMS READY FOR OPERATION",
            "id":14,
            "steps":[
              {
                 "Text":"Protection and control system for TBU.",
              "Voice":"voice/voice14-1.wav",
              "id":0
              },
              {
                 "Text":"Fuel system for boilers.",
              "Voice":"voice/voice14-2.wav",
              "id":1
              },
              {
                 "Text":"Feed system.",
              "Voice":"voice/voice14-3.wav",
              "id":2
              },
              {
                 "Text":"Working water system for automatics.",
              "Voice":"voice/voice14-4.wav",
              "id":3
              },
              {
                 "Text":"LUB oil system.",
              "Voice":"voice/voice14-5.wav",
              "id":4
              },
              {
                 "Text":"HP air system for charging of TBU protection system.",
              "Voice":"voice/voice14-6.wav",
              "id":5
              },
              {
                 "Text":"Blow down/drain system of steam drum, water drum and lower super heater.",
              "Voice":"voice/voice14-7.wav",
              "id":6
              },
              {
                 "Text":"Cooling water system.",
              "Voice":"voice/voice14-8.wav",
              "id":7
              },
              {
                 "Text":"Chemical dosing system for boilers.",
              "Voice":"voice/voice14-9.wav",
              "id":8
              },
              {
                 "Text":"Feed transfer system.",
              "Voice":"voice/voice14-10.wav",
              "id":9
              },
              {
                 "Text":"Sampling system of the boilers.",
              "Voice":"voice/voice14-11.wav",
              "id":10
              },
             
            ]
          },
          {
             "Title":"SYSTEM READINESS (TBU)",
            "id":15,
            "steps":[
              {
                 "Text":"Ensure working water is available (08 to 10 Bar).",
              "Voice":"voice/voice15-1.wav",
              "id":0
              },
              {
                 "Text":"Ensure LUB oil supply available to TBU.",
              "Voice":"voice/voice15-2.wav",
              "id":1
              },
              {
                 "Text":"Check the LUB oil pressure before LUB oil interlocking valve of TBU (Minimum 0.6 Bar, working pressure 09 to 10 Bar).",
              "Voice":"voice/voice15-3.wav",
              "id":2
              },
              {
                 "Text":"Check the interlocking device for operation. Check anti-surge flap manually for free operation.",
              "Voice":"voice/voice15-4.wav",
              "id":3
              },
              {
                 "Text":"Open 5 in no. nozzle box drain valves and gland sealing valves.",
              "Voice":"voice/voice15-5.wav",
              "id":4
              },
              {
                 "Text":"Change TBU into manual mode.",
              "Voice":"voice/voice15-6.wav",
              "id":5
              },
              {
                 "Text":"Turn TBU shaft manually and disengage shaft turing device.",
              "Voice":"voice/voice15-7.wav",
              "id":6
              },
              {
                 "Text":"Open air regulating flap 0 to 10% at TBU.",
              "Voice":"voice/voice15-8.wav",
              "id":7
              },
              {
                 "Text":"Reset QCV on TBU, fuel and main steam stop value.",
              "Voice":"voice/voice15-9.wav",
              "id":8
              },
              {
                 "Text":"Put fly wheel to zero position and open working water by pass valve.",
              "Voice":"voice/voice15-10.wav",
              "id":9
              },
              {
                 "Text":"Start TBU using steam from other unit. The air casing pressure should be 300 mm water column(using steam stop valve or air flap).",
              "Voice":"voice/voice15-11.wav",
              "id":10
              },
              {
                 "Text":"The RPM of TBU should be 1200 to 1800.",
              "Voice":"voice/voice15-12.wav",
              "id":11
              },
              {
                 "Text":"The pressure drop at nozzle box of gas turbine should be 0.012 to 0.013 Bar.",
              "Voice":"voice/voice15-13.wav",
              "id":12
              },
              {
                 "Text":"Check air pressure in air bottles of protection system(If air pressure in the air bottle is below 150 Bar, charge the bottle up to 180 to 200 Bar).",
              "Voice":"voice/voice15-14.wav",
              "id":13
              },
             
            ]
          },
          {
             "Title":"FUEL SYSTEM",
            "id":16,
            "steps":[
            
              {
                 "Text":"Prepare two MD fuel pumps and one TD fuel pump for operation.",
              "Voice":"voice/voice16-1.wav",
              "id":0
              },
              {
                 "Text":"Select the switch on remote control panel for service and standby pump. Standby pump should be always on Auto and service pump on Manual.",
              "Voice":"voice/voice16-2.wav",
              "id":1
              },
              {
                 "Text":"Check the opening of quick closing valve.",
              "Voice":"voice/voice16-3.wav",
              "id":2
              },
              {
                 "Text":"Check the opening of steam pressure regulator (SPR) 6 to 8% on the remote control panel.",
              "Voice":"voice/voice16-4.wav",
              "id":3
              },
              {
                 "Text":"Open recirculating valve in the fuel system.",
              "Voice":"voice/voice16-5.wav",
              "id":4
              },
              {
                 "Text":"Start TD fuel pump and set the differential pressure of fuel 4 Bar at FPDR(Fuel Pressure Differential Regulator) on the remote control panel.",
              "Voice":"voice/voice16-6.wav",
              "id":5
              },
              {
                 "Text":"TD fuel pump must be turned manually and check for its free rotation.",
              "Voice":"voice/voice16-7.wav",
              "id":6
              },
              {
                 "Text":"Fuel filters should be cleaned by turning the handle.",
              "Voice":"voice/voice16-8.wav",
              "id":7
              },
             
            ]
          },
        ]);
void updateStepState(int itemId, int stepId, bool newState) {

  
  final updatedMaps = List<Map<String, dynamic>>.from(state);

    updatedMaps[itemId]["steps"][stepId]['state'] = newState;
    
    state = updatedMaps;
 
}

  
}



