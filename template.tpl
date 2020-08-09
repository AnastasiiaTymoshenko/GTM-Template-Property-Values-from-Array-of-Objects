___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
   "categories": [
    "UTILITY",
    "TAG_MANAGEMENT",
	"MARKETING",
	"SALES",
	"ADVERTISING",
	"ANALYTICS"
  ],
  "displayName": "Property Values from Array of Objects",
  "description": "Create a string of property values from an array of objects.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "inputArray",
    "displayName": "Array of objects",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "field",
    "displayName": "Field",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "valueHint": "",
    "notSetText": "This field is required.",
    "help": "Choose a field from input array of objects, e.g. id."
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const inputArray = data.inputArray;
const field = data.field;
let fieldValues = [];

if(typeof(inputArray) == 'undefined')
{
  return;
}

for(let i = 0; i<inputArray.length; i++)
  {
    fieldValues.push(inputArray[i][field]);
  }

return fieldValues.join();


___TESTS___

scenarios: []


___NOTES___

Created on 09.08.2020, 19:06:55


