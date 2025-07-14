# Product Requirements Document (PRD) for sorenfrederiksen.com

## 1. Overview
### 1.1 Project Summary
This PRD outlines the initial requirements for building a personal website at sorenfrederiksen.com. The website will serve as a platform to establish and grow Soren Frederiksen's personal brand, highlighting his professional background as a CTO and AI Architect. The site will be built using React for the frontend and hosted on Vercel for seamless deployment and scalability.

The initial focus is on a simple front page (homepage) to keep the site lightweight and easy to expand. Future pages (e.g., detailed portfolio, blog) will be added via separate PRDs. The homepage will feature Soren's name, a professional photo (provided by the user), LinkedIn information, and links to dedicated Contact and GitHub pages.

### 1.2 Goals
- Create a minimal, professional online presence that reflects Soren's expertise in AI, technology, and leadership.
- Ensure the site is responsive, fast-loading, and mobile-friendly.
- Facilitate easy expansion into additional pages for personal branding (e.g., blog, projects).
- Integrate basic analytics (e.g., via Vercel) to track visitor engagement.

### 1.3 Target Audience
- Professional network: Recruiters, colleagues, potential collaborators in tech/AI.
- Personal brand followers: Anyone interested in Soren's insights on AI, process mining (via mindzie), and innovation.
- General visitors: Friends, family, or casual browsers.

### 1.4 Key Metrics for Success
- Site loads in under 2 seconds.
- 100% uptime via Vercel monitoring.
- Basic SEO: Homepage indexed on search engines with Soren's name and keywords like "CTO mindzie AI".

## 2. Scope
### 2.1 In Scope (Initial Release)
- Homepage with core elements: Name, photo, LinkedIn info, and navigation links.
- Basic navigation to Contact and GitHub pages (placeholders or simple implementations).
- React-based structure for easy future additions.
- Deployment on Vercel with custom domain (sorenfrederiksen.com).

### 2.2 Out of Scope (For Future PRDs)
- Full portfolio or blog sections.
- Advanced features like user authentication, e-commerce, or complex animations.
- Backend services (e.g., database for dynamic content); keep it static initially.
- Custom domain email setup (e.g., contact@sorenfrederiksen.com).

## 3. User Stories
As Soren Frederiksen (site owner):
- I want a simple homepage so visitors can quickly learn who I am and connect via LinkedIn.
- I want to upload my photo easily, so it displays prominently.
- I want links to Contact and GitHub pages, so visitors can reach me or view my projects.

As a visitor:
- I want to see Soren's name and photo immediately, so I know I'm on the right site.
- I want easy access to his LinkedIn profile, so I can view his full professional history.
- I want navigation to contact him or explore his GitHub, so I can engage further.

## 4. Functional Requirements
### 4.1 Homepage (/ or index)
- **Layout**: Minimalist design with centered content for a clean look.
  - Hero section: Display full name "Soren Frederiksen" in large, bold font.
  - Professional photo: Placeholder for user-provided image (e.g., headshot). Size: ~200-300px width, circular or square crop. Alt text: "Soren Frederiksen Profile Photo".
  - LinkedIn Information: Embed a brief summary pulled from LinkedIn (e.g., headline: "CTO & AI Architect at mindzie | Every breakthrough starts with asking the right why."). Include a prominent button/link to https://www.linkedin.com/in/sorenfrederiksen/ (e.g., "Connect on LinkedIn").
  - Navigation Links: Buttons or menu items linking to:
    - /contact: A simple contact page.
    - /github: A page for GitHub-related content.
- **Content Details**:
  - Name: "Soren Frederiksen"
  - LinkedIn Link: https://www.linkedin.com/in/sorenfrederiksen/
  - Optional Brief Bio: "Hands-on CTO and AI Architect based in Toronto, Ontario, Canada. Founder at mindzie, with a background in Electrical Engineering from DTU - Technical University of Denmark."
- **Tech Stack**: React components (e.g., use React Router for navigation). Keep bundle size small (<500KB initial load).

### 4.2 Contact Page (/contact)
- Simple form for visitors to send messages (name, email, message fields).
- Submission: Use a service like Formspree or Vercel Serverless Functions to email submissions to Soren's address (to be provided).
- Alternative: Display contact info (e.g., email if provided) without a form.
- Back link to homepage.

### 4.3 GitHub Page (/github)
- Display links to GitHub profile (if provided; assume https://github.com/[username] – user to confirm).
- Optionally: Embed or list key repositories (e.g., via GitHub API if dynamic content is added later).
- Placeholder: "Explore my open-source projects on GitHub" with a button to the profile.
- Back link to homepage.

### 4.4 Navigation
- Basic header or footer menu: Home | Contact | GitHub.
- Responsive: Mobile menu if needed (e.g., hamburger icon).

## 5. Non-Functional Requirements
### 5.1 Performance
- Page load time: <2 seconds on average connections.
- Optimize images and use lazy loading.

### 5.2 Design and UI/UX
- Theme: Professional, modern (e.g., sans-serif fonts like Inter or Roboto, neutral colors: white background, blue accents for links).
- Responsiveness: Fully mobile-friendly using CSS media queries or Tailwind CSS.
- Accessibility: ARIA labels, alt text for images, keyboard navigation.

### 5.3 Security
- HTTPS enforced via Vercel.
- No user data stored initially; form submissions handled securely.

### 5.4 SEO
- Meta tags: Title "Soren Frederiksen - CTO & AI Architect", description from bio.
- Sitemap.xml and robots.txt for crawling.

### 5.5 Hosting and Deployment
- Vercel: Auto-deploys from GitHub repo on pushes.
- Custom domain: sorenfrederiksen.com (user to set up DNS).

## 6. Assumptions and Dependencies
- User will provide: Professional photo, GitHub username/link, contact email.
- No backend needed initially; static site with React.
- Future expansions: Use React Router for additional routes.

## 7. Risks and Mitigations
- Risk: LinkedIn info changes – Mitigation: Make it easy to update via code edits.
- Risk: Photo not provided – Mitigation: Use placeholder image initially.
- Risk: Domain setup issues – Mitigation: Follow Vercel docs for custom domains.

## 8. Timeline and Milestones
- Week 1: Set up React project, implement homepage skeleton.
- Week 2: Add Contact and GitHub pages, integrate photo and links.
- Week 3: Deploy to Vercel, test, and go live.

This PRD can be iterated upon as the site grows. For future pages, create separate PRDs referencing this base.
