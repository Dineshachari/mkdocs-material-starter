# The CalmKit design language

This starter is styled with **CalmKit**, a design system built for an ADHD focus tool. Everything on
this page is rendered by the same stylesheet it describes, so it demonstrates rather than asserts.

The premise: an aggressive interface is not a style choice but a cost. So a theme may change the
*look* and nothing else. It may not make the interface louder, faster, or more alarming.

## Why this is a stylesheet and not `primary: indigo`

Material's defaults are perfectly good, and they are also generic. Two of them actively conflict
with the system:

**`!!! danger` ships as alarm red.** CalmKit forbids alarm red for anything a reader has to
interpret, because red says *you failed*. Compare:

!!! danger "Danger, as CalmKit renders it"
    Soft coral, not `#ff5252`. The colour still reads as "pay attention" without reading as
    an accusation.

!!! warning "Warning"
    A gentle amber — a heads-up, not a siren.

!!! tip "Tip"
    A calm green, not a saturated one.

!!! note "Note"
    The calm blue that anchors the accent.

!!! example "Example"
    The warm amber the system uses for winding down.

**The indigo/deep-purple pairing has no relationship to the tokens.** A docs site whose palette
contradicts the system it documents is worse than an unstyled one.

!!! info "The one honest limit"
    A genuinely **destructive** action — deleting something irreversible — *should* look alarming,
    because warning about consequences is useful. The distinction is between an action someone is
    about to take and a state being reported to them. A prose admonition is always the second kind,
    which is why it takes the coral.

## Every colour is derived, not picked

Five authored tokens:

| Token | Value | Role |
|---|---|---|
| `calmNudge` | `#3399DB` | The calm accent. Links, header, notes. |
| `ragGreen` | `#57B87D` | On task. Success, tips. |
| `ragAmber` | `#EDBD5C` | Drifting. Warnings. |
| `ragCoral` | `#F27373` | Off task. **Never** an alarm red. |
| `windDownAmber` | `#F2B86B` | Winding down. The accent for hover and active states. |

Anything that had to clear a WCAG ratio was moved toward black or white by the **smallest amount
that clears it**, with the measured ratio recorded in the stylesheet beside it.

That minimality is load-bearing, not fussiness:

!!! quote "Why not one correction for everything"
    The coral needs **4%** darkening to clear 3:1. The amber needs **24%**.

    Apply the amber's correction to the coral and a soft coral becomes a brick red — darker,
    heavier, and arguably *more* alarming than the value the system exists to avoid. A single
    correction sized for the worst case defeats the palette it was meant to protect.

A worked example, the header background. Material pairs `--md-primary-fg-color` with white
foreground text, so it has to carry white at 4.5:1:

| | Value | White on it |
|---|---|---|
| Raw `calmNudge` | `#3399DB` | 2.6:1 — **fails** |
| Darkened 19% | `#297CB1` | 4.55:1 — passes |

## Motion

Durations are slow on purpose. Motion here lives at the edge of attention, and anything fast enough
to grab focus competes with what the reader is actually doing.

- Duration: `350ms`
- Curve: `cubic-bezier(0.42, 0, 0.58, 1)` — SwiftUI's symmetric `easeInOut`, which every CalmKit
  animation uses. Material's default is a snappier decelerate curve, which is the opposite.

**Reduce Motion is a hard off, not a slowdown.** In CalmKit's Swift implementation the gate is
structural — every animation builder returns an optional and yields `nil`, so a caller cannot forget
it. CSS has no equivalent, so the gate sits at the top level of the stylesheet and covers
*everything*, including Material's own transitions:

```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0s !important;
    transition-duration: 0s !important;
    scroll-behavior: auto !important;
  }
}
```

A reader who asked for no motion should not have to trust that every individual rule remembered.

Hover **states** still apply — they just arrive instantly. Suppressing motion is not the same as
suppressing feedback.

## Type

`ui-rounded` leads the stack, resolving to SF Pro Rounded on Apple platforms with no download, and
being skipped silently elsewhere. Rounded is deliberate: friendly without being childish, which is
why generic "don't use rounded system fonts" advice does not apply here.

`font: false` in `mkdocs.yml` stops Material loading Roboto from Google Fonts. That removes a
third-party request from every page, and means the docs render in the same family the product does —
rather than documenting one typeface while displaying another.

## Geometry

A 4/8pt grid, and a card radius of 16px.

```css
--ck-radius-xs:  4px;   /* code spans, thin bars */
--ck-radius-sm:  8px;   /* code blocks, tables */
--ck-radius-md: 12px;   /* admonitions */
--ck-radius-lg: 16px;   /* cards */
```

Shadows are soft and downward — calm depth, never a hard drop shadow.

!!! success "One wall is the rule"
    A card provides its border and shadow together. Nesting a bordered surface inside another reads
    as double-walled, and busy is the specific failure this system exists to avoid.

## Making it yours

The design language is one file: `docs/stylesheets/calmkit.css`.

Swap the five tokens at the top for your own and the rest follows — but **re-derive the corrected
values if you do**. The `#297CB1` header and the per-admonition colours are specific to these hues;
carrying them over to a different palette would keep the arithmetic and lose the guarantee.

To drop the design language entirely, remove the `extra_css` entry, delete `font: false`, and put
`primary`/`accent` back in the palette. Nothing else depends on it.
