# Loamly GTM Template

Install Loamly tracking via Google Tag Manager.

## Install

**From GTM Gallery:**

1. Open [tagmanager.google.com](https://tagmanager.google.com)
2. Go to Templates → Search Gallery
3. Search "Loamly" → Add to workspace

**Create tag:**

1. Tags → New
2. Select "Loamly Analytics"
3. Enter your domain (e.g. `example.com`)
4. Trigger: All Pages
5. Save → Publish

**Manual install** (if not in gallery yet):

1. Download `template.tpl` from this repo
2. Templates → New → Import
3. Create tag as above

## Options

| Field | Description |
|-------|-------------|
| Domain | Your website domain |
| Enable Debug | Logs events to console |
| Disable Auto Pageview | For SPAs with manual pageview calls |

## SPAs

Loamly auto-detects route changes. If you need manual control:

```javascript
// On route change
if (window.Loamly) Loamly.pageview();
```

## Verify

1. GTM Preview mode
2. Visit your site
3. Check tag shows "Fired"
4. Check [app.loamly.ai](https://app.loamly.ai) for your visit

## Problems?

- Tag not firing → check All Pages trigger is attached
- No data → wait 2 min, check domain matches workspace
- Debug → `Loamly.debug(true)` in console

## Support

- Docs: [loamly.ai/docs](https://loamly.ai/docs)
- Email: hello@loamly.ai

## License

Apache 2.0
