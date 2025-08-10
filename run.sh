#!/bin/bash

# Rift Skateboard Replica - Quick Launch Script
echo "🛹 Starting Rift Skateboard Replica..."
echo "📂 Project: skateboard_rift_replica"
echo ""

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    echo "✅ Python 3 found"
    echo "🌐 Starting server on http://localhost:8005"
    echo "⏹️  Press Ctrl+C to stop"
    echo ""
    echo "🎯 Recommended: Open http://localhost:8005/standalone.html"
    echo "📋 Alternative: Open http://localhost:8005/index.html"
    echo ""
    
    # Change to script directory
    cd "$(dirname "$0")"
    
    # Start the server
    python3 server.py
else
    echo "❌ Python 3 not found"
    echo "📖 Please install Python 3 or open standalone.html directly in your browser"
fi
