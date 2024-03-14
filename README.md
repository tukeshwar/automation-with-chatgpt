# automation-with-chatgpt

The objective of this project is to automat the work through the implementation of ChatGPT Integration. 
This is achieved by integrating ChatGPT with AutoHotKey (https://www.autohotkey.com/) to facilitate the triggering of integration flows through keyboard shortcuts.

A potential application for this feature is the ability to rephrase text within various applications, such as web browsers, gmail, outlook or any app equipped with a text editor.
For instance, the entirety of the text you are currently reading has been rephrased through the utilization of this particular project.

# Minimum requirements:
- Windows operating system (Will add for MacOS soon)
- AutoHotKey software
- SpringBoot application (to be eliminated in the future)
- In order for the SpringBoot Integration App to be authenticated by the ChatGPT API, it is required to configure the ChatGPT authentication key as an environment variable.

# How to run or setup
1) Begin by installing the AutoHotKey software on your system.
2) Execute the script located at .\scripts\autohotkey\AI.ahk.
3) Launch the SpringBoot application included within this repository.
4) Choose the specific text that you wish to rephrase from any text editor.
5) Utilize the designated key (F3, which can be customized in the AI.ahk script) to initiate the rephrasing process.
6) If needed, revert back to the original text by pressing CTRL+Z (undo).

# Key Mappings
  F3 - Please rephrase the selected text in a professional manner.

# Caution 
  This will overwrite your current clipboard contents. 
  Enabling multiple clipboards is recommended to avoid overwriting your current clipboard contents.

#  Current flow 
      App's text editor > AutoHotKey > SprintBoot Integration >  ChatGPT APIs
# Future Flow
      App's text editor > AutoHotKey >  ChatGPT APIs

# Note
  The F3 key now includes the capability to rephrase text in a professional manner. Additional features will be added in the near future.

# Facing issue
  Please leave a comment detailing the issue, and I will gladly investigate further.
