Test Holodeck VR Creation Kit
=============================

This repository is a quick test of how we could possibly deliver the Holodeck VR Creation Kit (Holodeck Editor) through GitHub.

To test, simply clone or download, then run GetVRCreationKit.bat.  It will download Notepad.exe from the CDN server, thus representing the "VR Creation Kit" being deployed to a user.

*NOTE:* An optimization would be to store the the entire editor and content in a single 7z file and store it on the CDN server.  Then we could unzip it after using GitDependencies to fetch it.