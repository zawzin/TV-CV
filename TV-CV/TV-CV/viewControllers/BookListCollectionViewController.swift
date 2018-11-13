//
//  BookListCollectionViewController.swift
//  TV-CV
//
//  Created by Zaw Zin Phyo on 11/11/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class BookListCollectionViewController: UICollectionViewController {
    @IBOutlet var bookList: UICollectionView!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        self.bookList.dataSource = self
        self.bookList.delegate = self
        
        CellRegsiterUtil.collectionCellRegister(nibName: "BookCollectionViewCell", collectionView: self.bookList)
    }
    
    func bookDetail(_ book : Book) {
        let nvBookDetail = self.storyboard?.instantiateViewController(withIdentifier: "BookDetailsViewController")
            as! UINavigationController
        
        let bookDetail = nvBookDetail.viewControllers[0] as! BookDetailsViewController
        bookDetail.book = book
        self.present(nvBookDetail, animated: true, completion: nil)
    
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return booksList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as! BookCollectionViewCell
    
        cell.ivBook.image = UIImage(imageLiteralResourceName: booksList[indexPath.row].image)
    
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        bookDetail(booksList[indexPath.row])
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.width / 2 - 16)
        return CGSize.init(width: width, height: width * 1.5)
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension BookListCollectionViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 7, left: 10, bottom: 5, right: 10)
    }
}
