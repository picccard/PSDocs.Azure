# Module to test default values on optional parameters with PSDoc.Azure

Module to test default values on optional parameters with PSDoc.Azure

## Parameters

Parameter name | Required | Description
-------------- | -------- | -----------
parBoolFalse   | No       | Bool sat to false
parBoolTrue    | No       | Bool sat to true
parBoolNoValue | Yes      | Bool without default value
parStringNoValue | Yes      | String without any value sat
parStringWithDefaultValue | No       | String with value sat to "abc"
parStringEmpty | No       | String with value sat to empty string ("")
parStringZeroNumber | No       | String sat to "0"
parIntNoValue  | Yes      | Int without any value sat
parIntZero     | No       | Int sat to 0 (zero)
parIntMinusFortyTwo | No       | Int sat to -41
parIntFortyTwo | No       | Int sat to 41
parArrayNoValue | Yes      | Array without any value sat
parArrayEmpty  | No       | Array sat to empty array: []
parArrayThreeStrings | No       | Array with three strings
parArrayThreeNumbers | No       | Array with three numbers
parArrayThreeBools | No       | Array with three numbers
parArrayThreeDiffTypes | No       | Array with three diff types, int, string, bool
parArrayOfObjects | No       | Array with three objects with one or each: string, int and bool
parObjectNoValue | Yes      | Object without any value sat
parObjectEmpty | No       | Object sat to empty object: {}
parObjectSingleKeyValue | No       | Object with simple key value
parObjectTrippleKeyValue | No       | Object with 3 keys with values: string, int, bool

### parBoolFalse

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Bool sat to false

- Default value: `False`

### parBoolTrue

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Bool sat to true

- Default value: `True`

### parBoolNoValue

![Parameter Setting](https://img.shields.io/badge/parameter-required-orange?style=flat-square)

Bool without default value

### parStringNoValue

![Parameter Setting](https://img.shields.io/badge/parameter-required-orange?style=flat-square)

String without any value sat

### parStringWithDefaultValue

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

String with value sat to "abc"

- Default value: `abc`

### parStringEmpty

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

String with value sat to empty string ("")

### parStringZeroNumber

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

String sat to "0"

- Default value: `0`

### parIntNoValue

![Parameter Setting](https://img.shields.io/badge/parameter-required-orange?style=flat-square)

Int without any value sat

### parIntZero

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Int sat to 0 (zero)

- Default value: `0`

### parIntMinusFortyTwo

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Int sat to -41

- Default value: `-41`

### parIntFortyTwo

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Int sat to 41

- Default value: `41`

### parArrayNoValue

![Parameter Setting](https://img.shields.io/badge/parameter-required-orange?style=flat-square)

Array without any value sat

### parArrayEmpty

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Array sat to empty array: []

### parArrayThreeStrings

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Array with three strings

- Default value: `a b c`

### parArrayThreeNumbers

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Array with three numbers

- Default value: `1 2 3`

### parArrayThreeBools

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Array with three numbers

- Default value: `True True False`

### parArrayThreeDiffTypes

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Array with three diff types, int, string, bool

- Default value: `41 text False`

### parArrayOfObjects

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Array with three objects with one or each: string, int and bool

- Default value: `  `

### parObjectNoValue

![Parameter Setting](https://img.shields.io/badge/parameter-required-orange?style=flat-square)

Object without any value sat

### parObjectEmpty

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Object sat to empty object: {}

### parObjectSingleKeyValue

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Object with simple key value

- Default value: `@{someKey=someValue}`

### parObjectTrippleKeyValue

![Parameter Setting](https://img.shields.io/badge/parameter-optional-green?style=flat-square)

Object with 3 keys with values: string, int, bool

- Default value: `@{text=someText1; number=41; trueOrFalse=True}`

## Snippets

### Parameter file

```json
{
    "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
    "contentVersion": "1.0.0.0",
    "metadata": {
        "template": "test-template.json"
    },
    "parameters": {
        "parBoolFalse": {
            "value": false
        },
        "parBoolTrue": {
            "value": true
        },
        "parBoolNoValue": {
            "value": null
        },
        "parStringNoValue": {
            "value": ""
        },
        "parStringWithDefaultValue": {
            "value": "abc"
        },
        "parStringEmpty": {
            "value": ""
        },
        "parStringZeroNumber": {
            "value": "0"
        },
        "parIntNoValue": {
            "value": 0
        },
        "parIntZero": {
            "value": 0
        },
        "parIntMinusFortyTwo": {
            "value": -41
        },
        "parIntFortyTwo": {
            "value": 41
        },
        "parArrayNoValue": {
            "value": []
        },
        "parArrayEmpty": {
            "value": []
        },
        "parArrayThreeStrings": {
            "value": [
                "a",
                "b",
                "c"
            ]
        },
        "parArrayThreeNumbers": {
            "value": [
                1,
                2,
                3
            ]
        },
        "parArrayThreeBools": {
            "value": [
                true,
                true,
                false
            ]
        },
        "parArrayThreeDiffTypes": {
            "value": [
                41,
                "text",
                false
            ]
        },
        "parArrayOfObjects": {
            "value": [
                {
                    "text": "someText1",
                    "number": 41,
                    "trueOrFalse": true
                },
                {
                    "text": "someText2",
                    "number": -41,
                    "trueOrFalse": false
                },
                {
                    "text": "",
                    "number": 0,
                    "trueOrFalse": true
                }
            ]
        },
        "parObjectNoValue": {
            "value": {}
        },
        "parObjectEmpty": {
            "value": {}
        },
        "parObjectSingleKeyValue": {
            "value": {
                "someKey": "someValue"
            }
        },
        "parObjectTrippleKeyValue": {
            "value": {
                "text": "someText1",
                "number": 41,
                "trueOrFalse": true
            }
        }
    }
}
```
