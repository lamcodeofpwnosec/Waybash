# Waybash
The Wayback URLs Crawler is a Bash script designed to automate the process of collecting archived URLs from the Wayback Machine for a specified target domain. By leveraging the Wayback Machine's API, the script fetches historical data about a target website, which can be particularly useful for security researchers, penetration testers, digital archivists, or anyone interested in examining past versions of a website.

The script retrieves a list of URLs that have been archived over time, offering a snapshot of the site's historical content. This data can help identify past security vulnerabilities, track content changes, or recover lost web pages. The resulting list of URLs is saved to a text file, allowing for easy analysis and further processing.

## Key Features
 * Automated URL Crawling: Fetches archived URLs from the Wayback Machine based on the target domain.
 * Historical Data Analysis: Allows users to explore past versions of a website for research or vulnerability assessment.
 * Output Filtering and Formatting: The retrieved data is processed to remove duplicates and format the output for better readability.
 * Simple to Use: Written in Bash, the script is straightforward and can be run on most Unix-based systems (Linux, macOS).

## Installation and Setup
**Prerequisites**
 * The script requires a Unix-based operating system (Linux, macOS, or WSL on Windows).
 * `curl`, `sed`, and `tee` should be installed on the system (most Unix-based systems come with these tools by default).

## Steps to Install and Run
You can now use `./wayback.sh -help` to display the help menu and description for each feature. Each feature is now modular and easy to maintain or expand.


1. Clone or Download the Script
```
git clone https://github.com/lamcodeofpwnosec/Waybash.git
cd Waybash
```
2. Make the Script Executable
Ensure the script has executable permissions.
```
chmod +x wayback_crawler.sh
```
3. Run the Script
Execute the script and provide the target domain when prompted.
```
./wayback_crawler.sh
```
Enter the domain name (e.g., `example.com`) when prompted. The script will retrieve archived URLs and save the results in a file named `example.com.txt`.
4. Check the Output
  * After the script finishes running, the results will be stored in a text file named after the target domain (e.g., `example.com.txt`).
  * You can open this file with a text editor or use command-line tools to analyze the data.
```
cat example.com.txt
```
[![asciicast](https://asciinema.org/a/681742.svg)](https://asciinema.org/a/681742)

> [!NOTE]
> Copyright [©lamcodeofpwnosec](https://github.com/lamcodeofpwnosec/)
