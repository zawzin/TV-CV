//
//  BookTableViewCell.swift
//  TV-CV
//
//  Created by Zaw Zin Phyo on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell{

    @IBOutlet weak var lblRecommended: UILabel!
    @IBOutlet weak var btnMore: UILabel!
    @IBOutlet weak var cvBookList: UICollectionView!
    
    weak var delegate : BookDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.cvBookList.dataSource = self
        self.cvBookList.delegate = self
        
        CellRegsiterUtil.collectionCellRegister(nibName: "BookCollectionViewCell", collectionView: self.cvBookList)
        let tapGeture = UITapGestureRecognizer(target: self, action: #selector(self.tapMore))
        btnMore.isUserInteractionEnabled = true
        btnMore.addGestureRecognizer(tapGeture)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @objc func tapMore() {
        print("tapped")
        delegate?.onTapMore()
    }

}

extension BookTableViewCell : UICollectionViewDataSource {
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return booksList.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as! BookCollectionViewCell
        cell.ivBook.image = UIImage(imageLiteralResourceName: booksList[indexPath.row].image)
        return cell
    }
    
}

extension BookTableViewCell : UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.frame.width / 3 - 20
        return CGSize.init(width: width, height: width * 1.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.onTapBook(booksList[indexPath.row])
    }
}
