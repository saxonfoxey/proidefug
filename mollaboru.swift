import SwiftUI

struct CustomView: View {
    var body: some View {
        // A view that uses GeometryReader to access the GeometryProxy
        GeometryReader { geometry in
            // Pass the view and the geometry proxy to another function
            self.processViewAndGeometry(view: self, geometry: geometry)
        }
    }

    func processViewAndGeometry(view: CustomView, geometry: GeometryProxy) {
        // Access geometry information for the view
        let size = geometry.size
        let frame = geometry.frame(in: .global)

        // Perform operations using the view and geometry information
        print("Size of the view: \(size)")
        print("Frame of the view in global coordinates: \(frame)")
    }
}

// Usage
struct ContentView: View {
    var body: some View {
        CustomView()
    }
}
