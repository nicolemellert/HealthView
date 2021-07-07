//
//  ContentView.swift
//  Shared
//
//  Created by Nicole Mellert on 7/7/21.
//

import SwiftUI
import Alamofire
import UIKit

let apiNYT = "https://api.nytimes.com/svc/topstories/v2/health.json?api-key=eAfQI3BIAUG1Cja4EZvUg2j7K2Vm2jFS"


struct ContentView: View {
   var body: some View {
      Text("Hello, world!")
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class ViewController: UIViewController {
    override func viewDidLoad() {
    super.viewDidLoad()
    AF.request("https://api.nytimes.com/svc/topstories/v2/health.json").response { response in
            debugPrint(response)
        }
    }
}

