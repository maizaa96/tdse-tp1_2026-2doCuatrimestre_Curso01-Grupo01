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
            "text": "My Statechart Export"
          },
          "specification": {
            "text": "@EventDriven\r\ninternal:\r\n    var timer : integer = 0\r\n    const DEL_ENTRY_BTN : integer = 20  \r\ninterface:\r\n    in event tick                       \r\n    var pressed : boolean = false       \r\n    out event EV_SYS_ENTRY_BTN_PRESSED  \r\n    out event EV_SYS_ENTRY_BTN_RELEASED "
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 627,
          "y": 17
        },
        "size": {
          "height": 113,
          "width": 163
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BUTTON_FALLING",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / timer = 0\ntick / timer += 1"
          }
        },
        "id": "e8d0aca8-08de-482d-a89a-528f39e575c1",
        "z": 15
      },
      {
        "position": {
          "x": -345,
          "y": 19
        },
        "size": {
          "height": 109,
          "width": 167
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BUTTON_UP",
            "fontSize": 11
          }
        },
        "id": "dd38bf7c-3ff9-4dd1-b1f7-3a0b204497cd",
        "z": 16
      },
      {
        "position": {
          "x": -342.5,
          "y": 286
        },
        "size": {
          "height": 110,
          "width": 162
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BUTTON_RISING",
            "fontSize": 11
          },
          "specification": {
            "text": "entry / timer = 0\ntick / timer += 1"
          }
        },
        "id": "ff41af90-c24c-4920-bb37-6c342e21c897",
        "z": 17
      },
      {
        "position": {
          "x": 616,
          "y": 285
        },
        "size": {
          "height": 112,
          "width": 163
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BUTTON_DOWN",
            "fontSize": 11
          }
        },
        "id": "3a12a573-84c8-4b70-a584-b2f735773ac2",
        "z": 18
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "dd38bf7c-3ff9-4dd1-b1f7-3a0b204497cd"
        },
        "target": {
          "id": "e8d0aca8-08de-482d-a89a-528f39e575c1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "33.742%",
              "dy": "62.832%",
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
                "text": "tick [pressed]"
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
        "id": "c7acf243-cd03-41e5-8ae1-0cda98a0baa3",
        "z": 22,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e8d0aca8-08de-482d-a89a-528f39e575c1"
        },
        "target": {
          "id": "3a12a573-84c8-4b70-a584-b2f735773ac2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "53.988%",
              "dy": "40.179%",
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
                "text": "tick [timer >= DEL_ENTRY_BTN && pressed] / raise EV_SYS_ENTRY_BTN_PRESSED"
              }
            },
            "position": {
              "offset": -213,
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
        "id": "cf537ec4-98c6-4384-861d-2095386835dc",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -270.5,
          "y": -154
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "1e76a6c4-5a37-4a1a-9725-74721329a485",
        "z": 24,
        "embeds": [
          "71aaea17-27a8-4377-9002-b02668d75181"
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
          "x": -270.5,
          "y": -139
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "71aaea17-27a8-4377-9002-b02668d75181",
        "z": 25,
        "parent": "1e76a6c4-5a37-4a1a-9725-74721329a485"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "1e76a6c4-5a37-4a1a-9725-74721329a485"
        },
        "target": {
          "id": "dd38bf7c-3ff9-4dd1-b1f7-3a0b204497cd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "48.503%",
              "dy": "2.752%",
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
        "id": "eb210d1c-31da-4320-b67d-03bfac1f0c83",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e8d0aca8-08de-482d-a89a-528f39e575c1"
        },
        "target": {
          "id": "dd38bf7c-3ff9-4dd1-b1f7-3a0b204497cd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "74.85%",
              "dy": "2.752%",
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
                "text": "tick [!pressed]"
              }
            },
            "position": {}
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
        "id": "dc78da77-3e3a-4874-8c27-915f146be7fd",
        "z": 27,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 462,
            "y": -22
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3a12a573-84c8-4b70-a584-b2f735773ac2"
        },
        "target": {
          "id": "ff41af90-c24c-4920-bb37-6c342e21c897",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "89.198%",
              "dy": "40%",
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
                "text": "tick [!pressed]"
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
        "id": "8098fa9c-ddc5-45c9-84fe-6d6f52fd2aa0",
        "z": 28,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ff41af90-c24c-4920-bb37-6c342e21c897"
        },
        "target": {
          "id": "dd38bf7c-3ff9-4dd1-b1f7-3a0b204497cd",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "48.503%",
              "dy": "83.486%",
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
                "text": "tick [timer >= DEL_ENTRY_BTN && !pressed] / raise EV_SYS_ENTRY_BTN_RELEASED"
              }
            },
            "position": {
              "offset": 227,
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
        "id": "79c654c7-ab61-4d8e-9abb-547cc6cfa6a8",
        "z": 29,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ff41af90-c24c-4920-bb37-6c342e21c897"
        },
        "target": {
          "id": "3a12a573-84c8-4b70-a584-b2f735773ac2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "53.988%",
              "dy": "99.107%",
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
                "text": "tick [pressed]"
              }
            },
            "position": {}
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
        "id": "62ec53a2-0e5b-4750-9cef-78ab7731745b",
        "z": 30,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -66,
            "y": 440
          },
          {
            "x": 286,
            "y": 440
          }
        ]
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
          "moduleName": "MyStatechart",
          "statemachinePrefix": "myStatechart",
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