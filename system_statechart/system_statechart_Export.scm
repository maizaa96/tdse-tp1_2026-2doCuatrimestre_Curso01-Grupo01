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
            "text": "system_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\ninterface:\n    in event tick                             \n    var EV_SYS_ENTRY_BTN_PRESSED : boolean = false\n    var EV_SYS_ENTRY_BTN_RELEASED : boolean = false\n    \n\n    out event EV_ACT_LED_ON\n    out event EV_ACT_LED_OFF"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -396,
          "y": 66
        },
        "size": {
          "width": 154,
          "height": 110
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYSTEM_IDLE",
            "fontSize": 11
          }
        },
        "id": "0ea0e488-4beb-49ec-85b2-dc82ad5860f1",
        "z": 3,
        "embeds": []
      },
      {
        "position": {
          "x": -328,
          "y": 0
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "ea25e026-8778-4971-8ac8-4af200cbe7ac",
        "z": 5,
        "embeds": [
          "88175811-49d6-4418-a345-76747bdac597"
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
          "x": -328,
          "y": 15
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "88175811-49d6-4418-a345-76747bdac597",
        "z": 6,
        "parent": "ea25e026-8778-4971-8ac8-4af200cbe7ac"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ea25e026-8778-4971-8ac8-4af200cbe7ac"
        },
        "target": {
          "id": "0ea0e488-4beb-49ec-85b2-dc82ad5860f1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "57.143%",
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
        "id": "574a165f-36fb-4296-a3c2-66af9d882c9f",
        "z": 7,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 198,
          "y": 66
        },
        "size": {
          "width": 154,
          "height": 108
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYSTEM_ACTIVE",
            "fontSize": 11
          }
        },
        "id": "99c93294-1574-415a-b0fe-4e9752394b94",
        "z": 12,
        "embeds": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "0ea0e488-4beb-49ec-85b2-dc82ad5860f1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "85.714%",
              "dy": "20%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "99c93294-1574-415a-b0fe-4e9752394b94",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "14.286%",
              "dy": "20.37%",
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
                "text": "tick [EV_SYS_ENTRY_BTN_PRESSED] / raise EV_ACT_LED_ON"
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
        "id": "8d921891-732c-422f-a046-cbf9aa058557",
        "z": 13,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "99c93294-1574-415a-b0fe-4e9752394b94",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "0%",
              "dy": "81.481%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "0ea0e488-4beb-49ec-85b2-dc82ad5860f1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "71.429%",
              "dy": "80%",
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
                "text": "tick [EV_SYS_ENTRY_BTN_RELEASED] / raise EV_ACT_LED_OFF"
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
        "id": "2d546c60-11fa-4af8-8985-37c5601c851e",
        "z": 14,
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
          "moduleName": "SystemStatechart",
          "statemachinePrefix": "systemStatechart",
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