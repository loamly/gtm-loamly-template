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
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAAE8ElEQVR4nO2Za2wUVRTHf3d2u9ttS1sKpS0PeQgIIoL4AFFBjSgxGmOMH4wxJsYYP/jBGB+JMSYm+sGY+EFj1PhIjFFjjAqKBgUVFRFReYiAgLxaoKWFdrvd7szszvXc2Z1ld9rtdncX+uE/mczO3HPv+Z9z7j33zMCIRjSi/18Jwz3BypUr6e7uRkqJZVn4fD6EEBiGgWEYxGIxAoEAhmGwYsWK4QbJHHLNmjVIKXNeTNMkHA5jWRa2bSOlxLZt8vl8fmlzUUbX9dzStm0Mw0AIgWma+Hw+dF0nHA4TDAaJRCKEQiGEELnFSCQiQ6EQ4XCYYDCI3+/H7/fj8/lwu91YlkUqleLSSy+lubmZqqqqAYHMRWUAKIpCMpkkkUhw/fXXEw6HCYVCucdHHnmEnp4eRo8ejWVZAy5G9QXo6ekhFovR3t5OW1tb7rlUKsXq1auz2hBCkEwmSSQSeL1eampqCAaD2dflJi8dTNu2icfj9Pb24na7cblcCCFwu93Ytk0ikcAwDFKpFK+99hpOpxNFUUilUsRiMYLBIE6nE9M0SafTAz5npxoAfr8fl8tFOp3G6XTi8/kIhUJIKXE6nSQSCTo6Ogafge7ubhobG3E4HHR1dREIBAgGg9i2TSKRIJlM4vV6CQQC2LZNKpVi2bJlA+pAZgBS+B1OhBDEYjFqamqorKwkEAhQVVWF1+vF5XJhmiaJRALLskin0wPah5xqAMTjcRoaGvB6vfT09NDQ0EAkEsHhcOB0OnE6nbhcLtLpNPF4HCklDocDl8uVywCHw0EymeTcc8+lvr5+8BnweDzU1tbS29tLdXU10WgUl8tFOBzG5XLhdDpxu93Ytk0sFsOyLFwuF36/H4/Hg6IoxONxUqkUkyZNoqKiIsdAUR8ATdOorq4mkUgQj8eJRCJEo1FcLheqqhIOh1FVFdM0icfj2LaN0+kkEAjg9/tRFIVIJEI6naapqYmysrIBgTF9fHbtNi68ZR6+yjL8l9Rh+bx4N39JY0MDra2tVFRUEAgECAQCuFwuVFUlFAphmiaWZeF0OvH7/YTDYRRFIRqNkkqlOOecc6isrBxY6vT09KBpGsOllhQCKTlpwk7CQy0oo1x4G2NE1T5ufewNJk+eTDweR1VVQqEQqqpiWRahUAjTNLFtO5cBwWCQ6dOnM2bMmKx2CgYgFA5j2zY/fvQJUwNRAqMqULzeHAAuRaJKSThloXb1cs71c3ho0wpOOeUUEolEzgfC4TCqqmJZFqFQCMMwcDqdhEIhFi5cOChjCgagsroGn9+PBCJun6bvK2f00e9xDdB4sNexeqoLwzCQUvLDzl+xaxt59N6HWLJkCfX19TgcDsLhMC6XK1dKGIaBaZoEg0EWLFhAa2vrYEIpc9IREpQsyDjRn+xT+dX4tH/jQf5eDNLp5MT3UZz/8y/7kz5F/WCY/z6rLyTgbMnQFwSh9l2WC5FMJlFVlfLy8pP9/MMKIPOU6erqoru7m3g8njMgKfSJRz+kZZS+lxMpUO+L4fZu2+K3zdfiqnSw/IKlRCKR3OMdHR20t7cTj8fZfPhw/qSi9oHvd+yke/e+wYWSkBJVNEGZVwTLnYQvaMTuF8b/cLfIBXWpbLF3s05K6hcLqjZjT1vBkhuXcdpppxGPx3Nl84EDB+ju7s7dy2QyNDY25u5NN27cSFtb259HNOJy0j/Xv56v/wHLGQwAAAAASUVORK5CYII="
  },
  "description": "Loamly Analytics - AI traffic detection for your website. Tracks pageviews, scroll depth, form submissions, and detects AI-influenced traffic from ChatGPT, Perplexity, and other AI agents.",
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
