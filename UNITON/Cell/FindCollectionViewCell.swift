//
//  FindCollectionViewCell.swift
//  UNITON
//
//  Created by 이광용 on 2018. 1. 27..
//  Copyright © 2018년 이광용. All rights reserved.
//

import UIKit

class FindCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var writerLabel: UILabel!
    @IBOutlet weak var bookNameLabel: UILabel!
    
    var info: Book? {
        didSet{
            if let url = info?.image{
                self.thumbnailImageView.kf.indicatorType = .activity
                self.thumbnailImageView.kf.setImage(with: URL(string: url))
            }
            writerLabel.text = info?.author
            bookNameLabel.text = info?.title.replacingOccurrences(of: "</b>", with: "").replacingOccurrences(of: "<b>", with: "")
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
