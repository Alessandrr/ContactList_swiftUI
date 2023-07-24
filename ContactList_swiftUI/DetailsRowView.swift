//
//  PhoneRowView.swift
//  ContactList_swiftUI
//
//  Created by Aleksandr Mamlygo on 24.07.23.
//

import SwiftUI

enum ContactDetail {
    case phone
    case eMail
}

struct DetailsRowView: View {
    let detailType: ContactDetail
    let detailContent: String
    
    var body: some View {
        HStack {
            Image(systemName: detailType == .phone ? "phone" : "tray")
                .foregroundColor(.blue)
            Text(detailContent)
            Spacer()
        }
    }
}

struct DetailsRowView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsRowView(detailType: .eMail, detailContent: "+792929290")
    }
}
