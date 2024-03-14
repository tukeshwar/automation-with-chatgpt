# automation-with-chatgpt

The objective of this project is to automat the work through the implementation of ChatGPT Integration. 
This is achieved by integrating ChatGPT with AutoHotKey (https://www.autohotkey.com/) to facilitate the triggering of integration flows through keyboard shortcuts.

A potential application for this feature is the ability to rephrase text within various applications, such as web browsers, gmail, outlook or any app equipped with a text editor.
For instance, the entirety of the text you are currently reading has been rephrased through the utilization of this particular project.

# Minimum requirements:
- Windows operating system (Will add for MacOS soon)
- AutoHotKey software  
- SpringBoot application from this repo (to be eliminated in the future)
- In order for the SpringBoot Integration App to be authenticated by the ChatGPT API, it is required to configure the ChatGPT authentication key as an environment variable "spring.ai.openai.api-key". Further information is provided following sections.

# How to run or setup
1) Begin by installing the AutoHotKey software (https://www.autohotkey.com/) on your Windows system.
2) Execute the script located at .\scripts\autohotkey\AI.ahk.
3) Launch the SpringBoot application included within this repository. Additional information is provided below for initializing a Spring Boot application.
4) Select the specific text that you wish to rephrase from any text editor.
5) Utilize the designated key (F3, which can be customized in the AI.ahk script) to initiate the rephrasing process.
6) If needed, revert back to the original text by pressing CTRL+Z (undo).

# Key Mappings
  F3 - rephrase the selected text in a professional manner.

# Caution 
  This will overwrite your current clipboard contents. 
  Enabling multiple clipboards is recommended to avoid overwriting your current clipboard contents.

#  Current flow 
      App's text editor > AutoHotKey > SprintBoot Integration >  ChatGPT APIs
# Planned Flow
      App's text editor > AutoHotKey >  ChatGPT APIs

# Note
  The F3 key now includes the capability to rephrase text in a professional manner. Additional features will be added in the near future.
  
# Starting SpringBoot App
  A pre-built standalone executable JAR file can be found at the specified location "target/myai-0.0.1-SNAPSHOT.jar". 
  
  Please ensure that the environment variable is set accordingly. You can use below command on windows cmd  
      > set spring.ai.openai.api-key=<your generate OpenAI authentication token here>
      
  Then run below cammand to start SrpingBoot prject  
      > java -jar .\target\myai-0.0.1-SNAPSHOT.jar
      
  Java Enviroment used $ java -version  
                       -   openjdk version "17.0.10" 2024-01-16  
                       -  OpenJDK Runtime Environment Temurin-17.0.10+7 (build 17.0.10+7)  
                       -  OpenJDK 64-Bit Server VM Temurin-17.0.10+7 (build 17.0.10+7, mixed mode  
                          
  In the event of encountering a Java version error, it is recommended to regenerate the JAR file utilizing either Maven or Gradle.

# OpenAI Signup & token
  Create an account at OpenAI Signup : https://platform.openai.com/signup
  
  Please generate the token for storage as an environment variable "spring.ai.openai.api-key" from this   location - https://platform.openai.com/account/api-keys
  
# Facing issue
  Please leave a comment detailing the issue, and I will gladly investigate further.
