# Rambles of a Technologist in Business

Personal blog and website for Mayuresh Rajwadkar - a semiconductor and IT professional with expertise in design, development, and open source technologies.

🌐 **Live Site:** [https://www.rajwadkar.us/](https://www.rajwadkar.us/)

## About This Site

This is a static website built with [Hugo](https://gohugo.io/), a fast and flexible static site generator. The site features blog posts about technology, business, and personal experiences.

## Technology Stack

- **Static Site Generator:** Hugo v0.154.2+
- **Theme:** [Hugo Nederburg Theme](https://github.com/appernetic/hugo-nederburg-theme) (static version)
- **Hosting:** GitHub Pages
- **Deployment:** Git worktree workflow (hugo → master branches)

## Repository Structure

```
.
├── archetypes/          # Content templates
├── content/             # Blog posts and pages
│   ├── about/          # About page
│   ├── contact/        # Contact page
│   └── post/           # Blog posts
├── layouts/             # Template overrides
│   └── partials/       # Custom partial templates
├── static/              # Static assets (images, CSS, JS)
│   ├── css/            # Stylesheets
│   ├── img/            # Images
│   └── js/             # JavaScript
├── themes/              # Hugo themes
├── config.toml          # Site configuration
├── deploy.sh            # Deployment script
├── setup.sh             # Initial setup script
└── test.sh              # Local development server

```

## Local Development

### Prerequisites

- [Hugo](https://gohugo.io/installation/) v0.154.2 or later (extended version)
- Git

### Running Locally

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd rajwadkar.us
   ```

2. Start the development server:
   ```bash
   ./test.sh
   ```
   Or manually:
   ```bash
   hugo server -D --disableFastRender
   ```

3. Open your browser to [http://localhost:1313/](http://localhost:1313/)

The site will automatically reload when you make changes to content or templates.

## Deployment

This site uses a two-branch deployment strategy for GitHub Pages:

- **`hugo` branch** - Source files (content, templates, config)
- **`master` branch** - Generated static site (published to GitHub Pages)

### Deploy to GitHub Pages

1. Make your changes and commit them to the `hugo` branch:
   ```bash
   git add .
   git commit -m "Your commit message"
   git push origin hugo
   ```

2. Run the deployment script:
   ```bash
   ./deploy.sh
   ```

This script will:
- Check that your working directory is clean
- Build the site with Hugo
- Commit the generated files to the `master` branch
- Push to GitHub Pages

### Initial Setup

If setting up a new repository, run the setup script once:
```bash
./setup.sh
```

This creates the git worktree structure needed for deployment.

## Writing Content

### Create a New Post

```bash
hugo new post/my-new-post.md
```

This creates a new post in `content/post/` with the default frontmatter template.

### Frontmatter Format

Posts use TOML frontmatter:

```toml
+++
title = "Post Title"
date = "2026-01-03"
draft = false
categories = ["Technology"]
tags = ["hugo", "web"]
image = "/img/post-image.png"
+++

Your content here...
```

### Publishing Posts

Set `draft = false` in the frontmatter to publish a post. Draft posts are only visible when running `hugo server -D`.

## Configuration

Main site configuration is in `config.toml`:

- **Site metadata** - Title, description, author info
- **Social links** - Facebook, Twitter, LinkedIn, etc.
- **Navigation menus** - Header and footer links
- **Theme settings** - Pagination, copyright, custom parameters

## License

- **Content:** © 2026 Mayuresh Rajwadkar
- **Theme:** MIT License (Hugo Nederburg Theme)

## Contact

- **Email:** mmr-us@rajwadkar.us
- **LinkedIn:** [ememare](https://www.linkedin.com/in/ememare)
- **Twitter:** [@MayurRajwadkar](https://www.twitter.com/MayurRajwadkar)

---

Built with ❤️ using Hugo
