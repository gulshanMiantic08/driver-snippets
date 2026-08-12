// Log when snippets are used (locally only)
const fs = require('fs');
const path = require('path');

function logSnippetUsage(snippetName) {
  const logPath = path.join(__dirname, 'usage.log');
  const logEntry = `${new Date().toISOString()} - ${snippetName}\n`;
  
  fs.appendFileSync(logPath, logEntry, 'utf8');
}

// Team can check which snippets are popular