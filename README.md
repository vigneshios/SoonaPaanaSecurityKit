# 🛡️ SoonaPaanaSecurityKit

**Hide what you type, reveal only when you want.**  
Inspired by the need for private input in public spaces — and some Vadivelu-level humor 😄

---

## Problem

Ever needed to type sensitive information (like OTPs, passwords, or cheeky notes) while people were peeking?  
What if your screen showed gibberish instead — and only you could reveal it?

---

##  Solution

SoonaPaanaSecurityKit is a lightweight Swift library with:

-  `SoonaPaanaTextField`: Obfuscates typed characters in real-time
-  `SoonaPaanaTextView`: Same, but for multi-line input
-  `SoonaPaanaConfuser`: Simple logic to “confuse” and restore your text
-  Long-press to temporarily reveal the actual text
-  Auto-correct and spell check disabled

---

##  Installation
### Swift Package Manager (SPM)

In Xcode:
1. Go to `File > Add Packages`
2. Paste the repo URL: https://github.com/vigneshios/SoonaPaanaSecurityKit.git
3. Import SoonaPaanaSecurityKit
4. Subclass your class with SoonaPaanaTextField / SoonaPaanTextView.
5. Long-press on the field or text view to see the original text temporarily.
   
