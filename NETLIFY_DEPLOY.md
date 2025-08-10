# Netlify Deployment Instructions

## Files for Netlify Deployment

This repository now includes everything needed for a Netlify deployment of the standalone skateboard:

### Main Files
- `netlify-skateboard.html` - Optimized standalone version for Netlify
- `netlify.toml` - Netlify configuration with headers, redirects, and optimizations
- All required dependencies: `three.min.js`, `OBJLoader.js`, `skateboard.obj`, `environment.jpg`

### Key Features of Netlify Version
- **Enhanced Error Handling**: Better error messages and graceful fallbacks
- **Performance Optimizations**: Scroll throttling, visibility API handling
- **SEO Optimized**: Meta tags, Open Graph, Twitter cards
- **Mobile Responsive**: Optimized for all screen sizes
- **Security Headers**: CSP, XSS protection, CSRF protection
- **Caching Strategy**: Optimized cache headers for static assets
- **Netlify Badge**: Links back to GitHub repository

## Deployment Options

### Option 1: Deploy via Netlify CLI
```bash
# Install Netlify CLI globally
npm install -g netlify-cli

# Login to Netlify
netlify login

# Deploy from this directory
netlify deploy --prod --dir=.
```

### Option 2: Deploy via GitHub Integration
1. Push this repository to GitHub (already done ✅)
2. Go to [Netlify Dashboard](https://app.netlify.com)
3. Click "New site from Git"
4. Connect to GitHub and select `ChaseWhiteRabbit/skateboard`
5. Leave build settings as default (static site)
6. Deploy!

### Option 3: Manual Drag & Drop
1. Zip all files in this directory
2. Go to [Netlify Dashboard](https://app.netlify.com)
3. Drag and drop the zip file

## Configuration Details

The `netlify.toml` includes:
- **Redirects**: `/skateboard` and `/demo` redirect to main page
- **404 Handling**: Serves main skateboard page for any missing routes
- **Headers**: Security and performance headers
- **Caching**: Aggressive caching for static assets, no cache for HTML
- **Content Types**: Proper MIME types for .obj files

## Post-Deployment

After deployment:
1. The skateboard will be available at your Netlify URL
2. All routes redirect to the main skateboard experience
3. Assets are cached for performance
4. The site includes a link back to this GitHub repository

## Expected Performance

- **Loading Time**: ~2-3 seconds for 3D model and textures
- **File Sizes**: 
  - `skateboard.obj`: ~3MB
  - `environment.jpg`: ~74KB
  - `three.min.js`: ~597KB
- **Mobile Optimized**: Responsive breakpoints for all devices
- **WebGL Support**: Graceful fallback for unsupported browsers

## Custom Domain (Optional)

To use a custom domain:
1. In Netlify dashboard, go to Site Settings → Domain Management
2. Add your custom domain
3. Update the Open Graph URL in `netlify-skateboard.html` if desired

The skateboard is ready for production deployment! 🚀
