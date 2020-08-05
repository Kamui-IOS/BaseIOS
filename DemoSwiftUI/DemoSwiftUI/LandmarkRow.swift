//
//  LandmarkRow.swift
//  DemoSwiftUI
//
//  Created by Nam Hoang Van on 8/5/20.
//  Copyright © 2020 Nam Hoang Van. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
