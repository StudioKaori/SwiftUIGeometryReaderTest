//
//  GeometryRectangle2.swift
//  SwiftUIGeometryReaderTest
//
//  Created by Kaori Persson on 2022-10-31.
//

import SwiftUI

struct GeometryRectangle2: View {
	var color: Color
	
	var body: some View {
		GeometryReader { geo in
			VStack {
				Text("X: \(Int(geo.frame(in: .global).origin.x))")
				Text("Y: \(Int(geo.frame(in: .global).origin.y))")
				Text("Width: \(Int(geo.frame(in: .global).width))")
				Text("Height: \(Int(geo.frame(in: .global).height))")
				Text("Size: \(geo.size.debugDescription)")
			}
			.background(color)
			.frame(height: 200)
		}
	}
}

struct GeometryRectangle2_Previews: PreviewProvider {
    static var previews: some View {
			GeometryRectangle2(color: .blue)
    }
}
