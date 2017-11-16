//
//  Bv3dPreview.swift
//  Bv3dPreview
//
//  Created by Koldo Ruiz on 16/11/17.
//

import Foundation
import ModelIO
import SceneKit
import SceneKit.ModelIO


/***  A SCNView that displays a 3D model ***/
public class Bv3dPreview: SCNView {
    
    public override init(frame: CGRect, options: [String : Any]? = nil) {
        super.init(frame: frame, options: options)
    }
    
    @objc required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /**  init the SCNView and set the OBJ-model and textures(optional) */
    public init(from fileUrl: URL, textures: [MDLMaterialSemantic : String]? = nil) {
        super.init(frame: .zero)
        configure(with: fileUrl, textures: textures)
    }
    
    /**  Set the OBJ-model and the textures(optional) to the SCNView */
    public func configure(with fileUrl: URL, textures: [MDLMaterialSemantic : String]? = nil) {
        let asset = MDLAsset(url: fileUrl)
        guard let object = asset.object(at: 0) as? MDLMesh else {
            return
        }
        
        if let textures = textures {
            let scatteringFunction = MDLScatteringFunction()
            let material = MDLMaterial(name: "baseMaterial", scatteringFunction: scatteringFunction)
            material.setTextureProperties(textures: textures)
            if let arraySubmeshes = object.submeshes {
                for submesh in arraySubmeshes {
                    if let submesh = submesh as? MDLSubmesh {
                        submesh.material = material
                    }
                }
            }
        }
        
        let scene = SCNScene()
        let node = SCNNode(mdlObject: object)
        scene.rootNode.addChildNode(node)
        
        self.autoenablesDefaultLighting = true
        self.allowsCameraControl = true
        self.scene = scene
    }
}

extension MDLMaterial {
    func setTextureProperties(textures: [MDLMaterialSemantic:String]) -> Void {
        for (key,value) in textures {
            guard let url = Bundle.main.url(forResource: value, withExtension: "") else {
                return
            }
            let property = MDLMaterialProperty(name:value, semantic: key, url: url)
            self.setProperty(property)
        }
    }
}
