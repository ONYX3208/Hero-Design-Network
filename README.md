# Hero Design Network

Personal portfolio and services website for Hero Design Network.
Cyberpunk-themed — light background, deep purple, teal, orange, yellow accents.

**Stack:** Vanilla HTML5 / CSS3 / JS · Nginx · Docker

---

## Project Structure

```
herodesignnetwork/
├── index.html              ← Homepage (all major sections)
├── pages/
│   ├── services.html       ← Service tiers
│   ├── projects.html       ← Case studies
│   ├── about.html          ← Bio, credentials, FAQ
│   └── contact.html        ← Contact form
├── css/
│   └── style.css           ← All styles
├── js/
│   └── main.js             ← Nav, FAQ accordion, form
├── images/
│   ├── avatar.png          ← Cyberpunk avatar logo ✓
│   └── heidi.jpg           ← Your headshot (ADD THIS)
├── .vscode/                ← VS Code settings
├── Dockerfile
├── docker-compose.yml
├── nginx.conf
└── .gitignore
```

---

## Adding Your Photos

1. **Headshot** → save as `images/heidi.jpg`
   - Square crop recommended, min 600×600px
   - The About page loads it automatically

2. **Avatar logo** → already saved as `images/avatar.png`

---

## Run Locally in VS Code

### Option 1 — Open directly in browser (no server needed)
1. Open the `herodesignnetwork/` folder in VS Code
2. Right-click `index.html` → **Open with Live Server**
   - Install the **Live Server** extension if not already installed
   - Or just double-click `index.html` to open in browser

### Option 2 — VS Code Live Server
1. Install extension: `ritwickdey.liveserver`
2. Click **Go Live** in the bottom status bar
3. Opens at `http://localhost:5500`

---

## Docker

### Build and run
```bash
docker compose up --build
```
Site runs at → **http://localhost:8080**

### Stop
```bash
docker compose down
```

### Rebuild after changes
```bash
docker compose up --build --force-recreate
```

### Run in background (production mode)
```bash
docker compose up -d --build
```

---

## GitHub Setup

```bash
# Inside the herodesignnetwork/ folder:
git init
git add .
git commit -m "Initial Hero Design Network build"

# Create repo on github.com first, then:
git remote add origin https://github.com/YOUR_USERNAME/herodesignnetwork.git
git branch -M main
git push -u origin main
```

### Push updates
```bash
git add .
git commit -m "describe your change"
git push
```

---

## AWS Amplify Deployment

1. Push to GitHub (above)
2. Go to **AWS Amplify Console** → New App → Host Web App
3. Connect your GitHub repo
4. Build settings:
   - **Build command:** *(leave blank — static site)*
   - **Output directory:** `/` (root)
5. Click Deploy
6. Connect your custom domain: `herodesignnetwork.com`

---

## Contact Form

The contact form currently has no backend. To make it send emails:

### Option A — Formspree (free, easy)
1. Go to [formspree.io](https://formspree.io)
2. Create a free account → New Form
3. Copy your form endpoint (looks like `https://formspree.io/f/xxxxxxxx`)
4. In `pages/contact.html`, update the form tag:
   ```html
   <form class="contact-form" action="https://formspree.io/f/xxxxxxxx" method="POST">
   ```

### Option B — Netlify Forms
If hosting on Netlify, add `netlify` attribute to the form tag — works automatically.

---

## Color Reference

```css
--bg:           #f4f2ff   /* Page background (light purple-white) */
--purple-deep:  #1a0a2e   /* Primary dark (nav, footer, dark sections) */
--purple-mid:   #2d1b69   /* Secondary dark (borders, accents) */
--teal:         #00c9b1   /* Primary accent (buttons, labels, highlights) */
--teal-bright:  #00e5cc   /* Hover teal */
--orange:       #ff6b00   /* CTA / accent */
--yellow:       #f5c518   /* Detail accent */
```

---

## Fonts

Loaded from Google Fonts (internet connection required for local preview):
- **Orbitron** — headings, logo, numbers
- **Rajdhani** — body text, nav
- **Share Tech Mono** — labels, code, monospace elements

---

© 2026 Hero Design Network. All Systems Operational.
