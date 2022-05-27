//
//  TestAreaViewController.swift
//  BodyMotion
//
//  Created by Carlos Rafael Hasselmann Forbeck on 18/11/21.
//

import UIKit
import ARKit
import RealityKit

class TestAreaViewController: UIViewController, ARSessionDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var stepName: UILabel!
    @IBOutlet var arView: ARView!
    @IBOutlet weak var poseQuality: UILabel!
    @IBOutlet weak var feedbackView: UIView!
    
    var steps: [Step]!
    var selectedStep: Step!
    
    let characterAnchor = AnchorEntity()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arView.session.delegate = self
        
        tableView.dataSource = self
        tableView.delegate = self
        
        guard ARBodyTrackingConfiguration.isSupported else {
            fatalError("This feature is only supported on devices with an A12 chip")
        }
        
//         Run a body tracking configration.
        let configuration = ARBodyTrackingConfiguration()
        arView.session.run(configuration)
        arView.scene.addAnchor(characterAnchor)
        
//        Game.instance.setupJoints()
        Joints.instance.setup(characterAnchor: characterAnchor)
        
        steps = StepBank.getAllSteps()
        
        poseQuality.transform = CGAffineTransform(rotationAngle: -CGFloat.pi * 0.5)
    }
    
    func session(_ session: ARSession, didUpdate frame: ARFrame) {
        if selectedStep == nil {
            return
        }
        
        let quality = selectedStep.getPoseQuality()
        poseQuality.text = quality.description
        feedbackView.alpha = CGFloat(quality)
    }
    
    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {

        for anchor in anchors {
            guard let bodyAnchor = anchor as? ARBodyAnchor else { continue }

            // Update the position of the character anchor's position.
            let bodyPosition = simd_make_float3(bodyAnchor.transform.columns.3)
            characterAnchor.position = bodyPosition
            // Also copy over the rotation of the body anchor, because the skeleton's pose
            // in the world is relative to the body anchor's rotation.
            characterAnchor.orientation = Transform(matrix: bodyAnchor.transform).rotation

            // skeleton
            let skeleton = bodyAnchor.skeleton
            // all the joints relatives to root
            let jointTransforms = skeleton.jointModelTransforms

            // Interating over all joints
            for (i, jointTransform) in jointTransforms.enumerated() {
//                print("\(i) - \(skeleton.definition.jointNames[i])")

                // parent index
                let parentIndex = skeleton.definition.parentIndices[i]
                // check if it is not root
                guard parentIndex != -1 else {continue}

                Joints.instance.updateJoint(index: i, coord: simd_make_float3(jointTransform.columns.3))
            }
        }
    }
    
    @IBAction func showHideChanged(_ sender: UISwitch) {
        tableView.isHidden = !sender.isOn
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return steps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let step = steps[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as! TestAreaTableViewCell
        
        cell.name.text = step.getMoveName()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedStep = steps[indexPath.row]
        stepName.text = selectedStep.getMoveName()
    }
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        
        selectedStep = steps[indexPath.row]
        stepName.text = selectedStep.getMoveName()
    }
}
