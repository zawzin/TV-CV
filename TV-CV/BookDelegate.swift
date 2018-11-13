//
//  tapBook.swift
//  TV-CV
//
//  Created by Zaw Zin Phyo on 11/13/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import Foundation

protocol BookDelegate : class {
    func onTapBook(_ book: Book)
    
    func onTapMore()
}
