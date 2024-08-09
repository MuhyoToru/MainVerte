//
//  JustifiedTextViewContainer.swift
//  MainVerte_V002
//
//  Created by Apprenant 166 on 05/08/2024.
//

import UIKit

class JustifiedTextViewContainer: UIView {
    private let textView: UITextView
    private var minHeight: CGFloat
    private var maxHeight: CGFloat
    private var fontSize: CGFloat
    private var fontWeight: UIFont.Weight
    private var textColor: UIColor
    private var isEditable: Bool

    // Paramètres pour les coins arrondis
    private var topLeftRadius: CGFloat
    private var topRightRadius: CGFloat
    private var bottomLeftRadius: CGFloat
    private var bottomRightRadius: CGFloat

    var onTextChanged: ((String) -> Void)?

    init(frame: CGRect = .zero,
         minHeight: CGFloat = 40,
         maxHeight: CGFloat = 270,
         fontSize: CGFloat = 18,
         fontWeight: UIFont.Weight = .regular,
         textColor: UIColor = .mvBlack,
         backgroundColor: UIColor = .clear,
         isEditable: Bool = false,
         topLeftRadius: CGFloat = 0,
         topRightRadius: CGFloat = 0,
         bottomLeftRadius: CGFloat = 0,
         bottomRightRadius: CGFloat = 0) {
        self.textView = UITextView()
        self.minHeight = minHeight
        self.maxHeight = maxHeight
        self.fontSize = fontSize
        self.fontWeight = fontWeight
        self.textColor = textColor
        self.isEditable = isEditable

        self.topLeftRadius = topLeftRadius
        self.topRightRadius = topRightRadius
        self.bottomLeftRadius = bottomLeftRadius
        self.bottomRightRadius = bottomRightRadius
        super.init(frame: frame)
        self.backgroundColor = backgroundColor
        self.layer.backgroundColor = backgroundColor.cgColor
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        textView.font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
        textView.textColor = textColor
        textView.textAlignment = .justified
        textView.backgroundColor = .clear
        textView.isScrollEnabled = true
        textView.isEditable = isEditable
        textView.delegate = self
        textView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textView)

        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: trailingAnchor),
            textView.topAnchor.constraint(equalTo: topAnchor),
            textView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        adjustHeightToFitContent()
        applyCornerRadius()
    }

    private func adjustHeightToFitContent() {
        let sizeThatFits = textView.sizeThatFits(CGSize(width: textView.frame.size.width, height: CGFloat.greatestFiniteMagnitude))
        let newHeight = min(max(sizeThatFits.height, minHeight), maxHeight)
        textView.isScrollEnabled = newHeight >= maxHeight
        textView.frame.size.height = newHeight
        self.invalidateIntrinsicContentSize()
    }

    private func applyCornerRadius() {
        let path = UIBezierPath(
            roundedRect: bounds,
            byRoundingCorners: [.topLeft, .topRight, .bottomLeft, .bottomRight],
            cornerRadii: CGSize(width: 0, height: 0)
        )
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: min(max(textView.contentSize.height, minHeight), maxHeight))
    }

    func setText(_ text: String) {
        textView.text = text
        layoutIfNeeded()
        adjustHeightToFitContent()
    }
}

extension JustifiedTextViewContainer: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        onTextChanged?(textView.text)
    }
}


