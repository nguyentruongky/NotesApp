//
//  Note.swift
//  NotesApp
//
//  Created by Ky Nguyen on 5/6/20.
//  Copyright © 2020 Ky Nguyen. All rights reserved.
//

import Foundation
import RealmSwift

class Note {

    var identifier: String
    var content: String
    var lastEdited: Date

    init(
         identifier: String = UUID().uuidString,
         content: String,
         lastEdited: Date = Date()) {
        self.identifier = identifier
        self.content = content
        self.lastEdited = lastEdited
    }
}

extension Note: Writable {

    func write(dataSource: DataSource) {
        self.lastEdited = Date()

        dataSource.store(object: self)
    }

    func delete(dataSource: DataSource) {
        dataSource.delete(object: self)
    }

}


extension Note {
    convenience init(realmNote: RealmNote) {
        self.init(identifier: realmNote.identifier, content: realmNote.content, lastEdited: realmNote.lastEdited)
    }

    var realmNote: RealmNote {
        return RealmNote(note: self)
    }

}



protocol DataSource {

    func store<T>(object: T)
    func delete<T>(object: T)

}

extension Notification.Name {

    static let noteDataChanged = Notification.Name(rawValue: "noteDataChanged")

}

