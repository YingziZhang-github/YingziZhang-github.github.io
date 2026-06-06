# Design

## Source of truth
- Status: Active
- Last refreshed: 2026-06-02
- Primary product surfaces: Single-page personal research portfolio, downloadable CV, social/profile links.
- Evidence reviewed: `/Users/zhany0s/Downloads/张樱子_202605简历.pdf`; generated hero asset at `assets/hero-genomics.png`; no existing website repository was found in `/Users/zhany0s`.

## Brand
- Personality: Precise, translational, scientifically credible, international, quietly personal.
- Trust signals: KAUST affiliation, first/co-first author publications, NanoRanger patent and media coverage, conference awards, teaching and leadership.
- Avoid: Overly decorative biotech cliches, exaggerated claims, dark stock-like lab imagery, invented social links, exposing phone numbers by default.

## Product goals
- Goals: Present Yingzi Zhang as a researcher working across long-read sequencing, genome diagnostics, epigenomic stability, and clinical translation; make major projects and publications easy to scan; provide contact and social entry points.
- Non-goals: Full publication database, lab notebook, private project repository, grant application packet.
- Success signals: A visitor can understand research focus in one viewport, find featured projects in one scroll, download the CV, and identify missing social URLs that can be filled later.

## Personas and jobs
- Primary personas: Faculty/search committees, collaborators, translational medicine partners, conference contacts, students, science-media readers.
- User jobs: Assess scientific fit, review achievements, locate selected publications/projects, contact the researcher, understand the person beyond academic work.
- Key contexts of use: Desktop review by academics, mobile scan after a meeting, quick sharing with collaborators.

## Information architecture
- Primary navigation: Research, Projects, Publications, Timeline, Media, Connect.
- Core routes/screens: One-page static homepage with anchor navigation.
- Content hierarchy: Identity and research thesis; metrics; research pillars; featured projects; selected publications; career timeline; leadership/media; contact and social links.

## Design principles
- Principle 1: Evidence first; every major claim should trace to CV-derived facts.
- Principle 2: Dense but calm; use compact cards and bands so the page feels like a professional dossier, not a marketing splash.
- Tradeoffs: Some social links are placeholders because URLs were not present in the CV; this is made visible instead of inventing targets.

## Visual language
- Color: Off-white research paper base, deep ink text, restrained teal/green and red diagnostic accents, neutral borders.
- Typography: System sans-serif for reliable rendering; tight headings and readable body copy.
- Spacing/layout rhythm: 24 to 96 px section rhythm, dense grids, stable cards.
- Shape/radius/elevation: 6 to 8 px radius, minimal shadows, fine borders.
- Motion: Small reveal/active-state transitions only, with reduced-motion support.
- Imagery/iconography: Generated biomedical hero image; compact text labels and simple badges instead of decorative icons.

## Components
- Existing components to reuse: None; static site created from scratch.
- New/changed components: Hero, navigation bar, metrics, research pillar cards, project cards, publication list, timeline, media list, social link grid.
- Variants and states: Active nav, placeholder social links, hover/focus states, mobile navigation collapse through wrapping.
- Token/component ownership: `styles.css` CSS custom properties.

## Accessibility
- Target standard: WCAG AA-oriented static page.
- Keyboard/focus behavior: Native links/buttons with visible focus outlines.
- Contrast/readability: High-contrast text on light surfaces; image hero uses overlay for text legibility.
- Screen-reader semantics: Landmark sections, descriptive headings, accessible link labels.
- Reduced motion and sensory considerations: Motion disabled under `prefers-reduced-motion`.

## Responsive behavior
- Supported breakpoints/devices: Mobile phones, tablets, desktops.
- Layout adaptations: Hero and cards collapse to single column; nav wraps; metrics remain stable.
- Touch/hover differences: Hover enhancements are decorative only; all actions remain direct links.

## Interaction states
- Loading: Static page, no loading state required.
- Empty: Social links without URLs are marked as "Add URL".
- Error: External link failures are outside static-site control.
- Success: Copyable/downloadable CV and visible contact link.
- Disabled: Placeholder links use `aria-disabled="true"` and visible muted styling.
- Offline/slow network, if applicable: Local assets are bundled; no CDN dependency.

## Content voice
- Tone: Professional, direct, internationally readable.
- Terminology: English first; short Chinese labels are used where they add personal/contextual clarity.
- Microcopy rules: Avoid overstating impact; use "selected", "featured", "CV-derived" where appropriate.

## Implementation constraints
- Framework/styling system: Dependency-free static HTML/CSS/JS.
- Design-token constraints: CSS variables in `styles.css`.
- Performance constraints: One generated image and one CV PDF; no external scripts.
- Compatibility constraints: Modern browsers with CSS grid/flex support.
- Test/screenshot expectations: Validate file presence, HTML sanity, local server response, and visual screenshot when possible.

## Open questions
- [ ] Add exact Bilibili profile URL / owner: Yingzi / impact: connect section becomes fully external.
- [ ] Decide whether to publish phone numbers / owner: Yingzi / impact: privacy and recruitment contact behavior.
