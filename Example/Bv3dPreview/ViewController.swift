//
//  ViewController.swift
//  Bv3dPreview
//
//  Created by koldo92 on 11/16/2017.
//  Copyright (c) 2017 koldo92. All rights reserved.
//

import UIKit
import Bv3dPreview

class ViewController: UIViewController {

    @IBOutlet weak var bv3dPreview: Bv3dPreview!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let objUrl = Bundle.main.url(forResource: "Fighter", withExtension: "obj") else {
            return }
        
        bv3dPreview.configure(with: objUrl, textures: [
            .baseColor:"Fighter_Diffuse_25.jpg",
            .specular:"Fighter_Specular_25.jpg",
            .emission:"Fighter_Illumination_25.jpg"])
        bv3dPreview.backgroundColor = .black
        bv3dPreview.layer.borderColor = UIColor.lightGray.cgColor
        bv3dPreview.layer.borderWidth = 1.0
        
        //bv3dPreview.debugOptions = [SCNDebugOptions.showSkeletons]
        /*
         // Code init
         guard let objUrl = Bundle.main.url(forResource: "Fighter", withExtension: "obj") else {
         return }
         let codeBv3dPreview = Bv3dPreview(from: objUrl, textures: [
         .baseColor:"Fighter_Diffuse_25.jpg",
         .specular:"Fighter_Specular_25.jpg",
         .emission:"Fighter_Illumination_25.jpg"])
         codeBv3dPreview.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
         view.addSubview(codeBv3dPreview) */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

