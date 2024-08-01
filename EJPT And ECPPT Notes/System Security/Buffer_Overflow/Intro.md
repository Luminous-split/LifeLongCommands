### Buffer Overflows
• In the previous course (System Security), we used the term "buffer overflow," numerous times. But what exactly does that mean?
• The term buffer is loosely used to refer to any area in memory where more than one piece of data is stored.
• An overflow occurs when we try to fill more data than the buffer can handle.
• A buffer overflow can be likened to pouring 5 gallons of water into a 4-gallon bucket.

![image](https://github.com/user-attachments/assets/b655a130-fac0-4308-87a6-fdb948677be3)

### Finding Bufferoverflow

![image](https://github.com/user-attachments/assets/01a8b2ff-3167-419c-9a9e-a25aaea87dbd)

### Fuzzing
- Fuzzing is a software testing technique that provides invalid data, i.e., unexpected or random data as input to a program.
- Input can be in any form such as:
- Command line
- Parameters
- Network data
- File input
- Databases
- Shared memory regions
- Keyboard/mouse input
- Environment variables

• In the context of finding buffer overflow vulnerabilities, fuzzing involves sending malformed or unexpected data to the target program's input (e.g., command-line arguments, file inputs, network packets) in an attempt to trigger buffer overflow errors.
• Buffer overflow vulnerabilities occur when a program writes data beyond the bounds of a buffer, potentially allowing an attacker to overwrite adjacent memory locations with malicious code or data.
• Fuzzing aims to identify such vulnerabilities by systematically testing various input combinations to see if they cause the program to crash or exhibit unexpected behavior.
• Whenever inconsistent behavior is found, all related information is collected, which will later be used by the operator to recreate the case and hunt-down/solve the problem.
• However, fuzzing is an exponential problem and is also resource-intensive, and therefore, in reality, it cannot be used to test all the cases
