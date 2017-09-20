//
//  UICollectionViewTests.swift
//  Swiftility
//
//  Created by Allan Barbato on 1/31/16.
//  Copyright © 2016 Allan Barbato. All rights reserved.
//

import XCTest
import Nimble
@testable import Swiftility

class UICollectionViewTests: XCTestCase
{
//    let collectionView = UICollectionView(frame: CGRectZero, collectionViewLayout: UICollectionViewFlowLayout())
    let collectionVC = TestCollectionViewVC.instantiateFromStoryboard()
    
    func testDequeueCell()
    {
        let collectionView = self.collectionVC.collectionView
        
        XCTAssert(collectionView != nil)
        
        // Dequeue storyboard cell
        
        _ = collectionView!.dequeueReusableCell(for: IndexPath(row: 0, section: 0)) as TestCollectionViewStoryboardCell

        XCTAssert(true, "dequeueReusableCell should not crash")
    
        // Register and dequeue nib cell
        
        collectionView!.register(TestCollectionViewCell.self)
        
        XCTAssert(true, "registerCell should not crash")
        
        _ = collectionView!.dequeueReusableCell(for: IndexPath(row: 0, section: 0)) as TestCollectionViewCell

        XCTAssert(true, "dequeueReusableCell should not crash")

        // Register and dequeue class cell

        collectionView!.register(TestCollectionViewCellClass.self)
        
        XCTAssert(true, "registerCell should not crash")
        
        _ = collectionView!.dequeueReusableCell(for: IndexPath(row: 1, section: 0)) as TestCollectionViewCellClass
        
        XCTAssert(true, "dequeueReusableCell should not crash")
        
        // Dequeue non existing cell
        
        expect {
            _ = collectionView!.dequeueReusableCell(for: IndexPath(row: 1, section: 0)) as TestNonExistingCollectionViewCell
        }.to(throwAssertion())
    }

    // TODO: Add test for reusableSupplementaryView
//    func testDequeueView()
//    {
//        let collectionView = self.collectionVC.collectionView
//
//        expect(collectionView!.registerSupplementaryView(TestCollectionViewView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader)).toNot(raiseException())
//        
//        expect(collectionView!.dequeueReusableSupplementaryView(kind: UICollectionElementKindSectionHeader, type: TestCollectionViewView.self, forIndexPath: NSIndexPath(forRow: 0, inSection: 0))).to(beTruthy())
//    }
}
