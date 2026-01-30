___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Loamly Analytics",
  "categories": ["ANALYTICS", "ATTRIBUTION"],
  "brand": {
    "id": "brand_loamly",
    "displayName": "Loamly",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAAXNSR0IArs4c6QAAAHhlWElmTU0AKgAAAAgABAEaAAUAAAABAAAAPgEbAAUAAAABAAAARgEoAAMAAAABAAIAAIdpAAQAAAABAAAATgAAAAAAAABIAAAAAQAAAEgAAAABAAOgAQADAAAAAQABAACgAgAEAAAAAQAAADCgAwAEAAAAAQAAADAAAAAA6LhYOwAAAAlwSFlzAAALEwAACxMBAJqcGAAAA2VJREFUaAXtmMtvTUEcx68qinql4hVVywpCwoaVSGyuP0CCdGVTCWWjFtJFF4SFhV3ZWRFJhYREIm1CbBsJVlKSeqbEW0LQ+nyvO3p6nDmvO/eOm9xf8rnnnHn85vedmTP3zBQKybaYIldhssqM4L8ITeDUTuCt2sEH/V+ivVaXCrpqLEBirrkUoSEdqHcR8xAwVO8i2hEw6kHEddp09k5sw9knDyJi34nZBHQEuqEFkkwv9QQEV45a3FtFXAgEc5f7rZBkJylQi6DDbUROp3ChzwR3HDQyNmsmYxDCdWvx/I8IW6PDBLjZpoD0NrgPtvp507/jM2mKajppZSzMADVkM72w/XAOfkQUWk+altdlEXlRSb9I1Ai/hzfwEl7AM3hefn7NtRP0jxw3C86Q35skgDIlu83vUXj453Ha726eLoKWOgX3Ed7COLwCBSYUqIJT3gf4CjbbQcYtiBPwhfyNkHoKvKPsYZipSiHr4HkdLIfS0IbyszwWKSyRaabgQTlOUzBY5iZ1FGw1bD9ONTLB9uLuxxREXAFbnnporyo7tB58/QRbm7b0zBWMo8c0NseRAC3bxm/Wa+6KT2i00vku/S3wFLIGXiqvT+W8JgcuTDHk9lWJABfBGx91L8AIyXz9X0Ygc+CmQkOA6Qlf18YI+Op5025jBExP+Lo2RsBXz5t2KxkBbWxyfwKYAMpX7QxzWSUCtGf9lqvV6ZW0Txa5Tb2YlX7q5O61iEi1OdImP2scpRkwlqGiTia0c6qGdeL0BmQVUdDGOE0lnTjsg0pMGyBt/LWn7ohwpPfqEOgAIU1Mk5oGa+EBtILN5GwPXLEVIH0uLIKlsAJWQTusKd/r7Eh5KrMAdCzSBer1sG0g4SzsCmeEn808Pk3GsXBm4FkCDsA9UA8quNWgAHVdCQpwCSyEZkhj4xTaCY8iCsuHjnH6QKJjTUOr47qkYdOqk1Qma76OJ9vAZpvIGAKb37/1NIXSiLA5qiR9kLbjRk0ndL2go85wOyRNmU8Rp6bCsN5tIecOGBHno0r6EjFBMHqpk0zHMN3QA7NshX2J0BTZbgsqa7ovEaMEqtXNifkSMUz0WhmdmC8RA0Tf5EQBTuaDjyU28aVOq1Bn9voOugy1NGfvgglanx5FGAGzFlfrqj+3xE+I3wEvk0VZj2gQAAAAAElFTkSuQmCC"
  },
  "description": "Track pageviews and detect AI traffic from ChatGPT, Perplexity, and other AI agents.",
  "containerContexts": ["WEB"]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "domain",
    "displayName": "Domain",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Your website domain (e.g., example.com). This is used to resolve your Loamly workspace.",
    "alwaysInSummary": true
  },
  {
    "type": "CHECKBOX",
    "name": "enableDebug",
    "displayName": "Enable Debug Mode",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "When enabled, Loamly will log tracking events to the browser console for debugging."
  },
  {
    "type": "CHECKBOX",
    "name": "disableAutoPageview",
    "displayName": "Disable Automatic Pageview",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "Enable this for Single Page Applications (SPAs) that manually call Loamly.pageview() on route changes."
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const encodeUriComponent = require('encodeUriComponent');
const log = require('logToConsole');
const setInWindow = require('setInWindow');
const queryPermission = require('queryPermission');

// Get configuration from template fields
const domain = data.domain;
const enableDebug = data.enableDebug;
const disableAutoPageview = data.disableAutoPageview;

// Build the Loamly tracker script URL
const scriptUrl = 'https://app.loamly.ai/t.js?d=' + encodeUriComponent(domain);

// Set configuration in window before script loads (if needed)
if (disableAutoPageview || enableDebug) {
  const config = {};
  if (disableAutoPageview) {
    config.disableAutoPageview = true;
  }
  if (enableDebug) {
    config.debug = true;
  }
  
  // Check permission before setting in window
  if (queryPermission('access_globals', 'write', '__loamly_config')) {
    setInWindow('__loamly_config', config, true);
  }
}

// Log if debug mode is enabled
if (enableDebug) {
  log('[Loamly GTM] Loading tracker for domain:', domain);
}

// Check permission to inject script
if (queryPermission('inject_script', scriptUrl)) {
  // Inject the Loamly tracker script
  injectScript(
    scriptUrl,
    function() {
      // Success callback
      if (enableDebug) {
        log('[Loamly GTM] Tracker loaded successfully for domain:', domain);
      }
      data.gtmOnSuccess();
    },
    function() {
      // Failure callback
      log('[Loamly GTM] Failed to load tracker script');
      data.gtmOnFailure();
    },
    'loamlyAnalyticsTracker'
  );
} else {
  log('[Loamly GTM] Permission denied to inject script');
  data.gtmOnFailure();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://app.loamly.ai/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__loamly_config"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 1/30/2026, 3:00:00 PM

Loamly Analytics GTM Template v1.0.0
- Loads the Loamly tracker script with domain-based workspace resolution
- Supports debug mode for development
- Supports disabling auto-pageview for SPAs

For documentation, visit: https://loamly.ai/docs/integrations/gtm
