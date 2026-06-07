# Yingzi Zhang Research Portfolio

A dependency-free static personal website for Yingzi Zhang, based on the May 2026 CV in `assets/Yingzi_Zhang_CV_202605.pdf`.

## Preview

Open `index.html` directly in a browser, or run a local server:

```bash
python3 -m http.server 8080
```

Then visit `http://localhost:8080`.

## Update Links

Profile links are maintained directly in the `#connect` section of `index.html`.

## Public Hosting

For a site that should be searchable and visible to everyone, the usual low-friction options are:

1. `GitHub Pages` - best if you want simple public hosting from a public repository.
2. `Netlify` - good if you want easy previews and deploys.
3. `Cloudflare Pages` - good if you want fast global delivery.

If you use GitHub Pages, keep the repo public, point a custom domain to the site if you have one, and submit the deployed URL to Google Search Console after launch.

For mainland China access, do not rely on GitHub Pages as the only public endpoint. Use the mirror plan in `CHINA_MAINLAND_DEPLOYMENT.md` and deploy the static bundle to a mainland-capable host after ICP filing is complete.

## Files

- `index.html` - page content and structure.
- `styles.css` - visual system and responsive layout.
- `script.js` - small progressive enhancements for navigation and placeholder link behavior.
- `DESIGN.md` - design source of truth and future update checklist.
- `assets/hero-genomics.png` - generated project-bound hero image.
- `assets/Yingzi_Zhang_CV_202605.pdf` - bundled CV.
