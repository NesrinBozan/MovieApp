//
//  MovieHomeCell.swift
//  MovieBox
//
//  Created by Nesrin Bozan on 6.08.2022.
//

import UIKit
import SnapKit

final class MovieHomeCell: UITableViewCell {
    
    // MARK: - UI Elements
    private let cellImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    private let cellNameLabel: UILabel = {
        
        let label = UILabel()
        return label
    }()
    
    private let cellOverView: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // MARK: - Life Cycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been imlemented")
    }
    
    //MARK: - Cell Identifier
    enum Identifier: String {
        case custom = "cell"
    }

}
// MARK: - Extensions
extension MovieHomeCell {
    func configure(){
        cellSubviews()
    }
    
    func cellSubviews(){
        addSubview(cellImageView)
        addSubview(cellNameLabel)
        addSubview(cellNameLabel)
        
    }
     

}
