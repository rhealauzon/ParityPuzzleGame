{
    "id": "e8047784-2449-4a41-8a89-261ed113347b",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "GMWwise",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "date": "2017-21-02 03:04:07",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "9647d01d-638c-45b0-b5bf-e8e46beda0fa",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ConfigOptions": [
                {
                    "Key": "default",
                    "Value": 609259586
                }
            ],
            "ProxyFiles": [
                {
                    "id": "a203108c-cf9c-42d5-a9e2-1775174e2e6b",
                    "modelName": "GMProxyFile",
                    "mvc": "1.0",
                    "TargetMask": 1048640,
                    "proxyName": "GMWwise_profile.dll"
                },
                {
                    "id": "a9eceb32-977a-403b-80cb-49a7ff73dad6",
                    "modelName": "GMProxyFile",
                    "mvc": "1.0",
                    "TargetMask": 2,
                    "proxyName": "libGMWwise_profile.dylib"
                }
            ],
            "constants": [
                
            ],
            "filename": "GMWwise_profile.dll",
            "final": "",
            "functions": [
                {
                    "id": "211ec2b9-a14e-4d68-ac68-d7229d1512f5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "GMWSetBasePath",
                    "help": "gmwSetBasePath(path)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwSetBasePath",
                    "returnType": 2
                },
                {
                    "id": "25179a40-8e54-469a-9a82-9e218b2170ae",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "GMWLoadBank",
                    "help": "gmwLoadBank(bankName)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwLoadBank",
                    "returnType": 2
                },
                {
                    "id": "cfe3ea18-34d6-433d-ac7c-c8895842d8c4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GMWUnloadBank",
                    "help": "gmwUnloadBank(bankID)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwUnloadBank",
                    "returnType": 2
                },
                {
                    "id": "a7e86858-ddbc-40f3-8ea0-0d3e96e39a3f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GMWInit",
                    "help": "gmwInit()",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwInit",
                    "returnType": 2
                },
                {
                    "id": "b9e0e835-3808-4e97-b025-26ce1fb108f7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GMWShutdown",
                    "help": "gmStop()",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwStop",
                    "returnType": 2
                },
                {
                    "id": "d6fbd4cc-e418-41c6-9d7c-8412642bb360",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "GMWProcessAudio",
                    "help": "gmwProcess()",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwProcess",
                    "returnType": 2
                },
                {
                    "id": "fe175092-94d3-4101-bea5-fbf297423dd4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "GMWSetState",
                    "help": "gmwSetState(stateGroup,state)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwSetState",
                    "returnType": 2
                },
                {
                    "id": "e332513e-7109-4336-ae01-28f55ebbd40b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GMWRegisterPlugin",
                    "help": "gmwRegisterPlugin(pluginType)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwRegisterPlugin",
                    "returnType": 2
                },
                {
                    "id": "de33b438-2fd2-4d69-88ef-b4f57ee94bb7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GMWRegisterCodec",
                    "help": "gmwRegisterCodec(codecType)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwRegisterCodec",
                    "returnType": 2
                },
                {
                    "id": "1b270386-8edf-4e91-b0c9-819fed612376",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GMWRegisterGroupGameObj",
                    "help": "gmwRegisterGroup(groupID)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwRegisterGroup",
                    "returnType": 2
                },
                {
                    "id": "713857b5-e776-4188-ad1a-fd84b540cdd6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GMWUnregisterGroupGameObj",
                    "help": "gmwUnregisterGroup(groupID)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwUnregisterGroup",
                    "returnType": 2
                },
                {
                    "id": "cff38db1-f367-4fea-a846-f57148e7e189",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        1
                    ],
                    "externalName": "GMWRegisterGameObj",
                    "help": "gmwRegisterObject(objectID,groupID,objectName)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwRegisterObject",
                    "returnType": 2
                },
                {
                    "id": "a67ab48a-0b56-4b7d-92c5-ccfa848599e1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "GMWUnregisterGameObj",
                    "help": "gmwUnregisterObject(objectID,groupID)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwUnregisterObject",
                    "returnType": 2
                },
                {
                    "id": "bac5eac1-f6e1-4baf-ab7d-a80757ae03dc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 5,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GMWSet2DPosition",
                    "help": "gmwSet2DPosition(objectID,xPos,yPos,xOr,yOr)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwSet2DPosition",
                    "returnType": 2
                },
                {
                    "id": "296ce438-5d51-41ab-80a3-b1c71ac70982",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 7,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GMWSet3DPosition",
                    "help": "gmwSet3DPosition(objectID,xPos,yPos,zPos,xOr,yOr,zOr)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwSet3DPosition",
                    "returnType": 2
                },
                {
                    "id": "6e21b434-b1eb-44c7-a8ee-699d6b52bed4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "GMWPostEvent",
                    "help": "gmwPostEvent(eventID,objectID)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwPostEvent",
                    "returnType": 2
                },
                {
                    "id": "7da57ef7-2ac5-465c-89c9-c219b3cf6b56",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "GMWPostTrigger",
                    "help": "gmwPostTrigger(triggerID,objectID)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwPostTrigger",
                    "returnType": 2
                },
                {
                    "id": "95b9014a-f5ba-4bbd-b053-e028d342eeba",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "GMWStopAll",
                    "help": "gmwStopAll(objectID)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwStopAll",
                    "returnType": 2
                },
                {
                    "id": "1d2613c4-399c-4ad8-9bd2-628e8dd9b73b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "GMWSetRTPCValue",
                    "help": "gmwSetParameter(rtpcID,rtpcValue,objectID)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwSetParameter",
                    "returnType": 2
                },
                {
                    "id": "f7161db0-af0d-4008-9099-9c2539c0b0cd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "GMWSetGlobalRTPCValue",
                    "help": "gmwSetGlobalParameter(rtpcID,rtpcValue)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwSetGlobalParameter",
                    "returnType": 2
                },
                {
                    "id": "94f733ea-95b4-46c7-947f-942613ec230b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "GMWGetRTPCValue",
                    "help": "gmwGetParameter(rtpcID,objectID)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwGetParameter",
                    "returnType": 2
                },
                {
                    "id": "dc994785-153f-4e7b-ac50-e8577294acb0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "GMWSetSwitch",
                    "help": "gmwSetSwitch(switchGroup,switchID,objectID)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwSetSwitch",
                    "returnType": 2
                },
                {
                    "id": "81357343-4bc5-4f47-8d6c-a9a2e228a9e9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GMWSet2DListenerPosition",
                    "help": "gmwSet2DListenerPosition(xPos,yPos,xOr,yOr)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwSet2DListenerPosition",
                    "returnType": 2
                },
                {
                    "id": "f8c1ae99-fdd0-4d58-8543-7ee3884765e6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 6,
                    "args": [
                        2,
                        2,
                        2,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GMWSet3DListenerPosition",
                    "help": "gmwSet3DListenerPosition(xPos,yPos,zPos,xOr,yOr,zOr)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwSet3DListenerPosition",
                    "returnType": 2
                },
                {
                    "id": "b141530e-5157-4ec1-92e6-ec7bfe42d0dc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "GMWSetActiveListeners",
                    "help": "gmwSetActiveListeners(objectID,listenerBitmask)",
                    "hidden": false,
                    "kind": 12,
                    "name": "gmwSetActiveListeners",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "maskTarget": 0,
            "order": [
                
            ],
            "origname": "extensions\\GMWwise_profile.dll",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "",
    "productID": "ACBD3CFF4E539AD869A0E8E3B4B022DD",
    "sourcedir": "",
    "version": "1.3.0"
}