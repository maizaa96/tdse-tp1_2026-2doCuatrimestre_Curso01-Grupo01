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
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface :\n    var tick : integer = 0\n    in event EV_SYS_CAM_BTN_PRESSED\n    in event EV_SYS_BTN_CAM_IDLE\n    in event EV_SYS_BTN_COIL_ACTIVE\n    in event EV_SYS_BTN_COIL_IDLE\n    in event EV_SYS_ENTRY_BTN_PRESSED\n    in event EV_SYS_ENTRY_BTN_RELEASED\n    out event EV_ACT_LED_BLINK\n    out event EV_ACT_LED_OFF\n    out event EV_ACT_LED_ON"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -88,
          "y": -264
        },
        "size": {
          "height": 88,
          "width": 176
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_IDLE",
            "fontSize": 11
          }
        },
        "id": "ebff521b-e7c4-4079-9375-761d88989037",
        "z": 7
      },
      {
        "position": {
          "x": -88,
          "y": -44
        },
        "size": {
          "height": 88,
          "width": 176
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_CAM_ACTIVE",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick=2000"
          }
        },
        "id": "88577f4f-d138-4d23-8b7b-82657acbe417",
        "z": 8
      },
      {
        "position": {
          "x": -88,
          "y": 196
        },
        "size": {
          "height": 88,
          "width": 176
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_BARRIER_RISING",
            "fontSize": 11
          },
          "specification": {
            "text": "entry/ tick--"
          }
        },
        "id": "7800c506-fa5d-4737-8f88-6bc078ff2e19",
        "z": 14,
        "embeds": [
          "2b7ffee1-7802-4ca4-bc82-03f623b47b2a"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ebff521b-e7c4-4079-9375-761d88989037"
        },
        "target": {
          "id": "88577f4f-d138-4d23-8b7b-82657acbe417",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50%",
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
                "text": "EV_SYS_CAM_BTN_PRESSED"
              }
            },
            "position": {
              "distance": 0.5454545454545454,
              "offset": -64,
              "angle": 0
            }
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
        "id": "fa537e49-93c7-41e0-96f0-f5ecbeddb8f7",
        "z": 17,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -88,
          "y": 636
        },
        "size": {
          "height": 88,
          "width": 176
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_BARRIER_FALLING",
            "fontSize": 11
          },
          "specification": {
            "text": "entry/ tick--"
          }
        },
        "id": "6b6011ac-c76d-4fd4-94bd-52f06e9a3bee",
        "z": 25,
        "embeds": [
          "5437ebe4-f72a-415f-84e2-0de1488fc421"
        ]
      },
      {
        "position": {
          "x": -88,
          "y": 416
        },
        "size": {
          "height": 88,
          "width": 176
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_COIL_ACTIVE",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick=2000"
          }
        },
        "id": "5261a050-d7a0-4e8b-9e96-f4048c86f6d8",
        "z": 29
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "5261a050-d7a0-4e8b-9e96-f4048c86f6d8"
        },
        "target": {
          "id": "6b6011ac-c76d-4fd4-94bd-52f06e9a3bee",
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
            "attrs": {
              "text": {
                "text": "EV_SYS_BTN_COIL_IDLE /raise EV_ACT_LED_BLINK"
              }
            },
            "position": {
              "distance": 0.49242424242424243,
              "offset": -118,
              "angle": 0
            }
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
        "id": "f8c01fcb-1592-4139-971b-1454c7bfa032",
        "z": 30,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7800c506-fa5d-4737-8f88-6bc078ff2e19"
        },
        "target": {
          "id": "5261a050-d7a0-4e8b-9e96-f4048c86f6d8",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50%",
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
                "text": "[tick==0]/raise EV_ACT_LED_ON"
              }
            },
            "position": {
              "distance": 0.5227272727272727,
              "offset": -87,
              "angle": 0
            }
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
        "id": "6cc59ca6-cb95-42e0-a092-ca7ca6fc4d3f",
        "z": 30,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6b6011ac-c76d-4fd4-94bd-52f06e9a3bee",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "12.5%",
              "dy": "50%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "ebff521b-e7c4-4079-9375-761d88989037",
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
                "text": "[tick==0] /raise EV_ACT_LED_OFF"
              }
            },
            "position": {
              "distance": 0.4924875520875513,
              "offset": -107,
              "angle": 0
            }
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
        "id": "6b6bf28b-ac3a-4dd7-b487-c9c3691435bb",
        "z": 31,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -396,
            "y": 658
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "88577f4f-d138-4d23-8b7b-82657acbe417"
        },
        "target": {
          "id": "7800c506-fa5d-4737-8f88-6bc078ff2e19",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "48.864%",
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
                "text": "EV_SYS_ENTRY_BTN_PRESSED /raise EV_ACT_LED_BLINK"
              }
            },
            "position": {
              "distance": 0.48579545454545453,
              "offset": -142,
              "angle": 0
            }
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
        "id": "842b6005-b64e-4be2-b95a-413c3b261432",
        "z": 32,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -102,
          "y": -404
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "7fb6b452-c629-4cb7-8fe4-542263e6e1dd",
        "z": 33,
        "embeds": [
          "c9c20662-93e6-4b6b-a525-32a96e2758ed"
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
          "x": -102,
          "y": -389
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "c9c20662-93e6-4b6b-a525-32a96e2758ed",
        "z": 34,
        "parent": "7fb6b452-c629-4cb7-8fe4-542263e6e1dd"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7fb6b452-c629-4cb7-8fe4-542263e6e1dd"
        },
        "target": {
          "id": "ebff521b-e7c4-4079-9375-761d88989037",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "48.864%",
              "dy": "36.364%",
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
        "id": "4b55b5b1-ffef-4f14-8631-9364d1b26a09",
        "z": 35,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7800c506-fa5d-4737-8f88-6bc078ff2e19"
        },
        "target": {
          "id": "7800c506-fa5d-4737-8f88-6bc078ff2e19",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "93.75%",
              "dy": "28.409%",
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
                "text": "[tick>0]"
              }
            },
            "position": {
              "distance": 0.6256755975941821,
              "offset": 27.615310668945312,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
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
        "id": "2b7ffee1-7802-4ca4-bc82-03f623b47b2a",
        "z": 36,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "7800c506-fa5d-4737-8f88-6bc078ff2e19"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6b6011ac-c76d-4fd4-94bd-52f06e9a3bee"
        },
        "target": {
          "id": "6b6011ac-c76d-4fd4-94bd-52f06e9a3bee",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "96.023%",
              "dy": "55.682%",
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
                "text": "[tick>0]"
              }
            },
            "position": {
              "distance": 0.6846677120452623,
              "offset": 25.615310668945312,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
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
        "id": "5437ebe4-f72a-415f-84e2-0de1488fc421",
        "z": 37,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "6b6011ac-c76d-4fd4-94bd-52f06e9a3bee"
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