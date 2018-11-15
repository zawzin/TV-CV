//
//  MainTableTableViewController.swift
//  TV-CV
//
//  Created by Zaw Zin Phyo on 11/10/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController, BookDelegate {
    
    func onTapMore() {
        let nvBookList = self.storyboard?.instantiateViewController(withIdentifier: "BookListCollectionViewController") as! UINavigationController
        let vcBookList = nvBookList.viewControllers[0] as! BookListCollectionViewController
        self.present(nvBookList, animated: true, completion: nil)
    }
    
    func onTapBook(_ book: Book) {
        let nvBookDetail = self.storyboard?.instantiateViewController(withIdentifier: "BookDetailsViewController") as! UINavigationController
        let bookDetail = nvBookDetail.viewControllers[0] as! BookDetailsViewController
        bookDetail.book = book
        self.present(nvBookDetail, animated: true, completion: nil)
    }
    @IBOutlet var mainTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainTable.dataSource = self
        self.mainTable.delegate = self
        
        self.mainTable.separatorStyle = .none

        cellRegister()
        
    }

    func cellRegister() {
        CellRegsiterUtil.tableCellRegister(nibName: "AdsViewCell", tableView: self.mainTable)
        CellRegsiterUtil.tableCellRegister(nibName: "BookTableViewCell", tableView: self.mainTable)
        CellRegsiterUtil.tableCellRegister(nibName: "TopicTableViewCell", tableView: self.mainTable)
    }
    
    func adsDetails(_ topicDetail : Topic) {
        let nvAdsDetail = self.storyboard?.instantiateViewController(withIdentifier: "AdsDetailViewController")
        as! UINavigationController
        
        let adsDetail = nvAdsDetail.viewControllers[0] as! AdsDetailViewController
        adsDetail.adsDetail = topicDetail
        self.present(nvAdsDetail, animated: true, completion: nil)
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else if section == 1 {
            return 1
        }else {
            return topics.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AdsViewCell",
                                                     for: indexPath) as! AdsViewCell
            cell.iVAds.image = UIImage(imageLiteralResourceName: ads.image )
            
            return cell
        }
        else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BookTableViewCell", for: indexPath) as! BookTableViewCell
            cell.delegate = self
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TopicTableViewCell", for: indexPath) as! TopicTableViewCell
                cell.ivTopic.image = UIImage(imageLiteralResourceName: topics[indexPath.row].image)
                cell.lblTitle.text = topics[indexPath.row].title
        
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1 {
            let width = self.view.frame.width
            return CGFloat.init(width * 0.65)
        } else {
            let width = self.view.frame.width
            return CGFloat.init(width * 0.8)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            adsDetails(ads)
        }else if indexPath.section > 1 {
            adsDetails(topics[indexPath.row])
        }
    }
    func clickMore() {
        let navBookList = self.storyboard?.instantiateViewController(withIdentifier: "BookListCollectionViewController") as! UINavigationController
        
        let bookList = navBookList.viewControllers[0] as! BookListCollectionViewController
        self.present(navBookList, animated: true, completion: nil)
    }
}
