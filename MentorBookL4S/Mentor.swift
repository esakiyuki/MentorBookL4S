//
//  Mentor.swift
//  MentorBookL4S
//
//  Created by esaki yuki on 2020/09/09.
//  Copyright © 2020 esaki yuKki. All rights reserved.
//

import UIKit

class Mentor {
    var name: String!
    var course: String!
    var imageName: String!
    
    //初期化　引数でメンター名、担当コース、顔写真をもらって設定している
    init(name: String, imageName: String, course: String) {
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    //UIImage型に型変換
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
