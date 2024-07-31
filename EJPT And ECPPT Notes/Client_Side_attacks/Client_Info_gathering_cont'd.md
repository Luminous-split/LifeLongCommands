## Client Fingerprinting
- Client fingerprinting is an active client information gathering technique used to gather information about a target system's web browser and underlying operating system in order to aid in the development of tailor made (client specific) payloads for initial access.
- Client fingerprinting plays an important role in the success of a client-side attack as it provides the attacker with accurate information of the client-side software running on the target's/employee's computer.
- In the context of client-side information gathering, it allows us to identify key information about the client-side software running on the targets) system. For example, browser and browser version, OS and system architecture etc.

## Browser Fingerprinting
- Browser fingerprinting is an active information gathering technique that leverages client-side scripting languages like JavaScript to extract information about the target's browser and underlying operating system.
- In order to perform this technique, you will need to purchase a domain and set up a fictitious web page that runs a specific JavaScript script/code when users visit the webpage.
- This JavaScript code can be embedded into the homepage of the website and should log/send the browser fingerprint of users who visit the web page.
- In order for this client-side information gathering technique to work, the target's/employee's browser must be able to run the typical client-side code used in modern web pages. For example, JavaScript.
- All modern web browsers support the execution of client-side
- JavaScript, however, some privacy-focused browsers have the ability to block the execution of JavaScript code unless specified otherwise.
- Our primary objective is to identify the following information:
• Web Browser
• Web Browser Version
• Plugins/Extensions
• Underlying OS information (OS, OS Version, System architecture etc).
- Browser Fingerprinting Tools/Libraries
- We can easily generate our browser fingerprinting webpage by leveraging existing JavaScript libraries like fingerprintjs2.
- fingerprintjs2 is a modern and flexible browser fingerprinting library that enumerates a lot of useful information about a browser and the underlying operating system.
- You can learn more about fingerprintjs2 here:
- https://github.com/LukasDrgon/fingerprintjs2
