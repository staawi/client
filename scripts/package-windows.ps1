Write-Output "$WINDOWN_PFX"
Move-Item -Path $WINDOWS_PFX -Destination stawi.pem
certutil -decode stawi.pem stawi.pfx

flutter pub run msix:create -c stawi.pfx -p $WINDOWS_PFX_PASS --sign-msix true --install-certificate false
