//
//  CourseCell.swift
//  Networking
//
//  Created by Rose on 15.12.2022.
//

import UIKit

class CourseCell: UITableViewCell {
    @IBOutlet var courseImage: UIImageView!
    @IBOutlet var courseNameLabel: UILabel!
    @IBOutlet var numberOfLessond: UILabel!
    @IBOutlet var numberOfTests: UILabel!
    
    func configure(with course: Course) {
        courseNameLabel.text = course.name
        numberOfLessond.text = "Number of lessons: \(course.number_of_lessons ?? 0)"
        numberOfTests.text = "Number of tests: \(course.number_of_tests ?? 0)"
        DispatchQueue.global().async {
            guard let url = URL(string: course.imageUrl ?? "") else { return }
            guard let imageData = try? Data(contentsOf: url) else { return }
            DispatchQueue.main.async {
                self.courseImage.image = UIImage(data: imageData)
            }
        }
    }
}
