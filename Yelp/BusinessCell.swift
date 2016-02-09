//
//  BusinessCell.swift
//  Yelp
//
//  Created by Quintin Frerichs on 2/9/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingsImageView: UIImageView!
    @IBOutlet weak var thumImageView: UIImageView!
    var business: Business!{
        didSet{
            nameLabel.text = business.name
            addressLabel.text = business.address
            reviewLabel.text = "\(business.reviewCount) Reviews"
            distanceLabel.text = business.distance
            thumImageView.setImageWithURL(business.imageURL!)
            ratingsImageView.setImageWithURL(business.ratingImageURL!)
            foodLabel.text = business.categories
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        thumImageView.layer.cornerRadius = 3
        thumImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth =  nameLabel.frame.size.width
        
    }
    override func layoutSubviews(){
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth =  nameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
