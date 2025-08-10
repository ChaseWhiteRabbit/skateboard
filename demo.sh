#!/bin/bash

echo "🛹 Rift Skateboard Replica Demo"
echo "================================="
echo ""
echo "Choose your experience:"
echo ""
echo "1️⃣  Standalone Version (Recommended)"
echo "   • Clean, focused implementation"
echo "   • Perfect skateboard replica"
echo "   • Better performance"
echo ""
echo "2️⃣  Full-Featured Version" 
echo "   • Includes letter T animation"
echo "   • More visual effects"
echo "   • Complete Rift experience"
echo ""
echo "3️⃣  Start Server Only"
echo "   • Manual browser navigation"
echo "   • Choose your own file"
echo ""

read -p "Enter your choice (1-3): " choice

case $choice in
    1)
        echo ""
        echo "🎯 Starting Standalone Skateboard..."
        python3 server.py &
        SERVER_PID=$!
        sleep 2
        open "http://localhost:8005/standalone.html" 2>/dev/null || echo "🌐 Open http://localhost:8005/standalone.html in your browser"
        echo ""
        echo "⏹️  Press Ctrl+C to stop the server"
        wait $SERVER_PID
        ;;
    2)
        echo ""
        echo "🎪 Starting Full-Featured Experience..."
        python3 server.py &
        SERVER_PID=$!
        sleep 2
        open "http://localhost:8005/index.html" 2>/dev/null || echo "🌐 Open http://localhost:8005/index.html in your browser"
        echo ""
        echo "⏹️  Press Ctrl+C to stop the server"
        wait $SERVER_PID
        ;;
    3)
        echo ""
        echo "🚀 Starting Server..."
        python3 server.py
        ;;
    *)
        echo ""
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac
