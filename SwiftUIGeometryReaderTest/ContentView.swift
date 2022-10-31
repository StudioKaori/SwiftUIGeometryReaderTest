//
//  ContentView.swift
//  SwiftUIGeometryReaderTest
//
//  Created by Kaori Persson on 2022-10-31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
			
			VStack {
				GeometryRectangle2(color: .gray)
				GeometryRectangle2(color: .green)
				Text("Hello")
				GeometryRectangle(color: .pink)
				GeometryRectangle(color: .blue)
					.offset(x: 10, y: 0)
				
				ZStack {
					GeometryRectangle(color: .brown)
						.offset(x:30, y: 0)
				}
				.offset(x: 10, y: 0)
			}
			
			
//			ScrollView {
//				VStack {
//					GeometryRectangle2(color: .gray)
//					GeometryRectangle2(color: .green)
//					Text("Hello")
//					GeometryRectangle(color: .pink)
//					GeometryRectangle(color: .blue)
//						.offset(x: 10, y: 0)
//					
//					ZStack {
//						GeometryRectangle(color: .brown)
//							.offset(x:30, y: 0)
//					}
//					.offset(x: 10, y: 0)
//				}
//				
//			}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
