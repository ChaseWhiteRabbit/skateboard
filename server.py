#!/usr/bin/env python3
import http.server
import socketserver
import os
import sys

# Change to the script's directory
os.chdir(os.path.dirname(os.path.abspath(__file__)))

PORT = 8005

class CustomHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Cache-Control', 'no-cache, no-store, must-revalidate')
        self.send_header('Pragma', 'no-cache')
        self.send_header('Expires', '0')
        super().end_headers()

def main():
    handler = CustomHTTPRequestHandler
    
    try:
        with socketserver.TCPServer(("", PORT), handler) as httpd:
            print(f"🛹 Rift Skateboard Replica Server")
            print(f"📂 Serving: {os.getcwd()}")
            print(f"🌐 URL: http://localhost:{PORT}")
            print(f"📱 Or: http://127.0.0.1:{PORT}")
            print("⏹️  Press Ctrl+C to stop")
            print("-" * 50)
            print("🎯 Open standalone.html for the best experience")
            print("📋 Or index.html for the full-featured version")
            httpd.serve_forever()
    except KeyboardInterrupt:
        print("\n🛑 Server stopped")
        sys.exit(0)
    except OSError as e:
        if e.errno == 48:  # Address already in use
            print(f"❌ Port {PORT} is already in use")
            print("Try a different port or stop the other server")
        else:
            print(f"❌ Error starting server: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
