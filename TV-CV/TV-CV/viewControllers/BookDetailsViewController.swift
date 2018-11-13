//
//  BookDetailsViewController.swift
//  TV-CV
//
//  Created by Zaw Zin Phyo on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class BookDetailsViewController: UIViewController {
    @IBOutlet weak var ivBook: UIImageView!
    
    @IBOutlet weak var lblBookTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblReleasedDate: UILabel!
    
    @IBOutlet weak var tvDescription: UILabel!
    
    var book : Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attrString = NSMutableAttributedString(string: book.description)
        var style = NSMutableParagraphStyle()
        style.lineSpacing = 1
        style.lineHeightMultiple = 1.3
        attrString.addAttribute(.paragraphStyle, value: style, range: NSMakeRange(0, attrString.length))
        tvDescription.attributedText = attrString
        
        ivBook.image = UIImage(imageLiteralResourceName: book.image)
        lblBookTitle.text = book.title
        lblAuthor.text = book.author
        lblReleasedDate.text = book.releasedDate
        tvDescription.text = book.description
        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: UIBarButtonItem) {
    self.dismiss(animated: true, completion: nil)
    }
}
