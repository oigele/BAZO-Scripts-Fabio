echo "Start pinging google"
ping google.com& PID=$!; sleep 3; kill $PID
echo "Pinged google."
