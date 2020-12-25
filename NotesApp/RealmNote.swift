//
//  RealmNote.swift
//  NotesApp
//
//  Created by Ky Nguyen on 5/6/20.
//  Copyright © 2020 Ky Nguyen. All rights reserved.
//

import Foundation
import RealmSwift

class RealmNote: Object {

    @objc dynamic var identifier: String = ""
    @objc dynamic var content: String = ""
    @objc dynamic var lastEdited: Date = Date()

    override class func primaryKey() -> String? {
        return "identifier"
    }

}

extension RealmNote {
    var note: Note {
        return Note(realmNote: self)
    }
    convenience init(note: Note) {
        self.init()

        self.identifier = note.identifier
        self.content = note.content
        self.lastEdited = note.lastEdited
    }
}
