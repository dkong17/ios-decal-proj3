//
//  PhotoCollectionViewCell.swift
//  Photos
//
//  Created by David Kong on 4/12/16.
//  Copyright © 2016 iOS DeCal. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    var pImageView : UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        pImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height))
        pImageView.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(pImageView)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
