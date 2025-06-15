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

   
   https://www.google.com/url?sa=i&url=https%3A%2F%2Ftenor.com%2Fview%2Fsoona-paana-gif-22072380&psig=AOvVaw1xojBaCHSrIkb4K1MCWENs&ust=1750084166766000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCMjw2JzR840DFQAAAAAdAAAAABAE
