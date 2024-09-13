import 'package:flutter_riverpod/flutter_riverpod.dart';

final visibleProvider =
    StateProvider<List<bool>>((ref) => [false, false, false, false, false]);

final startProvider = StateProvider<int>((ref) => 0);
final prechecksProvider = StateProvider<int>((ref) => 0);


final generalProvider = StateProvider<bool>((ref) => false);

final prechecksProcedure = StateProvider<bool>((ref) => true);
final bprechecksProcedure = StateProvider<bool>((ref) => false);
final systemchecksProcedure = StateProvider<bool>((ref) => false);
final shutdownProcedure = StateProvider<bool>((ref) => false);


// final PrechecksProvider = StateProvider<bool>((ref) => false);
// final ColdProvider = StateProvider<bool>((ref) => false);
// final HotProvider = StateProvider<bool>((ref) => false);
// final StopProvider = StateProvider<bool>((ref) => false);

final mapListProvider =
    StateNotifierProvider<MapListStateNotifier, List<Map<String, dynamic>>>(
  (ref) => MapListStateNotifier(),
);

final lottieProvider = StateProvider<Map<String, dynamic>>((ref) => {
      "regulator1": [],
      "regulator2": [],
      "b1Analog1": [],
      "b1Analog2": [],
      "b2Analog1": [],
      "b2Analog2": [],
      "Analog1": [],
      "Analog2": [],
      "Analog3": [],
      "Analog4": [],
      "Analog5": [],
      "Analog6": [],
      "regulator3": [],
      "Afrr1low": false,
      "Afrr1med": false,
      "Afrr1RC": false,
      "Afrr2low": false,
      "Afrr2med": false,
      "Afrr2RC": false,
      "Fpdr1low": false,
      "Fpdr1med": false,
      "Fpdr1RC": false,
      "Fprlow": false,
      "Fprmed": false,
      "FprRC": false,
      "Fpdr2low": false,
      "Fpdr2med": false,
      "Fpdr2RC": false,
      "Wlr1low": false,
      "Wlr1med": false,
      "Wlr1RC": false,
      "Wlr2low": false,
      "Wlr2med": false,
      "Wlr2RC": false,
      "Spr1low": false,
      "Spr1med": false,
      "Spr1RC": false,
      "Spr2low": false,
      "Spr2med": false,
      "Spr2RC": false,
      "B1_Feed_water_line": {
        // dark blue line
        "line1": [
          [94.38], // 0 s
          [0] // 170 s
        ],
        "arrow": [
          [0], // 0 s
          [100] // 350 s
        ],
        "line2": [
          [287.16], // 170 s
          [0] // 350 s
        ],
        "line3": [
          [249], // 90 s
          [0] // 190 s
        ],
        "line4": [
          [93.69], // 0 s
          [0] // 170 s
        ],
        "line5": [
          [287.16], // 170 s
          [0] // 350 s
        ],
      },
      "b1_fuel_differential_pressure": {"value": 5.8},
      "b1_water_level_regulator": {"value": 15},
      "b1_steam_pressure_regulator": {"value": 6},
      "b1_fuel_differential_pressure_regulator": {"value": 23},
      "B1_fuel_pressure_before_boiler": {"value": 0.14},
      "B1_pressure_of_air_in_inner_casing_of_the_boiler": {"value": 0.74},
      "B1_Economizer_outlet_temperature_of_feed_water": {"value": 321},
      "B1_flame_lumens": {"value": 0.68},
      "B1_water_level": {
        "value": 140,
        "bar": [
          [0, 0.266664],
          [62.12342, 0.266664],
          [62.12342, 8.266667],
          [0, 8.266667],
          [0, 0.266664]
        ]
      },
      "B1_register": {
        "color": [
          [0.933333, 0.929412, 0.866667],
          [0.054902, 0.639216, 0.054902]
        ],
      },
      "b1_exhaust_gas_line": {
        "line": [
          [
            [153, 297.551],
            [153, 297.551],
            [153, 297.525]
          ],
          [
            [153, 297.551],
            [142.088, 271.5],
            [141.982, 271.5]
          ],
          [
            [153, 297.551],
            [142.088, 271.5],
            [141.982, 137.5]
          ]
        ]
      },
      "B2_Fuel_line_1": {
        "line1": [
          [22.3], // 0 s
          [0] // 50 s
        ],
        "line2": [
          [20.55], // 50 s
          [0] // 100 s
        ],
        "line3": [
          [249], // 0 s
          [0] // 60 s
        ],
        "line4": [
          [11.27], // 60 s
          [0] // 100 s
        ],
        "arrow": [
          [0],
          [100]
        ],
        "line5": [
          [20.55], // 50 s
          [0] // 100 s
        ],
      },
      "B1_exhaust_temperature": {"value": 230},
      "B1_TBU_RPM": {"value": 3000},
      "b2_water_level_regulator": {"value": 3.5}
    });

class MapListStateNotifier extends StateNotifier<List<Map<String, dynamic>>> {
  MapListStateNotifier()
      : super([
          {
            "id": 0,
            "steps": [
              {
                "Title": "LIGHTING UP PRE-CHECKS",
                "id": 1,
                "steps": [
                  {
                    "Text": "Ensure DA is running and taken on load.",
                    "Voice": "voice/voice1-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text": "Ensure the funnel cover is off.",
                    "Voice": "voice/voice1-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the operational readiness of portable and fixed fire-fighting arrangements.",
                    "Voice": "voice/voice1-3.wav",
                    "id": 2,
                    "state": false
                  },
                  {//change
                    "Text":
                        "Check the boiler water level is +70 mm. If in wet storage condition, run down the boiler to +70 mm.",
                    "Voice": "voice/voice1-4.wav",
                    "id": 3,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the air cocks open on steam drum and upper super heater header.",
                    "Voice": "voice/voice1-5.wav",
                    "id": 4,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the condensate vessel on steam drum filled, if the boiler was not in wet storage condition earlier.",
                    "Voice": "voice/voice1-6.wav",
                    "id": 5,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the availability of fuel and feed water in the storage and service tanks and full.",
                    "Voice": "voice/voice1-7.wav",
                    "id": 6,
                    "state": false
                  },
                  { // change
                    "Text":
                        "Check the power supply available for all MD pumps, lighting up blower, and ERCR panel.",
                    "Voice": "voice/voice1-8.wav",
                    "id": 7,
                    "state": false
                  },
                  {//change
                    "Text":
                        'Check the selector switch is set in "lighting up from the fan" position on the RCR panel.',
                    "Voice": "voice/voice1-9.wav",
                    "id": 8,
                    "state": false
                  },
                  {
                    "Text":
                        "Inspect the boiler air casing by opening 04 casing drain plugs for presence of fuel and water.",
                    "Voice": "voice/voice1-10.wav",
                    "id": 9,
                    "state": false
                  },
                  {
                    "Text": "Ensure burner is cleaned and positioned.",
                    "Voice": "voice/voice1-11.wav",
                    "id": 10,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the spare burners and spare gauge glasses available in the compartment.",
                    "Voice": "voice/voice1-12.wav",
                    "id": 11,
                    "state": false
                  },
                  {// change
                    "Text":
                        "Reset the quick-closing valves for all servo drives: \n1. Main switch valve \n2. Main steam stop valve \n3. TBU stop valve \n4. Saturated steam stop valve \n5. Fuel quick-closing valve1",
                    "Voice": "voice/voice1-13.wav",
                    "id": 12,
                    "state": false
                  },
                  {
                    "Text":
                        "Check working water is available 10 bar if not, start pump.",
                    "Voice": "voice/voice1-14.wav",
                    "id": 13,
                    "state": false
                  },
                  {
                    "Text":
                        "Check communication fron ERCR to boiler front and to PDCR and SPDCR.",
                    "Voice": "voice/voice1-15.wav",
                    "id": 14,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Check both drain valves of the lower superheater header to the boiler.",
                    "Voice": "voice/voice1-16.wav",
                    "id": 15,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Ensure there is no water in the superheater.",
                    "Voice": "voice/voice1-17.wav",
                    "id": 16,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "After water is drained out from the superheater, close the second pass drain and keep the third pass drain valve open.",
                    "Voice": "voice/voice1-18.wav",
                    "id": 17,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Check the boiler protection on Control Panel is switched off.",
                    "Voice": "voice/voice1-19.wav",
                    "id": 18,
                    "state": false,
                  },
                  {//change
                    "Text": "Check steam parameters switch is in low regime.",
                    "Voice": "voice/voice1-20.wav",
                    "id": 19,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "FOLLOWING VALVES ARE TO BE OPENED",
                "id": 2,
                "steps": [
                  {
                    "Text":
                        "Isolating valve on feed line(Steam Drum inlet valve).",
                    "Voice": "voice/voice2-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text": "Steam and Water isolating cocks of gauge glasses.",
                    "Voice": "voice/voice2-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text":
                        "Impulse valves on condensate vessel on Steam Drum.",
                    "Voice": "voice/voice2-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text": "Isolating valves for gauge glass from Steam Drum.",
                    "Voice": "voice/voice2-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text": "All valves of instrumentation(Pressure gauges).",
                    "Voice": "voice/voice2-5.wav",
                    "id": 4,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "FOLLOWING VALVES ARE TO BE CLOSED",
                "id": 3,
                "steps": [
                  {
                    "Text": "Steam Drum and Water Drum blow down valves.",
                    "Voice": "voice/voice3-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text": "Sampling valves from steam drum.",
                    "Voice": "voice/voice3-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text": "Economizers drain valves.",
                    "Voice": "voice/voice3-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text": "Main steam stops pulse valves.",
                    "Voice": "voice/voice3-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text": "Fuel recirculating valve(near mainfold).",
                    "Voice": "voice/voice3-5.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text": "Wet Storage Tank to boilers isolating valve.",
                    "Voice": "voice/voice3-6.wav",
                    "id": 5,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "SYSTEM READINESS AIR SYSTEMS",
                "id": 4,
                "steps": [
                  {
                    "Text":
                        "Ensure the MD blower (lighting up blower) discharge trunking change-over flap is closed.",
                    "Voice": "voice/voice4-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text":
                        "The isolating valve is open to the air casing.",
                    "Voice": "voice/voice4-2.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check Power supply available for the Lighting up Blower.",
                    "Voice": "voice/voice4-3.wav",
                    "id": 3,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "FUEL SYSTEM",
                "id": 5,
                "steps": [
                  {
                    "Text":
                        "Check the fuel level in all fuel service tanks full.",
                    "Voice": "voice/voice5-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the fuel for presence of water and drain it.",
                    "Voice": "voice/voice5-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text":
                        "Ensure suction and discharge fuel filters cleaned.",
                    "Voice": "voice/voice5-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the fuel system and clear from service tank to burner.",
                    "Voice": "voice/voice5-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the fuel Isolantic valves to the burners closed.",
                    "Voice": "voice/voice5-5.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text":
                        "Select the switch on remote control panel for service and stand by pump. Standby pump should be always on Auto and service pump on Manual.",
                    "Voice": "voice/voice5-6.wav",
                    "id": 5,
                    "state": false,
                  },
                  {
                    "Text":
                        "Stand by pump should always be on auto and the service pump on manual.",
                    "Voice": "voice/voice5-10.wav",
                    "id": 6,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the opening of steam pressure regulator(SPR) 4 to 6% on the remote control panel.",
                    "Voice": "voice/voice5-7.wav",
                    "id": 7,
                    "state": false,
                  },
                  {
                    "Text": "Open recirculating valve in the fuel system.",
                    "Voice": "voice/voice5-8.wav",
                    "id": 8,
                    "state": false,
                  },
                  {
                    "Text": "Check the fuel pressure at burner 14 Bar.",
                    "Voice": "voice/voice5-9.wav",
                    "id": 9,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "FEED SYSTEM",
                "id": 6,
                "steps": [
                  {
                    "Text":
                        "Check the feed system is clear up to feed check valve.",
                    "Voice": "voice/voice6-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the feed water quality for salt contents in the tank.",
                    "Voice": "voice/voice6-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text": "Prepare Ion exchange filter.",
                    "Voice": "voice/voice6-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text": "Prepare feed regulator for putting into use.",
                    "Voice": "voice/voice6-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text":
                        "Prepare Deaerator and fill the water 6.6 tons and clear the system from and to feed service tank and main condenser.",
                    "Voice": "voice/voice6-5.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text": "Open booster pump suction valves from deaerator.",
                    "Voice": "voice/voice6-6.wav",
                    "id": 5,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "SYSTEM READY OF OPERATION CHECK",
                "id": 7,
                "steps": [
                  {
                    "Text":
                        "High pressure air system for charging of TBU protection system.",
                    "Voice": "voice/voice7-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text": "Working water system for Automatics.",
                    "Voice": "voice/voice7-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text":
                        "Blowdown drain system of Stream drum, Water drum and Lower super heater.",
                    "Voice": "voice/voice7-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text": "Cooling water system.",
                    "Voice": "voice/voice7-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text": "LUB oil system.",
                    "Voice": "voice/voice7-5.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text": "Protection and control system for TBU.",
                    "Voice": "voice/voice7-6.wav",
                    "id": 5,
                    "state": false,
                  },
                  {
                    "Text": "Chemical dosing system for boilers.",
                    "Voice": "voice/voice7-7.wav",
                    "id": 6,
                    "state": false,
                  },
                  {
                    "Text": "Sampling system of the boilers.",
                    "Voice": "voice/voice7-8.wav",
                    "id": 7,
                    "state": false,
                  },
                  {
                    "Text": "High pressure to Low pressure SAT. steam reducer.",
                    "Voice": "voice/voice7-9.wav",
                    "id": 8,
                    "state": false,
                  },
                  {
                    "Text": "Reduction cooling unit.",
                    "Voice": "voice/voice7-10.wav",
                    "id": 9,
                    "state": false,
                  },
                  {
                    "Text": "Exhaust steam system.",
                    "Voice": "voice/voice7-11.wav",
                    "id": 10,
                    "state": false,
                  },
                  {
                    "Text": "LUB oil system.",
                    "Voice": "voice/voice7-12.wav",
                    "id": 11,
                    "state": false,
                  },
                  {
                    "Text": "Steam system(High pressure & Auxiliary) supply.",
                    "Voice": "voice/voice7-13.wav",
                    "id": 12,
                    "state": false,
                  },
                ]
              },
            ]
          },
          {
            "id": 1,
            "steps": [
              {
                "Title": "WHEN SHUTTING DOWN FIRST BOILER OF SAME EBG",
                "id": 1,
                "steps": [
                  {
                    "Text": "Carry out Surface blow down.",
                    "Voice": "voice/stop 1-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text": "Carry out Bottom blowdown.",
                    "Voice": "voice/stop 1-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text":
                        "Shift the load from shut down boiler to running boiler.",
                    "Voice": "voice/stop 1-3.wav",
                    "id": 2,
                    "state": false
                  },
                  {
                    "Text": "Take water in shutting down boiler up to +80.",
                    "Voice": "voice/stop 1-4.wav",
                    "id": 3,
                    "state": false
                  },
                  {
                    "Text": "All positions standby to shutting down of boiler.",
                    "Voice": "voice/stop 1-5.wav",
                    "id": 4,
                    "state": false
                  },
                  {
                    "Text":
                        "Trip the boiler-1 from the switch provided at the control panel.",
                    "Voice": "voice/stop 1-6.wav",
                    "id": 5,
                    "state": false
                  },
                  {
                    "Text": "Open fuel system recirculating valve of boiler-1.",
                    "Voice": "voice/stop 1-7.wav",
                    "id": 6,
                    "state": false
                  },
                  {
                    "Text": "Close fuel to burner valves of boiler-1.",
                    "Voice": "voice/stop 1-8.wav",
                    "id": 6,
                    "state": false
                  },
                  {
                    "Text":
                        "Pull out the register using manipulators for boiler-1.",
                    "Voice": "voice/stop 1-9.wav",
                    "id": 7,
                    "state": false
                  },
                  {
                    "Text": "Close the Main steam stop valve of boiler-1.",
                    "Voice": "voice/stop 1-10.wav",
                    "id": 8,
                    "state": false
                  },
                  {
                    "Text": "Close SAT steam stop valve of boiler-1.",
                    "Voice": "voice/stop 1-11.wav",
                    "id": 9,
                    "state": false
                  },
                  {
                    "Text": "Open FEED system recirculating valve of boiler-1.",
                    "Voice": "voice/stop 1-12.wav",
                    "id": 10,
                    "state": false
                  },
                  {
                    "Text": "Close MAIN FEED check valve of boiler-1.",
                    "Voice": "voice/stop 1-13.wav",
                    "id": 11,
                    "state": false
                  },
                  {
                    "Text":
                        "Change over TBU on remote and trip TBU of boiler-1.",
                    "Voice": "voice/stop 1-14.wav",
                    "id": 12,
                    "state": false
                  },
                  {
                    "Text": "Engage the Turning gear and turn TBU of boiler-1.",
                    "Voice": "voice/stop 1-15.wav",
                    "id": 13,
                    "state": false
                  },
                  {
                    "Text":
                        "Close the steam system and AWW valves of boiler-1.",
                    "Voice": "voice/stop 1-16.wav",
                    "id": 14,
                    "state": false
                  },
                  {
                    "Text":
                        "Trip the boiler-2 from the switch provided at the control panel.",
                    "Voice": "voice/stop 1-17.wav",
                    "id": 15,
                    "state": false
                  },
                  {
                    "Text": "Open fuel system recirculating valve of boiler-2.",
                    "Voice": "voice/stop 1-18.wav",
                    "id": 16,
                    "state": false
                  },
                  {
                    "Text": "Close fuel to burner valves of boiler-2.",
                    "Voice": "voice/stop 1-19.wav",
                    "id": 17,
                    "state": false
                  },
                  {
                    "Text":
                        "Pull out the register using manipulators for boiler-2.",
                    "Voice": "voice/stop 1-20.wav",
                    "id": 18,
                    "state": false
                  },
                  {
                    "Text": "Close the Main steam stop valve of boiler-2.",
                    "Voice": "voice/stop 1-21.wav",
                    "id": 19,
                    "state": false
                  },
                  {
                    "Text": "Close SAT steam stop valve of boiler-2.",
                    "Voice": "voice/stop 1-22.wav",
                    "id": 20,
                    "state": false
                  },
                  {
                    "Text":
                        "Open FEED system re-circulating valve of boiler-2.",
                    "Voice": "voice/stop 1-23.wav",
                    "id": 21,
                    "state": false
                  },
                  {
                    "Text": "Close MAIN FEED check valve of boiler-2.",
                    "Voice": "voice/stop 1-24.wav",
                    "id": 22,
                    "state": false
                  },
                  {
                    "Text":
                        "Change over TBU on remote and trip TBU of boiler-2.",
                    "Voice": "voice/stop 1-25.wav",
                    "id": 23,
                    "state": false
                  },
                  {
                    "Text": "Engage the Turning gear and turn TBU of boiler-2.",
                    "Voice": "voice/stop 1-26.wav",
                    "id": 24,
                    "state": false
                  },
                  {
                    "Text":
                        "Close the steam system and AWW valves of boiler-2.",
                    "Voice": "voice/stop 1-27.wav",
                    "id": 25,
                    "state": false
                  },
                ]
              },
              {
                "Title": "BOILER ROOM POME",
                "id": 2,
                "steps": [
                  {
                    "Text":
                        "Carry out surface and bottom blowdown of the boiler.",
                    "Voice": "voice/stop 2-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text":
                        "Changeover FCBT pump from reserve mode to non-reserve mode.",
                    "Voice": "voice/stop 2-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text":
                        "Changeover knob on boiler control panel for shifting load from one boiler to another.",
                    "Voice": "voice/stop 2-3.wav",
                    "id": 2,
                    "state": false
                  },
                  {
                    "Text":
                        "Take WLR in remote mode from the boiler control panel.",
                    "Voice": "voice/stop 2-4.wav",
                    "id": 3,
                    "state": false
                  },
                  {
                    "Text":
                        "Take water in the boiler to actuate high water level protection.",
                    "Voice": "voice/stop 2-5.wav",
                    "id": 4,
                    "state": false
                  },
                  {
                    "Text":
                        "Post actuation of boiler protection, B/R POME orders Asst Boiler POME, Isolate fuel valves to burner and secure No Boiler.",
                    "Voice": "voice/stop 2-6.wav",
                    "id": 5,
                    "state": false
                  },
                ]
              },
              {
                "Title": "BOILER ROOM ERA",
                "id": 3,
                "steps": [
                  {
                    "Text":
                        "Isolate Superheated SAT steam and Condensate valves for TGs and TDACs.",
                    "Voice": "voice/stop 3-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text": "Stop the POY unit and close the system valves.",
                    "Voice": "voice/stop 3-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text":
                        "When boiler flammed out B/R ERA to assist TBU watch stander and FCBT pump watch stander in stopping and securing the steam auxiliaries under their charge.",
                    "Voice": "voice/stop 3-3.wav",
                    "id": 2,
                    "state": false
                  },
                ]
              },
              {
                "Title": "ASSISTANT BOILER ROOM POME",
                "id": 4,
                "steps": [
                  {
                    "Text":
                        "When ordered by B/R POME, carry out Blow down on boiler, 10 min for steam drum and 10 min for water drum.",
                    "Voice": "voice/stop 4-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text":
                        "Isolate close fuel to the burner valve for burner no. 4, 5 & 6 shut.",
                    "Voice": "voice/stop 4-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text":
                        "On actuation of Boiler protection system, isolate fuel to burner valves for burner no. 1, 2 & 3 immediately and open fuel recirculation by 1 turn.",
                    "Voice": "voice/stop 4-3.wav",
                    "id": 2,
                    "state": false
                  },
                  {
                    "Text": "Shut fuel QCV manually.",
                    "Voice": "voice/stop 4-4.wav",
                    "id": 3,
                    "state": false
                  },
                  {
                    "Text":
                        "Isolate atomizing steam from boiler front and atomizing steam master valve.",
                    "Voice": "voice/stop 4-5.wav",
                    "id": 4,
                    "state": false
                  },
                  {
                    "Text":
                        "As the TBU RPM comes to zero, shut No.1 & No.2 register.",
                    "Voice": "voice/stop 4-6.wav",
                    "id": 5,
                    "state": false
                  },
                  {
                    "Text":
                        "No Boiler secured, all fuel to burner valves isolated, recirculation open, quick closing valve shut",
                    "Voice": "voice/stop 4-7.wav",
                    "id": 6,
                    "state": false
                  },
                ]
              },
              {
                "Title": "TBU WATCHKEEPER",
                "id": 5,
                "steps": [
                  {
                    "Text":
                        "TBU No.1 when stopped from the remote control post, TBU watch stander to quickly close QCV and open QCV drains.",
                    "Voice": "voice/stop 5-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text":
                        "Open all 5+1 high pressure drains and drain of gland evacuation.",
                    "Voice": "voice/stop 5-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text":
                        "Change the control valve position from auto to manual and open bypass valve and close working water valve.",
                    "Voice": "voice/stop 5-3.wav",
                    "id": 2,
                    "state": false
                  },
                  {
                    "Text":
                        "Set the control valve position on the scale at '0' mark.",
                    "Voice": "voice/stop 5-4.wav",
                    "id": 3,
                    "state": false
                  },
                  {
                    "Text":
                        "As soon as the rotor stops, engage turning rod and start the turning motor. Monitor running current should be around 1 Amps.",
                    "Voice": "voice/stop 5-5.wav",
                    "id": 4,
                    "state": false
                  },
                  {
                    "Text": "Open flanges/sludges to atmosphere valve.",
                    "Voice": "voice/stop 5-6.wav",
                    "id": 5,
                    "state": false
                  },
                  {
                    "Text":
                        "Reset the switch valve. First close the valve then pull the lever up and again close the valve.",
                    "Voice": "voice/stop 5-7.wav",
                    "id": 6,
                    "state": false
                  },
                  {
                    "Text":
                        "Close main stop valve and the close exhaust valve.",
                    "Voice": "voice/stop 5-8.wav",
                    "id": 7,
                    "state": false
                  },
                  {
                    "Text": "Adjust the control air flap position at 75%.",
                    "Voice": "voice/stop 5-9.wav",
                    "id": 8,
                    "state": false
                  },
                  {
                    "Text": "Check lub oil pressure in system.",
                    "Voice": "voice/stop 5-10.wav",
                    "id": 9,
                    "state": false
                  },
                  {
                    "Text":
                        "Close high pressure air valve to safety and protection system.",
                    "Voice": "voice/stop 5-11.wav",
                    "id": 10,
                    "state": false
                  },
                ]
              },
              {
                "Title": "WATER TENDER",
                "id": 6,
                "steps": [
                  {
                    "Text":
                        "Carry out Surface blowdown and bottom blowdown on boiler when ordered by B/R POME.",
                    "Voice": "voice/stop 6-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text":
                        "When ordered by B/R POME, water tender to close sat steam master valve and feed check valve.",
                    "Voice": "voice/stop 6-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text":
                        "Close the auxiliary steam supply master valve after shutting down of boiler.",
                    "Voice": "voice/stop 6-3.wav",
                    "id": 2,
                    "state": false
                  },
                  {
                    "Text":
                        "Open high pressure SAT reducer blowdown valves by 2 turns post shutting down.",
                    "Voice": "voice/stop 6-4.wav",
                    "id": 3,
                    "state": false
                  },
                ]
              }
            ]
          },
          {
            "id": 2,
            "steps": [
              {
                "Title": "STARTING THE BOILER WHEN STEAM IS NOT AVAILABLE",
                "id": 1,
                "steps": [
                  {
                    "Text":
                        "Before starting the boiler, the values of the regulators are to be set as follows:\nSPR  - 6 to 85,\nFPDR - 20 to 25,\nFPR  - 50,\nWLR  - 0,\nAFRR - 25 to 35",
                    "Voice": "voice/cold1-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text": "Open registers of no.1 and no.2 burners fully.",
                    "Voice": "voice/cold1-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text":
                        "Start motor driven blower and direct to air casing.",
                    "Voice": "voice/cold1-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text": "Purge the furnace for 5 minutes prior lighting.",
                    "Voice": "voice/cold1-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the water level in the gauge glass, and it should not be less than +70 mm.",
                    "Voice": "voice/cold1-5.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text":
                        "After ventilation, a lamp flows indicating 'Ventilation over' locally and on the VDU in ERCR.",
                    "Voice": "voice/cold1-6.wav",
                    "id": 5,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Change the number 1 burner register position to lighting up mode and close the number 2 register.",
                    "Voice": "voice/cold1-7.wav",
                    "id": 6,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Check the fuel pressure at 14 bar at the burners by using the fuel recirculating valve.",
                    "Voice": "voice/cold1-8.wav",
                    "id": 7,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Push the ignition button on the transformer for 2 seconds.",
                    "Voice": "voice/cold1-9.wav",
                    "id": 8,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Open the fuel supply to the burners simultaneously and close the fuel recirculating valve to maintain fuel pressure at the burner at 14 bar.",
                    "Voice": "voice/cold1-10.wav",
                    "id": 9,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "The register should be in the lighting up position.",
                    "Voice": "voice/cold1-11.wav",
                    "id": 10,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "After flame ignition, open the register number 1 fully (indication of no flare goes off). In case of ignition failure, close the fuel supply valve to the number 1 burner and open the recirculating valve.",
                    "Voice": "voice/cold1-12.wav",
                    "id": 11,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "The fuel supply valve should not be kept open for more than 8 seconds. otherwise, fuel may accumulate in the furnace.",
                    "Voice": "voice/cold1-13.wav",
                    "id": 12,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Then ventilate the furnace for 5 minutes and restart the lighting up procedure.",
                    "Voice": "voice/cold1-14.wav",
                    "id": 13,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "After ignition, set the fuel pressure before burner 14 Bar using fuel recirculating valve at the fuel manifold.",
                    "Voice": "voice/cold1-15.wav",
                    "id": 14,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Raise the pressure in boiler up to 35 Bar, stop the boiler and close lower super heater recirculaing valve.",
                    "Voice": "voice/cold1-16.wav",
                    "id": 15,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Before shutting down the boiler during cold flash up, ensure that the main steam stop valve is opened by a crack and the steam inlet system to TBU, feed pump, high-pressure to low-pressure saturated steam reducer, and atomizing steam system is warmed through.",
                    "Voice": "voice/cold1-17.wav",
                    "id": 16,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Do not open atomizing steam to the burners initially. Open atomizing steam to the burners just before lighting up the burner to avoid the torch igniter electrode from getting wet, which may lead to igniter failure.",
                    "Voice": "voice/cold1-18.wav",
                    "id": 17,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Replace the burner with steam mechanical(STANDARD).",
                    "Voice": "voice/cold1-19.wav",
                    "id": 18,
                    "state": false,
                  },
                  {//change
                    "Text": "Open main steam stop valve fully.",
                    "Voice": "voice/cold1-20.wav",
                    "id": 19,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Start TBU super heater recirculating valve remain closed.",
                    "Voice": "voice/cold1-21.wav",
                    "id": 20,
                    "state": false,
                  },
                  {//change
                    "Text": "Purged the boiler using TBU.",
                    "Voice": "voice/cold1-22.wav",
                    "id": 21,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "RPM of the TBU at this stage is minimum 1000 to 1200 RPM.",
                    "Voice": "voice/cold1-23.wav",
                    "id": 22,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Ignite the number 1 burner using 2 bar of fuel pressure.",
                    "Voice": "voice/cold1-24.wav",
                    "id": 23,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Ignite the number 2 burner and raise the boiler pressure by maintaining 2 kg fuel pressure on both burners using the fuel recirculating valve.",
                    "Voice": "voice/cold1-25.wav",
                    "id": 24,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "All pulse valves on the lower super heater and steam drum are to be opened when the boiler pressure reaches 45 Bar.",
                    "Voice": "voice/cold1-26.wav",
                    "id": 25,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Open steam to CFBP pump(feed pump is to be started according to the situation and boiler water level).",
                    "Voice": "voice/cold1-27.wav",
                    "id": 26,
                    "state": false,
                  },
                  {//change
                    "Text":
                        "Start TD fuel pump and take into use and keep motor driven fuel pump on standby mode.",
                    "Voice": "voice/cold1-28.wav",
                    "id": 27,
                    "state": false,
                  },
                  {//chnage
                    "Text":
                        "When pressure reaches 45 Bar, switch 'ON' boiler protection.",
                    "Voice": "voice/cold1-29.wav",
                    "id": 28,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "MAIN PARAMETERS TO BE MONITORED",
                "id": 2,
                "steps": [
                  {
                    "Text": "Steam drum pressure.",
                    "Voice": "voice/cold2-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text": "Water level in the gauge glass.",
                    "Voice": "voice/cold2-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text": "Super heater outlet temperature.",
                    "Voice": "voice/cold2-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text": "Feed pump dicharge pressure.",
                    "Voice": "voice/cold2-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text": "Fuel pump dicharge pressure.",
                    "Voice": "voice/cold2-5.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text": "Fuel pressure before burner should be 1.5 Bar.",
                    "Voice": "voice/cold2-6.wav",
                    "id": 5,
                    "state": false,
                  },
                  {
                    "Text":
                        "Air pressure inside the casing 300 mm water column.",
                    "Voice": "voice/cold2-7.wav",
                    "id": 6,
                    "state": false,
                  },
                  {
                    "Text":
                        "RPM of turbo blower 1800 to 2200 (When second burner in use).",
                    "Voice": "voice/cold2-8.wav",
                    "id": 7,
                    "state": false,
                  },
                  {
                    "Text":
                        "The pressure across the nozzle block of TBU should be 0.01 to 0.013.",
                    "Voice": "voice/cold2-9.wav",
                    "id": 8,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "LIGHTING UP PROCEDURE",
                "id": 3,
                "steps": [
                  {
                    "Text": "Ensure DA is running and taken on load.",
                    "Voice": "voice/voice1-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text": "Ensure the Funnel Cover is off.",
                    "Voice": "voice/voice1-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the boiler water level is -50 mm, if in wet storage condition run down the boiler to -50 mm.",
                    "Voice": "voice/cold3-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the air cocks open on steam drum and upper super heater header.",
                    "Voice": "voice/voice1-5.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the condensate vessel on steam drum filled, if the boiler was not in wet storage condition earlier.",
                    "Voice": "voice/voice1-6.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the boiler room lighting, emergency lighting for the compartment and for the gauge glass.",
                    "Voice": "voice/cold3-6.wav",
                    "id": 5,
                    "state": false,
                  },
                  {//change not required
                    "Text":
                        "Check the power supply available for all motor driven pumps and ERCR panel.",
                    "Voice": "voice/cold3-7.wav",
                    "id": 6,
                    "state": false,
                  },
                  {
                    "Text":
                        "Inspect the boiler air casing by opening air casing drain plugs for presence of fuel and water.",
                    "Voice": "voice/cold3-8.wav",
                    "id": 7,
                    "state": false,
                  },
                  {
                    "Text":
                        "Ensure all standard burners are cleaned and positioned.",
                    "Voice": "voice/cold3-9.wav",
                    "id": 8,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the spare burners and spare gauge glasses available in the compartment.",
                    "Voice": "voice/cold3-10.wav",
                    "id": 9,
                    "state": false,
                  },
                  {
                    "Text":
                        "Reset quick closing mechanism of all servo drives of stop valves (Main switch valve, Main steam stop valve, TBU stop valve, SAT steam stop valve and fuel QCV).",
                    "Voice": "voice/voice1-13.wav",
                    "id": 10,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the operational readiness of portable and fixed firefighting arrangements.",
                    "Voice": "voice/voice1-3.wav",
                    "id": 11,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check if working water is available (10 Bar) and if not, start the pumps.",
                    "Voice": "voice/voice1-14.wav",
                    "id": 12,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check communication from ERCR to boiler front and to PDCR/SPDCR.",
                    "Voice": "voice/cold3-14.wav",
                    "id": 13,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check both drain valves of lower super heater header to boiler and ensure no water in the super heater. After water drained out from super heater close 2nd pass drain and keep open 3rd pass drain valve(Steam recirculation valve).",
                    "Voice": "voice/cold3-15.wav",
                    "id": 14,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the boiler protection on control panel switched 'Off'.",
                    "Voice": "voice/cold3-16.wav",
                    "id": 15,
                    "state": false,
                  },
                  {
                    "Text": "Check steam parameters switch is in low regime.",
                    "Voice": "voice/cold3-17.wav",
                    "id": 16,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "PREPARATION OF FURNACE FOR OPERATION",
                "id": 4,
                "steps": [
                  {
                    "Text":
                        "Check the operation of registers(3 to 6) for free movement by using hydraulic manipulators locally.",
                    "Voice": "voice/cold4-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the operation of register(3 to 6) for free movement using SPR from ERCR.",
                    "Voice": "voice/cold4-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the operation of register(1 and 2) for free movement manually.",
                    "Voice": "voice/cold4-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text":
                        "Ensure all fuel system valves of registers fully shut.",
                    "Voice": "voice/cold4-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text": "Ensure all steam atomizing valves are fully shut.",
                    "Voice": "voice/cold4-5.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text": "Open drain valves on atomizing steam system.",
                    "Voice": "voice/cold4-6.wav",
                    "id": 5,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check power supply available for the control and protection system.",
                    "Voice": "voice/cold4-7.wav",
                    "id": 6,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check working water is availble for control and protection system.",
                    "Voice": "voice/cold4-8.wav",
                    "id": 7,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the burners and registers operating automatically and check the visual indication showing open close positions on the signalng panel.",
                    "Voice": "voice/cold4-9.wav",
                    "id": 8,
                    "state": false,
                  },
                  {
                    "Text": "Check all system valves closed.",
                    "Voice": "voice/cold4-10.wav",
                    "id": 9,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "VALVES ARE TO BE OPENED PRIOR LIGHTING UP",
                "id": 5,
                "steps": [
                  {
                    "Text": "Isolating valve on feed line.",
                    "Voice": "voice/cold5-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text": "Steam and water isolating cocks of gauge glasses.",
                    "Voice": "voice/cold5-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text":
                        "Impulse valves on condensate vessel on steam drum.",
                    "Voice": "voice/cold5-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text": "Isolating valves for gauge glass from steam drum.",
                    "Voice": "voice/cold5-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text": "All valves of instrumentation (Pressure gauges).",
                    "Voice": "voice/cold5-5.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text":
                        "Air cocks of steam drum and upper super heater header.",
                    "Voice": "voice/cold5-6.wav",
                    "id": 5,
                    "state": false,
                  },
                  {
                    "Text": "Lower super heater header drain valves.",
                    "Voice": "voice/cold5-7.wav",
                    "id": 6,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "VALVES ARE TO BE CLOSED PRIOR LIGHTING UP",
                "id": 6,
                "steps": [
                  {
                    "Text": "Steam drum and water drum blow down valves.",
                    "Voice": "voice/cold6-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text": "Sampling valves from steam drum.",
                    "Voice": "voice/cold6-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text": "Economisers drain valves.",
                    "Voice": "voice/cold6-6.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text": "Main steam stop pulse valves.",
                    "Voice": "voice/cold6-3.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text": "Fuel recirculating valve.",
                    "Voice": "voice/cold6-4.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text": "Set storage tank to boilers isolating valve.",
                    "Voice": "voice/cold6-5.wav",
                    "id": 5,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "CHECK THE FOLLOWING SYSTEMS READY FOR OPERATION",
                "id": 7,
                "steps": [
                  {
                    "Text": "Protection and control system for TBU.",
                    "Voice": "voice/cold7-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text": "Fuel system for boilers.",
                    "Voice": "voice/cold7-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text": "Feed system.",
                    "Voice": "voice/cold7-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text": "Working water system for automatics.",
                    "Voice": "voice/cold7-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text": "LUB oil system.",
                    "Voice": "voice/cold7-5.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text":
                        "High pressure air system for charging of TBU protection system.",
                    "Voice": "voice/cold7-6.wav",
                    "id": 5,
                    "state": false,
                  },
                  {
                    "Text":
                        "Blow down/drain system of steam drum, water drum and lower super heater.",
                    "Voice": "voice/cold7-7.wav",
                    "id": 6,
                    "state": false,
                  },
                  {
                    "Text": "Cooling water system.",
                    "Voice": "voice/cold7-8.wav",
                    "id": 7,
                    "state": false,
                  },
                  {
                    "Text": "Feed transfer system.",
                    "Voice": "voice/cold7-9.wav",
                    "id": 8,
                    "state": false,
                  },
                  {
                    "Text": "Sampling system of the boilers.",
                    "Voice": "voice/cold7-10.wav",
                    "id": 9,
                    "state": false,
                  },
                ]
              },
              {
                "Title": "SYSTEM READINESS(TBU)",
                "id": 8,
                "steps": [
                  {
                    "Text": "Ensure working water is available (08 to 10 Bar).",
                    "Voice": "voice/cold8-1.wav",
                    "id": 0,
                    "state": false,
                  },
                  {
                    "Text": "Ensure LUB oil supply available to TBU.",
                    "Voice": "voice/cold8-2.wav",
                    "id": 1,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the LUB oil pressure before LUB oil interlocking valve of TBU (Minimum 0.6 Bar, working pressure 08 to 10 Bar).",
                    "Voice": "voice/cold8-3.wav",
                    "id": 2,
                    "state": false,
                  },
                  {
                    "Text":
                        "Check the interlocking device for operation. Check anti-surge flap manually for free operation.",
                    "Voice": "voice/cold8-4.wav",
                    "id": 3,
                    "state": false,
                  },
                  {
                    "Text":
                        "Open the 5-inch no. nozzle box drain valves and the gland sealing valves.",
                    "Voice": "voice/cold8-5.wav",
                    "id": 4,
                    "state": false,
                  },
                  {
                    "Text": "Change TBU into manual mode.",
                    "Voice": "voice/cold8-6.wav",
                    "id": 5,
                    "state": false,
                  },
                  {
                    "Text":
                        "Turn TBU shaft manually and disengage shaft turing device.",
                    "Voice": "voice/cold8-7.wav",
                    "id": 6,
                    "state": false,
                  },
                  {
                    "Text": "Open air regulating flap 0 to 10 at TBU.",
                    "Voice": "voice/cold8-8.wav",
                    "id": 7,
                    "state": false
                  },
                  {
                    "Text": "Reset QCV on TBU, fuel and main steam stop value.",
                    "Voice": "voice/cold8-9.wav",
                    "id": 8,
                    "state": false
                  },
                  {
                    "Text":
                        "Put fly wheel to zero position and open working water by pass valve.",
                    "Voice": "voice/cold8-10.wav",
                    "id": 9,
                    "state": false
                  },
                  {
                    "Text":
                        "Start TBU using steam from other unit. The air casing pressure should be 300 mm water column(using steam stop valve or air flap).",
                    "Voice": "voice/cold8-11.wav",
                    "id": 10,
                    "state": false
                  },
                  {
                    "Text": "The RPM of TBU should be 1200 to 1800.",
                    "Voice": "voice/cold8-12.wav",
                    "id": 11,
                    "state": false
                  },
                  {
                    "Text":
                        "The pressure drop at nozzle box of gas turbine should be 0.012 to 0.013 Bar.",
                    "Voice": "voice/cold8-13.wav",
                    "id": 12,
                    "state": false
                  },
                  {
                    "Text":
                        "Check air pressure in air bottles of protection system(If air pressure in the air bottle is below 150 Bar, charge the bottle up to 180 to 200 Bar).",
                    "Voice": "voice/cold8-14.wav",
                    "id": 13,
                    "state": false
                  },
                ]
              },
              {
                "Title": "FUEL SYSTEM",
                "id": 9,
                "steps": [
                  {
                    "Text": "Check the fuel level in all service tanks full.",
                    "Voice": "voice/cold9-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the fuel for presence of water and drain it.",
                    "Voice": "voice/cold9-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the suction and discharge strainers are cleaned.",
                    "Voice": "voice/cold9-3.wav",
                    "id": 2,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the fuel system is clear from service tank to burner.",
                    "Voice": "voice/cold9-4.wav",
                    "id": 3,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the fuel isolating valves to the burners closed.",
                    "Voice": "voice/cold9-5.wav",
                    "id": 4,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the stream drain valves on TD fuel pump open.",
                    "Voice": "voice/cold9-6.wav",
                    "id": 5,
                    "state": false
                  },
                  {
                    "Text":
                        "Fuel pumps must be turned manually and check for its free rotation.",
                    "Voice": "voice/cold9-7.wav",
                    "id": 6,
                    "state": false
                  },
                  {
                    "Text":
                        "Fuel filters should be cleaned by turning the handle.",
                    "Voice": "voice/cold9-8.wav",
                    "id": 7,
                    "state": false
                  },
                  {
                    "Text":
                        "Select the switch on remote control panel for service and standby pump. Standby pump should be always on auto and service pump on manual.",
                    "Voice": "voice/cold9-9.wav",
                    "id": 8,
                    "state": false
                  },
                  {
                    "Text": "Check the opening of quick closing valve.",
                    "Voice": "voice/cold9-10.wav",
                    "id": 9,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the opening of steam pressure regulator(SPR) 6 to 8% on the remote control panel.",
                    "Voice": "voice/cold9-11.wav",
                    "id": 10,
                    "state": false
                  },
                  {
                    "Text": "Open recirculating valve in the fuel system.",
                    "Voice": "voice/cold9-12.wav",
                    "id": 11,
                    "state": false
                  },
                  {
                    "Text": "Start fuel pump.",
                    "Voice": "voice/cold9-13.wav",
                    "id": 12,
                    "state": false
                  },
                  {
                    "Text":
                        "Set the dfferential pressure of fuel 4 Bar at FPDR(Fuel Pressure Differential Regulator) on the remote control panel.",
                    "Voice": "voice/cold9-14.wav",
                    "id": 13,
                    "state": false
                  },
                ]
              },
              {
                "Title": "FEED SYSTEM",
                "id": 10,
                "steps": [
                  {
                    "Text":
                        "Check the feed system is clear up to feed check valve.",
                    "Voice": "voice/voice6-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the feed water quality for salt contents in the tank.",
                    "Voice": "voice/voice6-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text":
                        "Prepare CFBP pump and set one pump as main and others by from ERCR.",
                    "Voice": "voice/cold10-3.wav",
                    "id": 2,
                    "state": false
                  },
                  {
                    "Text": "Prepare exchange filter.",
                    "Voice": "voice/cold10-4.wav",
                    "id": 3,
                    "state": false
                  },
                  {
                    "Text": "Prepare Deaerator 2 hours prior flash up.",
                    "Voice": "voice/cold10-5.wav",
                    "id": 4,
                    "state": false
                  },
                  {
                    "Text": "Prepare feed regulator for putting into use.",
                    "Voice": "voice/cold10-6.wav",
                    "id": 5,
                    "state": false
                  },
                ]
              },
              {
                "Title": "PREPARATION OF WORKING WATER SYSTEM FOR AUTOMATICS",
                "id": 11,
                "steps": [
                  {
                    "Text": "Check the freeness of the pumps.",
                    "Voice": "voice/cold11-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text": "Set one pump as main and other as standby.",
                    "Voice": "voice/cold11-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text": "Check the control valves of the system.",
                    "Voice": "voice/cold11-3.wav",
                    "id": 2,
                    "state": false
                  },
                  {
                    "Text": "Carry out purging of the system.",
                    "Voice": "voice/cold11-4.wav",
                    "id": 3,
                    "state": false
                  },
                  {
                    "Text":
                        "Check the triggering of the standby pump for operation.",
                    "Voice": "voice/cold11-5.wav",
                    "id": 4,
                    "state": false
                  },
                ]
              },
              {
                "Title": "PREPARATION OF LUB OIL SYSTEM",
                "id": 12,
                "steps": [
                  {
                    "Text": "Check lub oil tank oil",
                    "Voice": "voice/cold12-1.wav",
                    "id": 0,
                    "state": false
                  },
                  {
                    "Text": "Check lub oil for salinity.",
                    "Voice": "voice/cold12-2.wav",
                    "id": 1,
                    "state": false
                  },
                  {
                    "Text": "Check MD lub oil pump for readiness.",
                    "Voice": "voice/cold12-3.wav",
                    "id": 2,
                    "state": false
                  },
                  {
                    "Text": "Rotate lub oil system filters.",
                    "Voice": "voice/cold12-4.wav",
                    "id": 3,
                    "state": false
                  },
                ]
              }
            ]
          }
        ]);

  void updateStepState(int procedure, int itemId, int stepId, bool newState) {
    final updatedMaps = List<Map<String, dynamic>>.from(state);

    updatedMaps[procedure]["steps"][itemId]["steps"][stepId]['state'] =
        newState;

    state = updatedMaps;
  }
}
