# List of services to manage
$services = @("sshd", "ssh-agent")

foreach ($service in $services) {
    # Start the service
    Write-Host "Starting the $service service..."
    Start-Service $service

    # Set the service to start automatically
    Write-Host "Setting the $service service to start automatically..."
    Set-Service -Name $service -StartupType 'Automatic'
}

Write-Host "Both 'OpenSSH Authentication Agent' and 'OpenSSH SSH Server' services have been set to start automatically and have been started."
