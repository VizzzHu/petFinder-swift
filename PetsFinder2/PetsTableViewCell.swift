//
//  PetsTableViewCell.swift
//  PetsFinder2
//
//  Created by Xianlin Hu on 9/15/17.
//  Copyright © 2017 Xianlin Hu. All rights reserved.
//

import UIKit

class PetsTableViewCell: UITableViewCell {
    
    // Mark: Properties
    @IBOutlet weak var PetPhoto: UIImageView!
    @IBOutlet weak var PetName: UILabel!
    @IBOutlet weak var PetBreed: UILabel!
    @IBOutlet weak var PetColor: UILabel!
    @IBOutlet weak var petFoundControl: FoundControl!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
