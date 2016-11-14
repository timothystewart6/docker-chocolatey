Chocolatey on (linux) Docker
============================

This runs the latest version of chocolatey that works under mono (0.9.9.12 as of this writing)
Newer versions of chocolatey use System.Management.Automation (I believe due to hosting their own powershell environment) and so can't be used under mono (the mono project [has said they won't support System.Management](http://www.mono-project.com/docs/about-mono/roadmap/))


