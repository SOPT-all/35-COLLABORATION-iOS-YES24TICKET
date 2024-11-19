//
//  MainFooterView.swift
//  Yes24Ticket
//
//  Created by 조성민 on 11/20/24.
//

import UIKit

final class MainFooterView: UICollectionReusableView {
    
    private var maxIndex: Int?
    
    private lazy var indexLabel = UILabel().then {
        $0.font = .customFont(.caption_b_10)
        $0.textColor = .white0
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setStyle()
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setStyle() {
        backgroundColor = .whiteDim
        layer.cornerRadius = 10
    }
    
    private func setUI() {
        addSubview(indexLabel)
    }
    
    private func setLayout() {
        indexLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    func changeIndex(currentIndex: Int) {
        if let maxIndex {
            indexLabel.text = "\(currentIndex)/\(maxIndex)"
        } else {
            indexLabel.text = ""
        }
    }
    
    func setMaxIndex(_ maxIndex: Int) {
        self.maxIndex = maxIndex
    }
    
}
