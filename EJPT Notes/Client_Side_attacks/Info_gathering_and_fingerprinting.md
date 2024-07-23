## Osint
- Examples: Searching social media platforms (e.g., LinkedIn, Twitter) for employee profiles, company information, or job postings.
- Browsing public forums or websites for discussions about the organization or its technologies.
- Tools: Google Dorks for advanced search queries, Maltego for data visualization and link analysis, theHarvester for email harvesting.

## Search Engine Reconnaissance
- Examples: Using advanced search queries on search engines like Google to discover publicly available information about target individuals, organizations, or systems.
- Tools: Google Search operators, Shodan search engine, DuckDuckGo.

## Client Fingerprinting
- Client fingerprinting is a technique used to gather information about a user's web browser and software stack in order to aid in the development of tailor made (client specific) payloads for initial access.
- In the context of client-side information gathering, client fingerprinting can be used to identify key information about the client-side software running on the target(s) system. For example, browser and browser version, OS and system architecture etc.

## Social Engineering:
- Examples: Engaging with target individuals or employees through phone calls, emails, or other communication channels to gather sensitive information, credentials, or access permissions.
- Tools: Social engineering toolkits like SET (Social-Engineer Toolkit),
PhishMe, BeEF (Browser Exploitation Framework).

## Scenario: Leveraging Social Engineering for Active Client Information Gathering
- Alice, a penetration tester, is targeting a specific company, Acme Corporation, to gather information about their internal systems and software configurations.
- She has decided to use client-side attacks to gain initial access to the target network.
- Alice plans to use social engineering techniques to extract valuable information from the company's employees regarding their client-side software without raising suspicion.

- 1. Research and Preparation:
Alice conducts reconnaissance on Acme Corporation's website and discovers a job opening for a position relevant to her cover story. She learns that the company has an online resume upload functionality for job applications.
- 2. Initiating Contact:
Alice creates a fictitious persona named Sarah Johnson and submits a resume to Acme Corporation's website using the resume upload feature.
The resume contains an embedded macro that triggers an error when opened, simulating a corrupted document.
- 3. Response from the Company
- Acme Corporation's HR department receives Sarah Johnson's resume but encounters an issue when attempting to open the document
- Suspecting a technical problem, they reach out to Sarah via email, informing her of the issue and requesting a re-submission or
- 4. Exploiting the Opportunity
- Alice, posing as Sarah, receives the email from Acme Corporation's HR department. Seizing the opportunity, she responds promptly, expressing concern and offering assistance.
- She then asks a seemingly innocuous question: "Could you please let me know the version of Microsoft Word your team is using? I want to ensure compatibility with future submissions 
- 5. Information Gathering
- Acme Corporation's HR representative, unaware of the malicious intent, responds to Sarah's inquiry, providing details about the company's Microsoft Word version.
- 6. Analysis & Resource Development
- Alice, now equipped with information about Acme Corporation's Microsoft Word version, uses this information to identify potential vulnerabilities or compatibility issues.
- She may also use it to tailor future social engineering attacks or craft malicious payloads targeting specific software versions (Malicious Word Document)
  
