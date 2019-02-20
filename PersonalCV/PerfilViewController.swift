//
//  PerfilViewController.swift
//  PersonalCV
//
//  Created by Juan Carlos Guillén Castro on 9/12/18.
//

import UIKit

class PerfilViewController: UIViewController {
    
    @IBOutlet weak var profileLbl: UILabel!
    var text = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        var text = "Técnico con amplios conocimientos en desarrollo móvil iOS.\nMe considero una persona íntegra con capacidad para la identificación de problemas y brindar soluciones eficientes.\nCon aptitudes para el trabajo en equipo y liderazgo, además de tener facilidad para crear relaciones sociales.\nInteresado en aprender y aportar bastante en proyectos de innovación."
        profileLbl.text = text
    }

}
