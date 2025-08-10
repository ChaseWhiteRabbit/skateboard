# Rift Skateboard Replica

A perfect standalone replica of the 3D skateboard element from the original Rift app at https://rift.wtf/. This project recreates the holographic skateboard with exact rotation, scroll-linked camera movement, and environment mapping.

## 🛹 Features

- **Exact 3D Skateboard**: Loaded from the original skateboard.obj model
- **Holographic Materials**: Real-time cube camera environment mapping
- **Scroll-Linked Animation**: Camera movement follows scroll position exactly like the original
- **Continuous Rotation**: Skateboard rotates on X-axis at -0.02 per frame
- **Responsive Design**: Adaptive positioning and scaling for all screen sizes
- **Environment Mapping**: Beautiful reflective surfaces using cube camera
- **Self-Contained**: No external CDN dependencies, works offline

## 📁 Project Structure

```
skateboard_rift_replica/
├── standalone.html         # 🎯 Recommended - Clean, self-contained version
├── index.html             # 📋 Full-featured version with additional effects
├── README.md              # This documentation
├── server.py              # Python HTTP server for local development
├── run.sh                 # Quick launch script (Unix/Mac)
├── three.min.js           # Local Three.js library
├── OBJLoader.js           # Three.js OBJ loader
├── skateboard.obj         # Original 3D skateboard model (3MB)
├── environment.jpg        # Original environment texture (74KB)
├── fresh_environment.jpg  # Enhanced environment texture
└── Supporting files:
    ├── original_C.jpg     # Original Rift environment texture
    ├── original_rift.html # Original Rift app source
    ├── original_app.js    # Original Rift JavaScript
    └── original_style.css # Original Rift styles
```

## 🚀 Usage

### Method 1: Quick Launch (Recommended)
```bash
# Unix/Mac - One command to start everything
./run.sh
```

### Method 2: Manual Server
```bash
# Start the HTTP server
python3 server.py

# Then open in browser:
# http://localhost:8005/standalone.html  (recommended)
# http://localhost:8005/index.html      (full-featured)
```

### Method 3: Direct File Opening
```bash
# Open directly (may have CORS restrictions)
open standalone.html
```

## 🎮 Interaction

- **Scroll**: Move your mouse wheel or trackpad to scroll up/down
- **Camera Movement**: The camera Y position follows your scroll exactly like the original
- **Automatic Rotation**: The skateboard rotates continuously without user input
- **Responsive**: Resize your window to see adaptive positioning

## 🔧 Technical Implementation

### Core Technologies
- **Three.js**: 3D graphics and animation engine
- **OBJLoader**: Loads the original skateboard.obj 3D model
- **CubeCamera**: Real-time environment reflections
- **MeshPhongMaterial**: Reflective material with environment mapping

### Key Features
- **Exact Original Logic**: Pixel-perfect recreation of scroll-camera mapping
- **Responsive Breakpoints**: Matches original screen size adaptations
- **Environment Skybox**: Massive sphere with environment texture on all faces
- **Real-time Reflections**: Cube camera updates every frame for dynamic reflections

### Performance
- **60fps Animation**: RequestAnimationFrame for smooth rendering
- **Optimized Rendering**: Efficient cube camera updates
- **Memory Efficient**: Proper texture and geometry management

## 📱 Responsive Breakpoints

The skateboard positioning adapts exactly like the original:

| Screen Width | Position (x, y) | Scale |
|--------------|----------------|-------|
| < 420px      | (1.6, -3.38)   | 1.3x  |
| < 770px      | (1.0, -2.30)   | 1.2x  |
| < 1050px     | (1.0, -1.30)   | 1.0x  |
| < 1500px     | (0.0, -3.80)   | 1.3x  |
| < 1550px     | (0.0, -3.70)   | 1.3x  |
| ≥ 1550px     | (0.0, -3.50)   | 1.3x  |

## 🌐 Browser Support

Works in all modern browsers with WebGL support:
- ✅ Chrome 60+
- ✅ Firefox 55+  
- ✅ Safari 12+
- ✅ Edge 79+

## 📦 Dependencies

- **Three.js** (included locally as `three.min.js`)
- **Python 3** (for the optional local server)
- **Modern web browser** with WebGL support

## ✨ Self-Contained Features

This project is completely standalone:
- ✅ **No external CDN dependencies** - All libraries included locally
- ✅ **All assets included** - 3D models, textures, scripts
- ✅ **Works offline** - Once downloaded, no internet required  
- ✅ **Easy deployment** - Copy folder anywhere and run
- ✅ **Cross-platform** - Works on Mac, Windows, Linux

## 🎯 Versions

### `standalone.html` (Recommended)
- Clean, focused implementation
- Only essential features
- Better performance
- Easier to understand code
- Perfect replica of core skateboard functionality

### `index.html` (Full-Featured)
- Includes additional visual effects
- Letter "T" animation
- More complex scroll interactions
- Matches original Rift app more closely
- Larger file size

## 🔍 Original Rift App Analysis

This replica is based on analysis of the original Rift Chrome app:
- **Source Location**: `/Users/tiaastor/Applications/Chrome Apps.localized/Rift.app`
- **Key Files Analyzed**: `3d.js`, `app.js`, `style.css`
- **Assets Extracted**: `skateboard.obj`, `environment.jpg`
- **Logic Recreated**: Exact camera movement, rotation speed, positioning

## 🏆 Perfect Replication

This project achieves pixel-perfect replication of:
- ✅ Skateboard rotation speed (-0.02 per frame)
- ✅ Scroll-to-camera movement ratios
- ✅ Responsive positioning breakpoints  
- ✅ Environment mapping and reflections
- ✅ Loading states and progress indicators
- ✅ Visual styling and effects

## 🛠️ Development

To modify or extend this project:

```bash
# Start development server
python3 server.py

# Edit files with your favorite editor
# Browser will auto-reload on file changes
```

## 📝 License

This is a replica/recreation project for educational purposes. The original Rift app and its assets are property of their respective owners.

---

**🚀 Ready to experience the Rift skateboard? Run `./run.sh` and open your browser!**
