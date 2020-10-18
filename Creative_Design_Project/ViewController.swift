//
//  ViewController.swift
//  Creative_Design_Project
//
//  Created by Satyar Mansouri on 10/16/20.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    var sphere = SCNNode()
    var Sun = SCNNode()
    var rotaet_sun = SCNNode()
    
    var mercury = SCNNode()
    
    var venus = SCNNode()
    
    var mars = SCNNode()
    
    var jupiter = SCNNode()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        
        
        // Create a new scene
        Create_Rotate_Sun()
        DrawSphereAtOrigion()
        DrawMoon()
        Create_Sun()
        Create_Mercury()
        Create_Venus()
        Create_Mars()
        Create_Mon1_Mars()
        Create_Mon2_Mars()
        Create_Jupiter()
        Create_Jupiter_Moon1()
        Create_Jupiter_Moon2()
        Create_Jupiter_Moon3()
        Create_Jupiter_Moon4()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    
    func Create_Sun()
    {
        Sun = SCNNode(geometry: SCNSphere(radius: 0.1))
        Sun.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "sun")
        Sun.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        Sun.position = SCNVector3(0,0,-0.1)
        sceneView.scene.rootNode.addChildNode(Sun)
        //Sun.addChildNode(sphere)
    }
    
    func Create_Rotate_Sun()
    {
        rotaet_sun = SCNNode(geometry: SCNSphere(radius: 0.02))
        rotaet_sun.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        //rotaet_sun.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        rotaet_sun.position = SCNVector3(0,0,-0.1)
        sceneView.scene.rootNode.addChildNode(rotaet_sun)
        
        
        
        let Rotate_solar = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_solar)
        
        rotaet_sun.runAction(Rotate_Forever)
    }
    
    func Create_Mercury()
    {
        mercury = SCNNode(geometry: SCNSphere(radius: 0.01))
        //sphere.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "art.scnassets/earth.jpg")
        //sphere.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        mercury.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "mercury")
        mercury.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        mercury.position = SCNVector3(0.2,0,-0.1)
        //sceneView.scene.rootNode.addChildNode(sphere)
        rotaet_sun.addChildNode(mercury)

        
        // Add Rotation to earth
        let Rotate_mercury = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_mercury)
        
        mercury.runAction(Rotate_Forever)
    }
    
    func Create_Venus()
    {
        venus = SCNNode(geometry: SCNSphere(radius: 0.04))
        //sphere.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "art.scnassets/earth.jpg")
        //sphere.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        venus.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "venus")
        venus.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        venus.position = SCNVector3(0.5,0,-0.4)
        //sceneView.scene.rootNode.addChildNode(sphere)
        rotaet_sun.addChildNode(venus)

        
        // Add Rotation to earth
        let Rotate_venus = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_venus)
        
        venus.runAction(Rotate_Forever)
    }
    
    
    
    func DrawSphereAtOrigion()
    {
        sphere = SCNNode(geometry: SCNSphere(radius: 0.05))
        //sphere.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "art.scnassets/earth.jpg")
        //sphere.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        sphere.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "earth")
        sphere.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        sphere.position = SCNVector3(0,0,-0.8)
        //sceneView.scene.rootNode.addChildNode(sphere)
        rotaet_sun.addChildNode(sphere)

        
        // Add Rotation to earth
        let Rotate_Earth = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_Earth)
        
        sphere.runAction(Rotate_Forever)
    }
    
    
    func DrawMoon()
    {
        let moon = SCNNode(geometry: SCNSphere(radius: 0.01))
       
        moon.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "moon")
        moon.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        moon.position = SCNVector3(0.15,0,0)
        sphere.addChildNode(moon)
        
        // Add Rotation to Moon
        let Rotate_Moon = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_Moon)
        
        moon.runAction(Rotate_Forever)
        
                
    }
    
    func Create_Mars()
    {
        mars = SCNNode(geometry: SCNSphere(radius: 0.04))
        //sphere.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "art.scnassets/earth.jpg")
        //sphere.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        mars.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "mars")
        mars.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        mars.position = SCNVector3(-0.5,0,-1.3)
        //sceneView.scene.rootNode.addChildNode(sphere)
        rotaet_sun.addChildNode(mars)

        
        // Add Rotation to earth
        let Rotate_mars = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_mars)
        
        mars.runAction(Rotate_Forever)
    }
    
    func Create_Mon1_Mars()
    
    {
        let moon = SCNNode(geometry: SCNSphere(radius: 0.01))
       
        moon.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "moon")
        moon.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        moon.position = SCNVector3(0.15,0,0)
        mars.addChildNode(moon)
        
        // Add Rotation to Moon
        let Rotate_Moon = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_Moon)
        
        moon.runAction(Rotate_Forever)
    }
    func Create_Mon2_Mars()
    
    {
        let moon = SCNNode(geometry: SCNSphere(radius: 0.01))
       
        moon.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "moon")
        moon.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        moon.position = SCNVector3(-0.15,0,0)
        mars.addChildNode(moon)
        
        // Add Rotation to Moon
        let Rotate_Moon = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_Moon)
        
        moon.runAction(Rotate_Forever)
    }
    
    func Create_Jupiter()
    {
        jupiter = SCNNode(geometry: SCNSphere(radius: 0.3))
        //sphere.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "art.scnassets/earth.jpg")
        //sphere.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        jupiter.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "jupiter")
        jupiter.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        jupiter.position = SCNVector3(-0.9,0,-3)
        //sceneView.scene.rootNode.addChildNode(sphere)
        rotaet_sun.addChildNode(jupiter)

        
        // Add Rotation to earth
        let Rotate_jupiter = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_jupiter)
        
        jupiter.runAction(Rotate_Forever)
    }
    
    func Create_Jupiter_Moon1()
    {
        let moon = SCNNode(geometry: SCNSphere(radius: 0.01))
       
        moon.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "moon")
        moon.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        moon.position = SCNVector3(-0.15,0,-0.5)
        jupiter.addChildNode(moon)
        
        // Add Rotation to Moon
        let Rotate_Moon = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_Moon)
        
        moon.runAction(Rotate_Forever)
    }
    
    func Create_Jupiter_Moon2()
    {
        let moon = SCNNode(geometry: SCNSphere(radius: 0.01))
       
        moon.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "moon")
        moon.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        moon.position = SCNVector3(0.15,0,-0.5)
        jupiter.addChildNode(moon)
        
        // Add Rotation to Moon
        let Rotate_Moon = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_Moon)
        
        moon.runAction(Rotate_Forever)
    }
    
    func Create_Jupiter_Moon3()
    {
        let moon = SCNNode(geometry: SCNSphere(radius: 0.01))
       
        moon.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "moon")
        moon.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        moon.position = SCNVector3(0.4,0,-0.5)
        jupiter.addChildNode(moon)
        
        // Add Rotation to Moon
        let Rotate_Moon = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_Moon)
        
        moon.runAction(Rotate_Forever)
    }
    
    func Create_Jupiter_Moon4()
    {
        let moon = SCNNode(geometry: SCNSphere(radius: 0.01))
       
        moon.geometry?.firstMaterial?.diffuse.contents = UIImage(named: "moon")
        moon.geometry?.firstMaterial?.specular.contents = UIColor.yellow
        
        moon.position = SCNVector3(-0.4,0,-0.5)
        jupiter.addChildNode(moon)
        
        // Add Rotation to Moon
        let Rotate_Moon = SCNAction.rotate(by: 360.DegreeeToRadians(),
                                            around: SCNVector3(0,1,0),
                                            duration: 8)
        
        let Rotate_Forever = SCNAction.repeatForever(Rotate_Moon)
        
        moon.runAction(Rotate_Forever)
    }



    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}

extension Int {
    func DegreeeToRadians() -> CGFloat {
        return CGFloat(self) * CGFloat.pi / 180.0
    }
}

