//
//  ViewController.swift
//  ColorChangeBackground
//
//  Created by Alejandro Leal Arambula on 11/02/24.
//

import UIKit


class ViewController: UIViewController {


    @IBOutlet weak var redNumberLabel: UILabel!

    @IBOutlet weak var greenNumberLabel: UILabel!

    @IBOutlet weak var blueNumberLabel: UILabel!

    @IBOutlet weak var opacityNumberLabel: UILabel!

    @IBOutlet weak var backgroundView: UIView!


    override func viewDidLoad() {

        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }


    @IBAction func redSlider(_ sender: UISlider) {

        let redValue = CGFloat(sender.value)

        backgroundView.backgroundColor = UIColor(red: redValue, green: backgroundView.backgroundColor?.cgColor.components?[1] ?? 0, blue: backgroundView.backgroundColor?.cgColor.components?[2] ?? 0, alpha: backgroundView.backgroundColor?.cgColor.components?[3] ?? 1)

        redNumberLabel.text = String(format: "%.2f", redValue)

    }


    @IBAction func greenSlider(_ sender: UISlider) {

        let greenValue = CGFloat(sender.value)

        backgroundView.backgroundColor = UIColor(red: backgroundView.backgroundColor?.cgColor.components?[0] ?? 0, green: greenValue, blue: backgroundView.backgroundColor?.cgColor.components?[2] ?? 0, alpha: backgroundView.backgroundColor?.cgColor.components?[3] ?? 1)

        greenNumberLabel.text = String(format: "%.2f", greenValue)

    }


    @IBAction func blueSlider(_ sender: UISlider) {

        let blueValue = CGFloat(sender.value)

        backgroundView.backgroundColor = UIColor(red: backgroundView.backgroundColor?.cgColor.components?[0] ?? 0, green: backgroundView.backgroundColor?.cgColor.components?[1] ?? 0, blue: blueValue, alpha: backgroundView.backgroundColor?.cgColor.components?[3] ?? 1)

        blueNumberLabel.text = String(format: "%.2f", blueValue)

    }


    @IBAction func opacitySlider(_ sender: UISlider) {

        let opacityValue = CGFloat(sender.value)

        backgroundView.backgroundColor = UIColor(red: backgroundView.backgroundColor?.cgColor.components?[0] ?? 0, green: backgroundView.backgroundColor?.cgColor.components?[1] ?? 0, blue: backgroundView.backgroundColor?.cgColor.components?[2] ?? 0, alpha: opacityValue)

        opacityNumberLabel.text = String(format: "%.2f", opacityValue)

    }

}
