# Fonts

## Nunito

`nunito-var-latin.woff2` — Nunito, variable weight 400–700, latin subset. 39 KB.

### Why it is here at all

CalmKit's typeface is SF Pro Rounded, and the stack leads with `ui-rounded`, the CSS generic that
resolves to it on Apple platforms with no download.

**That does not work in Chrome.** Tested directly: with an identical fallback chain, `ui-rounded`
renders at exactly the same width as plain `-apple-system`, and `"SF Pro Rounded"` by name does not
resolve either. So on Chrome — the majority browser — the rounded face was never rendering. The docs
claimed to display the product's typeface and were showing the system sans, which is also what
Material's default looks like. That is a large part of why the styled site still read as unstyled.

Nunito is the substitute already chosen for the web design system (see
`calmkit-web/calmkit/ARCHITECTURE.md`): variable 200–1000, rounded terminals, humanist proportions
close to SF Pro Rounded's. Varela Round ships a single weight; Quicksand is geometric and much wider,
so line lengths shift; Baloo 2 is heavier.

### Why self-hosted

A Google Fonts `<link>` is a third-party request on every page, and a strict CSP blocks it outright.
39 KB served from the same origin is cheaper and more private than either.

The latin subset only. Add `latin-ext` if the docs ever need it — the other four subsets Google serves
(cyrillic, cyrillic-ext, vietnamese, latin-ext) are 30 KB each and unused.

### Licence

SIL Open Font License 1.1 — see `Nunito-OFL.txt`, which the licence requires be distributed with the
font. Nunito is by Vernon Adams, Cyreal and Jacques Le Bailly.
