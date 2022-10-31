//
//  GeometryRectangle.swift
//  SwiftUIGeometryReaderTest
//
//  Created by Kaori Persson on 2022-10-31.
//

import SwiftUI

struct GeometryRectangle: View {
	var color: Color
	
	var body: some View {
		GeometryReader { geo in
			RoundedRectangle(cornerRadius: 20)
				.fill(self.color)
				.overlay(
					VStack {
						Text("X: \(Int(geo.frame(in: .global).origin.x))")
						Text("Y: \(Int(geo.frame(in: .global).origin.y))")
						Text("Width: \(Int(geo.frame(in: .global).width))")
						Text("Height: \(Int(geo.frame(in: .global).height))")
						Text("Size: \(Int(geo.size.debugDescription))")
					}
				)
				.frame(height: 100)
		}
	}
}

struct GeometryRectangle_Previews: PreviewProvider {
	static var previews: some View {
		GeometryRectangle(color: .pink)
	}
}
