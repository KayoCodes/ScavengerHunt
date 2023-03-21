//
//  TaskTableViewCell.swift
//  Scavenger Hunt
//
//  Created by keenan ray on 3/19/23.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var taskImage: UIImageView!
    
    @IBOutlet weak var taskNames: UILabel!
    func configure(with task: Task) {
        taskNames.text = task.name
        taskNames.textColor = task.isComplete ? .secondaryLabel : .label
        taskImage.image = UIImage(systemName: task.isComplete ? "circle.inset.filled" : "circle")?.withRenderingMode(.alwaysTemplate)
        taskImage.tintColor = task.isComplete ? .systemBlue : .tertiaryLabel
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
