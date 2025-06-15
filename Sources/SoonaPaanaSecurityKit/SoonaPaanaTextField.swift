//
//  SoonaPaanaTextField.swift
//  SoonaPaanaSecurityKit
//
//  Created by G2-216 on 15/06/25.
// new change added.

import UIKit

public class SoonaPaanaTextField: UITextField {
    private var realText: String = ""

    override public var text: String? {
        get { return realText }
        set {
            realText = newValue ?? ""
            super.text = SoonaPaanaConfuser.confuse(realText)
        }
    }

    public override func awakeFromNib() {
        super.awakeFromNib()
        Task { @MainActor in
            self.setup()
        }
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        Task { @MainActor in
            self.setup()
        }
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        Task { @MainActor in
            self.setup()
        }
    }

    private func setup() {
        autocorrectionType = .no
        spellCheckingType = .no
        autocapitalizationType = .none
        addTarget(self, action: #selector(textChanged), for: .editingChanged)
        enableLongPressReveal()
    }

    @objc private func textChanged() {
        guard let currentText = super.text else { return }

        if currentText.count > realText.count,
           let newChar = currentText.last {
            realText.append(newChar)
        } else if currentText.count < realText.count {
            realText = String(realText.prefix(currentText.count))
        }

        super.text = SoonaPaanaConfuser.confuse(realText)
    }

    public func getRealText() -> String {
        return realText
    }

    private func enableLongPressReveal() {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(revealTemporarily))
        self.addGestureRecognizer(longPress)
    }

    @objc private func revealTemporarily(_ sender: UILongPressGestureRecognizer) {
        switch sender.state {
        case .began:
            super.text = realText
        case .ended, .cancelled:
            super.text = SoonaPaanaConfuser.confuse(realText)
        default: break
        }
    }
}
