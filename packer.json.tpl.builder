{{define "builder"}}
        "iso_url": "{{.IsoURL}}",
        "iso_checksum_type": "{{.IsoChecksumType}}",
        "iso_checksum": "{{.IsoChecksum}}",
        "headless": {{.Headless}},
        "boot_wait": "2m",
        {{ if eq .Communicator "ssh" }}
        "ssh_username": "{{.Username}}",
        "ssh_password": "{{.Password}}",
        "ssh_wait_timeout": "8h",
        {{ else }}
        "communicator": "winrm",
        "winrm_username": "{{.Username}}",
        "winrm_password": "{{.Password}}",
        "winrm_timeout": "8h",
        {{ end }}
        "shutdown_command": "shutdown /s /t 10 /f /d p:4:1 /c \"Packer Shutdown\"",
        "disk_size": {{.DiskSize}},
        "floppy_files": [
          "./Autounattend.xml",
          "./scripts/hotfix-KB3102810.bat",
          "./scripts/fixnetwork.ps1",
          "./scripts/microsoft-updates.bat",
          "./scripts/win-updates.ps1",
          "./scripts/openssh.ps1",
          "./scripts/winrm.ps1",
          "./scripts/oracle-cert.cer"
        ],
{{end}}
