# Placer.ai Careers Site

A modern Jekyll careers site inspired by Ashby's clean, professional design.

## Features

- **Modern Design**: Clean, Ashby-inspired layout with excellent typography
- **Responsive**: Mobile-first design that works on all devices  
- **Job Management**: Easy job posting with structured frontmatter
- **Department Pages**: Organized job listings by department
- **SEO Optimized**: Proper meta tags and structured data

## Theme Structure

### Layouts
- `default.html` - Base layout with header/footer
- `jobs-list.html` - Department job listing pages
- `job.html` - Individual job posting pages

### Includes
- `header.html` - Site navigation
- `footer.html` - Site footer with links

### Styling
- Modern CSS with CSS variables for easy theming
- Ashby-inspired color scheme and typography
- Responsive grid layouts
- Smooth animations and hover effects

## Adding Jobs

Create a new markdown file in the appropriate department folder with this frontmatter:

```yaml
---
title: "Job Title"
description: "Brief job description for SEO"
layout: job
department: Engineering
location: "New York, NY"
type: "Full-time"
experience: "5+ years"
excerpt: "Short excerpt for job cards"
apply_url: "https://apply-link.com" # Optional, defaults to email
---

Job content in markdown...
```

## Development

### Local Setup
1. Install Ruby and Bundler
2. Run `bundle install` to install dependencies
3. Use the provided scripts:
   - `./serve.sh` - Start development server
   - `./build.sh` - Build for production

### Customization
- Colors and styling: Edit `assets/css/style.scss`
- Site configuration: Edit `_config.yml`
- Navigation: Edit `_includes/header.html`

## Deployment

The site is configured for GitHub Pages deployment. Push to the main branch to deploy automatically.

## Design Inspiration

This theme is inspired by Ashby's careers page design, featuring:
- Clean, modern typography using Inter font
- Subtle shadows and rounded corners
- Professional blue color scheme
- Excellent spacing and hierarchy
- Mobile-responsive design patterns