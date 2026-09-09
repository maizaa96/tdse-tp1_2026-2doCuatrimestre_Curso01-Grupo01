{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\r\ninterface:\r\n    in event tick                           \r\n    var EV_ACT_LED_ON : boolean = false\r\n    var EV_ACT_LED_OFF : boolean = false\r\n    \r\n   \r\n    out event EV_LED_PIN_HIGH\r\n    out event EV_LED_PIN_LOW"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -286,
          "y": 88
        },
        "size": {
          "width": 176,
          "height": 88
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_OFF",
            "fontSize": 11
          }
        },
        "id": "e54885c7-71d7-48ca-b7f9-43557af09cc3",
        "z": 3
      },
      {
        "position": {
          "x": 176,
          "y": 88
        },
        "size": {
          "width": 176,
          "height": 88
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_ON",
            "fontSize": 11
          }
        },
        "id": "14c8b51b-f5d0-476e-9fe9-3e644c0bcef4",
        "z": 4
      },
      {
        "position": {
          "x": -374,
          "y": 22
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "8ef3c477-f4c2-4954-b5f7-ba8ed0c98720",
        "z": 5,
        "embeds": [
          "bfce2e59-3621-4312-b8f1-63834e9b9c38"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -374,
          "y": 37
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "bfce2e59-3621-4312-b8f1-63834e9b9c38",
        "z": 6,
        "parent": "8ef3c477-f4c2-4954-b5f7-ba8ed0c98720"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8ef3c477-f4c2-4954-b5f7-ba8ed0c98720"
        },
        "target": {
          "id": "e54885c7-71d7-48ca-b7f9-43557af09cc3",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50%",
              "dy": "0%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9cbaada2-1b2e-49af-ba7a-c3e530eddf3b",
        "z": 7,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e54885c7-71d7-48ca-b7f9-43557af09cc3"
        },
        "target": {
          "id": "14c8b51b-f5d0-476e-9fe9-3e644c0bcef4",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "12.5%",
              "dy": "25%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick [EV_ACT_LED_ON] / raise EV_LED_PIN_HIGH"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "611b12d1-69a2-492c-8fda-ddcd83c6b156",
        "z": 8,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -22,
            "y": 110
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "14c8b51b-f5d0-476e-9fe9-3e644c0bcef4"
        },
        "target": {
          "id": "e54885c7-71d7-48ca-b7f9-43557af09cc3",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "87.5%",
              "dy": "75%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick [EV_ACT_LED_OFF] / raise EV_LED_PIN_LOW"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f00b963c-027c-41dc-9d92-5bcfd800c241",
        "z": 9,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "ActuatorStatechart",
          "statemachinePrefix": "actuatorStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}