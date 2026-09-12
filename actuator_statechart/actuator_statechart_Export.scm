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
            "text": "@EventDriven\ninterface:\n    var tick : integer\n    in event EV_ACT_LED_ON\n    in event EV_ACT_LED_OFF\n    in event EV_ACT_LED_BLINK\n    out event EV_LED_PIN_HIGH\n    out event EV_LED_PIN_LOW"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -129,
          "y": -132
        },
        "size": {
          "width": 546,
          "height": 320
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_BLINK",
            "fontSize": 11
          }
        },
        "id": "1455cb5f-b0fb-4890-a255-7e542fbdab72",
        "z": 56,
        "embeds": [
          "7050be80-13d9-4909-b2ee-e0cce4bfe5bf"
        ]
      },
      {
        "position": {
          "x": -126,
          "y": -87
        },
        "size": {
          "width": 540,
          "height": 272
        },
        "type": "Region",
        "attrs": {
          "priority": {
            "text": 1
          }
        },
        "id": "7050be80-13d9-4909-b2ee-e0cce4bfe5bf",
        "z": 57,
        "embeds": [
          "b6d41361-bb25-4b4e-8728-68053af9b00e",
          "5a919f0a-2f1d-41e5-beee-82388c8a8d09",
          "1bddaa5a-65a6-4990-90c8-a5d1be223658",
          "33d5d7b2-4a34-4fba-ad0d-3ad20a0dc689",
          "00af5c7e-b01c-4393-8d85-e5a184a837b5",
          "4b6e9c55-bcfe-40ba-93b7-203017e89c8d"
        ],
        "parent": "1455cb5f-b0fb-4890-a255-7e542fbdab72"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "33d5d7b2-4a34-4fba-ad0d-3ad20a0dc689",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "73.333%",
              "dy": "36.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "00af5c7e-b01c-4393-8d85-e5a184a837b5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "63.333%",
              "dy": "73.333%",
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
                "text": "[tick>0] / raise EV_LED_PIN_LOW "
              }
            },
            "position": {
              "distance": 0.45492907337925187,
              "offset": -92.99999999999999,
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
        "id": "5a919f0a-2f1d-41e5-beee-82388c8a8d09",
        "z": 58,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 228,
            "y": 44
          }
        ],
        "parent": "7050be80-13d9-4909-b2ee-e0cce4bfe5bf"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "00af5c7e-b01c-4393-8d85-e5a184a837b5",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "63.333%",
              "dy": "73.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "33d5d7b2-4a34-4fba-ad0d-3ad20a0dc689",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "36.667%",
              "dy": "36.667%",
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
                "text": "[tick>0] / raise EV_LED_PIN_HIGH"
              }
            },
            "position": {
              "distance": 0.5282404439365133,
              "offset": -95,
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
        "id": "1bddaa5a-65a6-4990-90c8-a5d1be223658",
        "z": 59,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 60,
            "y": 111
          }
        ],
        "parent": "7050be80-13d9-4909-b2ee-e0cce4bfe5bf"
      },
      {
        "position": {
          "x": 93,
          "y": -18
        },
        "size": {
          "height": 60,
          "width": 110
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_ON",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick --"
          }
        },
        "id": "33d5d7b2-4a34-4fba-ad0d-3ad20a0dc689",
        "z": 61,
        "embeds": [],
        "parent": "7050be80-13d9-4909-b2ee-e0cce4bfe5bf"
      },
      {
        "position": {
          "x": 93,
          "y": 114
        },
        "size": {
          "height": 60,
          "width": 110
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_OFF",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick --"
          }
        },
        "id": "00af5c7e-b01c-4393-8d85-e5a184a837b5",
        "z": 64,
        "parent": "7050be80-13d9-4909-b2ee-e0cce4bfe5bf"
      },
      {
        "position": {
          "x": 465,
          "y": -7
        },
        "size": {
          "width": 132,
          "height": 66
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_ON",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick = 2000"
          }
        },
        "id": "1fbd9f80-afd7-4d0d-874a-a83881c206b7",
        "z": 77,
        "embeds": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1455cb5f-b0fb-4890-a255-7e542fbdab72",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "97.945%",
              "dy": "6.587%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "1fbd9f80-afd7-4d0d-874a-a83881c206b7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50.758%",
              "dy": "4.545%",
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
                "text": "EV_ACT_LED_ON [tick <= 0] / raise EV_LED_PIN_HIGH "
              }
            },
            "position": {
              "distance": 0.5344237252728977,
              "offset": -30.897792135376704,
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
        "id": "129fbcfd-5b55-4d70-b66d-9da94eef944b",
        "z": 79,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1fbd9f80-afd7-4d0d-874a-a83881c206b7",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "53.03%",
              "dy": "89.394%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "x": 220,
          "y": 176,
          "id": "1455cb5f-b0fb-4890-a255-7e542fbdab72",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "91.259%",
              "dy": "91.963%",
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
                "text": "EV_ACT_LED_BLINK / raise EV_LED_PIN_LOW"
              }
            },
            "position": {
              "distance": 0.48734582321743397,
              "offset": -15.638058248772904,
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
        "id": "f902f1f2-133a-46bd-9fe1-2709a9a494a0",
        "z": 80,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 313,
          "y": -67
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "ShallowHistory",
        "attrs": {},
        "id": "4b6e9c55-bcfe-40ba-93b7-203017e89c8d",
        "z": 83,
        "embeds": [
          "31928613-1ffe-46b3-9d9f-e1524c351f65"
        ],
        "parent": "7050be80-13d9-4909-b2ee-e0cce4bfe5bf"
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 313,
          "y": -52
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "31928613-1ffe-46b3-9d9f-e1524c351f65",
        "z": 84,
        "parent": "4b6e9c55-bcfe-40ba-93b7-203017e89c8d"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "4b6e9c55-bcfe-40ba-93b7-203017e89c8d"
        },
        "target": {
          "id": "33d5d7b2-4a34-4fba-ad0d-3ad20a0dc689",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "36.667%",
              "dy": "36.667%",
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
                "text": " / raise EV_LED_PIN_HIGH"
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
        "id": "b6d41361-bb25-4b4e-8728-68053af9b00e",
        "z": 85,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 159,
            "y": -62
          }
        ],
        "parent": "7050be80-13d9-4909-b2ee-e0cce4bfe5bf"
      },
      {
        "position": {
          "x": -328,
          "y": -2
        },
        "size": {
          "height": 66,
          "width": 132
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_OFF",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / tick = 2000"
          }
        },
        "id": "2160637b-8f1c-434a-9c61-46d5ffc6496c",
        "z": 86,
        "embeds": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1455cb5f-b0fb-4890-a255-7e542fbdab72",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "0%",
              "dy": "92.216%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "2160637b-8f1c-434a-9c61-46d5ffc6496c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "55.303%",
              "dy": "78.788%",
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
                "text": "EV_ACT_LED_OFF [tick <= 0] / raise EV_LED_PIN_LOW"
              }
            },
            "position": {
              "distance": 0.5715801630048977,
              "offset": -36.94405605473494,
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
        "id": "ae1e87d9-17a1-4174-a2be-7d7b73f23e2d",
        "z": 87,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -238,
            "y": 163.09
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "2160637b-8f1c-434a-9c61-46d5ffc6496c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "54.545%",
              "dy": "15.152%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "x": 0,
          "y": -66,
          "id": "1455cb5f-b0fb-4890-a255-7e542fbdab72",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "14.336%",
              "dy": "7.399%",
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
                "text": "EV_ACT_LED_BLINK "
              }
            },
            "position": {
              "distance": 0.634749444044496,
              "offset": -16.922278200056777,
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
        "id": "a2952954-1248-408c-aff2-f85c61536d48",
        "z": 87,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -448,
          "y": 21
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "b1d2f951-e921-4de8-881f-23685486cee4",
        "z": 88,
        "embeds": [
          "ebca5f74-df50-4c25-8d58-c3faf08feb90"
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
          "x": -448,
          "y": 36
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "ebca5f74-df50-4c25-8d58-c3faf08feb90",
        "z": 89,
        "parent": "b1d2f951-e921-4de8-881f-23685486cee4"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b1d2f951-e921-4de8-881f-23685486cee4"
        },
        "target": {
          "id": "2160637b-8f1c-434a-9c61-46d5ffc6496c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "0%",
              "dy": "46.97%",
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
        "id": "2a8ebebd-d0f9-4639-9978-ebe45f6dd630",
        "z": 90,
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