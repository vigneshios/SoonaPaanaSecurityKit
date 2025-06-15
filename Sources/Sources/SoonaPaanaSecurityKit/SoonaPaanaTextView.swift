//
//  SoonaPaanaTextView.swift
//  SoonaPaanaSecurityKit
//
//  Created by vignesh on 15/06/25.
//  updating with a new code

import UIKit

public class SoonaPaanaTextView: UITextView, UITextViewDelegate {
    private var realText: String = ""
    private var isRevealing = false

    public override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    @MainActor
    private func setup() {
        delegate = self
        autocorrectionType = .no
        spellCheckingType = .no
        autocapitalizationType = .none
        font = font ?? UIFont.systemFont(ofSize: 16) // Prevent NaN font issue
        enableLongPressReveal()
    }

    private func enableLongPressReveal() {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress))
        self.addGestureRecognizer(longPress)
    }

    @objc private func handleLongPress(_ sender: UILongPressGestureRecognizer) {
        switch sender.state {
        case .began:
            isRevealing = true
            self.text = realText
        case .ended, .cancelled:
            isRevealing = false
            self.text = SoonaPaanaConfuser.confuse(realText)
        default:
            break
        }
    }

    public func textViewDidChange(_ textView: UITextView) {
        guard !isRevealing else { return }

        // Calculate real text change
        if textView.text.count > realText.count {
            let newChar = textView.text.suffix(textView.text.count - realText.count)
            realText.append(contentsOf: newChar)
        } else if textView.text.count < realText.count {
            realText = String(realText.prefix(textView.text.count))
        }

        self.text = SoonaPaanaConfuser.confuse(realText)
    }

    public func getRealText() -> String {
        return realText
    }
}
