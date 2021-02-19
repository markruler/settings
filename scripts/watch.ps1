# Find-Module -Name Watch | Install-Module -Scope CurrentUser -Confirm:$False -Force
# Watch-Command -ScriptBlock {
#   kubectl get po -A;
# } -Continuous -Verbose -Seconds 2 -AsString

while ($true) { minikube addons list | Out-Host; Sleep 2; Clear }