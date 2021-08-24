The solution is to add a system override for Mandatory ASLR, as the unity installer won't work with it.

* Go to "Windows Security"
* App & browser control
* Exploit protection settings
* Program settings
* Add program to customise, choose the unity download assistant, e.g. UnityDownloadAssistant-2019.2.12f1.exe
* Find "Force randomisation for images (Mandatory ASLR)"
* Click override system settings, then turn the slider off
* Click apply
* Repeat this process for UnitySetup64.exe as well, because that also needs an exception.


*Kaynak: taviso, https://forum.unity.com/threads/unity-hub-not-installing-the-editor-on-windows-10.724400/#post-5169140*
