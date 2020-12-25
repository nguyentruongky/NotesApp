//
//  NoteDatasource.swift
//  NotesApp
//
//  Created by Ky Nguyen on 5/6/20.
//  Copyright © 2020 Ky Nguyen. All rights reserved.
//

import Foundation
import RealmSwift

class NoteDatasource: DataSource {
    func store<T>(object: T) {
        try? self.realm.write {
            self.realm.add(note.realmNote, update: true)
        }
    }
    
    func delete<T>(object: T) {
        <#code#>
    }
    
    var realm: Realm
    init() {
        self.realm = try! Realm()
    }
}
