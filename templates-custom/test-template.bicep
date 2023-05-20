metadata name = 'Module to test default values on optional parameters with PSDoc.Azure'
metadata description = 'Module to test default values on optional parameters with PSDoc.Azure'

// Boolean
@sys.description('Bool sat to false')
param parBoolFalse bool = false

@sys.description('Bool sat to true')
param parBoolTrue bool = true

@sys.description('Bool without default value')
param parBoolNoValue bool


// String

@sys.description('String without any value sat')
param parStringNoValue string

@minLength(3)
@maxLength(24)
@sys.description('String with value sat to "abc"')
param parStringWithDefaultValue string = 'abc'

@sys.description('String with value sat to empty string ("")')
param parStringEmpty string = ''

@sys.description('String sat to "0"')
param parStringZeroNumber string = '0'


// Int

@sys.description('Int without any value sat')
param parIntNoValue int

@sys.description('Int sat to 0 (zero)')
param parIntZero int = 0

@sys.description('Int sat to -41')
param parIntMinusFortyTwo int = -41

@minValue(10)
@maxValue(50)
@sys.description('Int sat to 41')
param parIntFortyTwo int = 41


// List

@sys.description('Array without any value sat')
param parArrayNoValue array

@sys.description('Array sat to empty array: []')
param parArrayEmpty array = []

@minLength(1)
@maxLength(5)
@sys.description('Array with three strings')
param parArrayThreeStrings array = ['a', 'b', 'c']

@sys.description('Array with three numbers')
param parArrayThreeNumbers array = [1, 2, 3]

@sys.description('Array with three numbers')
param parArrayThreeBools array = [true, true, false]

@sys.description('Array with three diff types, int, string, bool')
param parArrayThreeDiffTypes array = [41, 'text', false]

@sys.description('Array with three objects with one or each: string, int and bool')
param parArrayOfObjects array = [
  {
    text: 'someText1'
    number: 41
    trueOrFalse: true
  }
  {
    text: 'someText2'
    number: -41
    trueOrFalse: false
  }
  {
    text: ''
    number: 0
    trueOrFalse: true
  }
]


// Object

@sys.description('Object without any value sat')
param parObjectNoValue object

@sys.description('Object sat to empty object: {}')
param parObjectEmpty object = {}

@sys.description('Object with simple key value')
param parObjectSingleKeyValue object = { someKey: 'someValue' }

@sys.description('Object with 3 keys with values: string, int, bool')
param parObjectTrippleKeyValue object = {
  text: 'someText1'
  number: 41
  trueOrFalse: true
}
