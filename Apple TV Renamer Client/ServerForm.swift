//
//  Form.swift
//  Apple TV Renamer Client
//
//  Created by Dalton Durst on 8/4/22.
//

import Foundation

struct ServerForm: Identifiable {
    let id = UUID()
    let pages: [FormPage]
    let title: String
}

struct FormPage: Identifiable {
    let id = UUID()
    let type: FormPageType
    let title: String
    let inputLabel: String
    let icon: String
}

enum FormPageType {
    case textInput
}

struct FormOutput: Identifiable {
    let id = UUID()
    var output: [FormPageOutput] = []
}

struct FormPageOutput: Identifiable {
    let id = UUID()
    let pageId: UUID
    let pageOutput: String
}

let previewPages = [FormPage(type: .textInput, title: "Page 1", inputLabel: "Enter building", icon: "building.fill"), FormPage(type: .textInput, title: "Page 2", inputLabel: "Enter room number", icon: "square.fill")]
let previewForm = ServerForm(pages: previewPages, title: "Preview Form")
