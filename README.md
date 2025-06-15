<p align="center">
  <img src="https://github.com/user-attachments/assets/05128604-ff10-45c1-9495-33a96861f631" width="350" />
</p>

<h1 align="center">🛡️ SoonaPaanaSecurityKit</h1>

<p align="center">
  <strong>Looks like nonsense to others. Makes perfect sense to you.</strong><br/>
<em>SoonaPaana-style input obfuscation for privacy with personality</em>
</p>

---

##  The Problem - Shoulder Surfing

You're in a crowded place — typing an OTP, a note, or a juicy message or anything in your app's text interface  —  
and suddenly someone shoulder surfs or sneaks and you're like *Paathutaan daa!*  

People around you are reading over your shoulder.

## Inspired by
Vadivelu, Shoulder surfers, And a sprinkle of common sense.

## License: MIT 
Feel free to confuse freely.

## Real-world Use Cases
-  Building an interface for these and beyond,
-  Entering passwords or OTPs in public,
-  Writing private notes,
-  Simply confusing nosy co-passengers,co-workers etc..
-  just for fun!


  ![soona-paana](https://github.com/user-attachments/assets/036cebf5-ea0f-409d-9b90-20a2516fbcd9)

---

##  The Solution

**SoonaPaanaSecurityKit** is a simple, lightweight Swift package that lets you:

-  **Obfuscate** typed text in real-time (like `yt$%78&`)
-  **Reveal on long-press** — temporary, like a whisper
-  Works with both `UITextField` and `UITextView`
-  **No autocorrect or spellcheck** interference
-  Easily revert obfuscated text using a confuser logic
## Demo: 
https://github.com/vigneshios/SoonaPaanaLibraryDemoApp/tree/master

| Component             | Purpose                               |
| --------------------- | ------------------------------------- |
| `SoonaPaanaTextField` | For single-line secret input          |
| `SoonaPaanaTextView`  | For multi-line disguised typing       |
| `SoonaPaanaConfuser`  | Obfuscates and restores original text |

---

##  Installation

###  Swift Package Manager (SPM)

In Xcode:

1. Go to `File > Add Packages`
2. Paste this URL:  
   `https://github.com/vigneshios/SoonaPaanaSecurityKit.git`
3. Choose your project target.
4. Import the module where needed:  
   `import SoonaPaanaSecurityKit`
5. Use the custom components:  
   - `SoonaPaanaTextField`  
   - `SoonaPaanaTextView`

 **Long-press** the field to temporarily reveal the real text.

---

## Usage Example

```swift
let field = SoonaPaanaTextField()
field.placeholder = "Type something secret"

let textView = SoonaPaanaTextView()
textView.text = "Hide my story..."

---








