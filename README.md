# K&E Technology Consultants Ltd — Website

This repository contains the company website built with [Hugo](https://gohugo.io/) (extended) and Tailwind CSS, based on the **Hugoplate** theme.

## Quickstart

Prereqs:
- Hugo **extended** (see `config/_default/module.toml` for minimum version)
- Go (for Hugo Modules)
- Node.js (for the theme generator / Tailwind pipeline)

Common commands:
- Install JS deps: `make install`
- Run locally: `make serve`
- Build: `make build`
- Clean build artifacts: `make clean`

If you’re actively changing design tokens / Tailwind output, use the template scripts:
- Dev (theme generator + Hugo server): `npm run dev`
- Production build: `npm run build`

## Theme updates (sync from upstream)

The Hugoplate theme is consumed via **Hugo Modules** (see `config/_default/module.toml`).

- Update Hugoplate to latest: `make theme-sync`
- Pin Hugoplate to a version/commit: `make theme-pin REF=vX.Y.Z` (or `REF=<commit>`)

After syncing, commit the resulting `go.mod`/`go.sum` changes.

## Customization layout

Keep site-specific changes in this repo so upstream theme updates stay easy:
- `config/`, `hugo.toml` — site configuration
- `content/`, `data/`, `i18n/`, `static/` — site content/assets
- `layouts/` — template overrides (Hugo lookup order prefers site files over theme/module)
- `assets/` — CSS/JS/image pipeline inputs (site overrides win)

More detailed notes: `DEVELOPER_DOCS.md`.

## Deployment

This repo includes build configs for common hosts:
- Netlify: `netlify.toml`
- Vercel: `vercel.json`, `vercel-build.sh`
- AWS Amplify: `amplify.yml`

