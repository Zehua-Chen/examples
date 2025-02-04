//
//  ChapterDocument.swift
//  BookMaker
//
//  Created by Zehua Chen on 3/17/22.
//

import Cocoa

class ChapterDocument: NSDocument {

  var content: String = ""

  /*
   override var windowNibName: String? {
   // Override returning the nib file name of the document
   // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
   return "ChapterDocument"
   }
   */

  override func windowControllerDidLoadNib(_ aController: NSWindowController) {
    super.windowControllerDidLoadNib(aController)
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
  }

  override func data(ofType typeName: String) throws -> Data {
    // Insert code here to write your document to data of the specified type, throwing an error in case of failure.
    // Alternatively, you could remove this method and override fileWrapper(ofType:), write(to:ofType:), or write(to:ofType:for:originalContentsURL:) instead.
    return content.data(using: .utf8)!
  }

  override func read(from data: Data, ofType typeName: String) throws {
    // Insert code here to read your document from the given data of the specified type, throwing an error in case of failure.
    // Alternatively, you could remove this method and override read(from:ofType:) instead.  If you do, you should also override isEntireFileLoaded to return false if the contents are lazily loaded.
    content = String(data: data, encoding: .utf8)!
  }

  override class var autosavesInPlace: Bool {
    return true
  }
}
