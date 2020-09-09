//
//  ViewController.swift
//  MentorBookL4S
//
//  Created by esaki yuki on 2020/09/09.
//  Copyright © 2020 esaki yuKki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //配列として宣言
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    //表示するメンター番号
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃー", imageName: "taithi.JPG", course: "WedD"))
        
        //なんでself.setUI()じゃない？
        setUI()
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae() {
        index = index - 1
        
        //setUI()の前に書かないとこのコードが呼ばれる前にエラーで落ちる
        if index < 0 {
            index = 2
        }
        
        //メソッドを呼び出す
        setUI()
    }
    
    @IBAction func tugi() {
        index = index + 1
        
        if index > 2 {
            index = 0
        }
        
        //メソッドを呼び出す
        setUI()
    }


}

