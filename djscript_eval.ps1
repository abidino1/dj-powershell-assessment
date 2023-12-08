# PowerShell script

# Function to get user input and print "You entered input"
function GetUserInput {
    $userInput = Read-Host "Enter something:"
    Write-Host "You entered: $userInput"
 }
 
 # Function to execute a command and print its output. It prints the Date in this case
 function ExecuteCommand {
    $commandOutput = Get-Date
    Write-Host "Command output: $commandOutput"
 }
 
 # Main script
 Write-Host "Choose an option:"
 Write-Host "1. Get user input and print output"
 Write-Host "2. Execute a command and print its output"
 
 $choice = Read-Host "Enter your choice (1 or 2):"
 
 # If user inputs 1 then it asks user to write "something" and it will output " You entered: "something"
 if ($choice -eq '1') {
    GetUserInput
 }
 # If user chooses 2 then ExecuteCommand function is executed
 elseif ($choice -eq '2') {
    ExecuteCommand
 }
 # If the user inputs something different from 1 or 2, it will output "Invalid choise. EXecuting."
 else {
    Write-Host "Invalid choice. Exiting."
 }