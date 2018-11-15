//
//  AdsDetailViewController.swift
//  TV-CV
//
//  Created by Zaw Zin Phyo on 11/11/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class AdsDetailViewController: UIViewController {

    @IBOutlet weak var ivAdsDetail: UIImageView!
    @IBOutlet weak var tvAdsTitleDetail: UILabel!
    @IBOutlet weak var tvAdsDetail: UILabel!
    
    var adsDetail : Topic!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let attrString = NSMutableAttributedString(string: adsDetail.description)
        var style = NSMutableParagraphStyle()
        style.lineSpacing = 1
        style.lineHeightMultiple = 1.3
        attrString.addAttribute(.paragraphStyle, value: style, range: NSMakeRange(0, attrString.length))
        tvAdsDetail.attributedText = attrString
        
        ivAdsDetail.image = UIImage(imageLiteralResourceName: adsDetail.image)
        tvAdsTitleDetail.text = adsDetail.title
        tvAdsDetail.text = adsDetail.description
        
    }
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
