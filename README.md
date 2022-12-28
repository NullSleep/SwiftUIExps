# Swift UI Exps
Collection of Swift UI experiments.

## Overview
New system to build UI for apps across all Apple platforms using Swift.

## Features
- Navigation API: Leverage programmatic control over your app’s navigation behavior to set its launch state, manage transitions between size classes, respond to deep links, and more.
- Swift Charts: Visualize data with highly customizable charts that look and feel great across all Apple platforms. Swift Charts uses the compositional syntax of SwiftUI to create views with many possibilities, from line and bar charts to advanced types like stream graphs. Swift Charts also supports VoiceOver to deliver information to all your users.
- Advanced layout control: Build advanced, reusable layouts to power the design of your app. In addition to VStack and HStack, SwiftUI now offers a new Grid API to simultaneously align views both horizontally and vertically. There’s also a new low-level custom Layout API, giving you full control to build exactly the layout your app needs. And SwiftUI now includes ViewThatFits, which lets you specify multiple variations of a given view and lets SwiftUI automatically choose the one that best fits in the available space.
- Support for additional components: SwiftUI continues to expand to cover many more existing UI components, like half sheets that slide up over a main view when a user wants to see more information or share sheets that let users take advantage of all the Share Extensions installed on their device. And the multicolumn table API from Mac is now available on iPad, making it easier than ever to present tabular data.
- Improvements for macOS: Support for windowing on macOS is improved with single, unique windows and new modifiers for window position, size, and resizability. Build menu bar extras with SwiftUI to provide access to your app’s functionality from anywhere on Mac.
- New Sharing API: The new Transferable protocol makes your data available for the clipboard, drag and drop, and the Share Sheet, which can now be invoked directly using SwiftUI.
- Better UIKit interoperability: SwiftUI is designed to work alongside other interface frameworks. Now you can easily write custom UICollectionView cells using the declarative syntax of SwiftUI. These custom cells fully integrate with UIKit, providing all the expected functionality, such as swipe actions and cell backgrounds.
- Widgets on the Lock Screen: Make your widgets look great on the Lock Screen with SwiftUI. Compose beautiful icons, gauges, and other elements to give your users quick information at a glance.

## Declarative syntax
SwiftUI uses a declarative syntax, so you can simply state what your user interface should do. For example, you can write that you want a list of items consisting of text fields, then describe alignment, font, and color for each field. Your code is simpler and easier to read than ever before, saving you time and maintenance.

```
import SwiftUI

struct AlbumDetail: View {
	var album: Album

	var body: some View {
		List(album.songs) { song in 
			HStack {
				Image(album.cover)
				VStack(alignment: .leading) {
					Text(song.title)
					Text(song.artist.name)
						.foregroundStyle(.secondary)
				}
			}
		}
	}
}
```

This declarative style even applies to complex concepts like animation. Easily add animation to almost any control and choose a collection of ready-to-use effects with only a few lines of code. At runtime, the system handles all of the steps needed to create a smooth movement, even dealing with user interaction and state changes mid-animation. With animation this easy, you’ll be looking for new ways to make your app come alive.

## Design tools
Xcode includes intuitive design tools that make building interfaces with SwiftUI as easy as dragging and dropping. As you work in the design canvas, everything you edit is completely in sync with the code in the adjoining editor. Code is instantly visible as a preview as you type and you can even view your UI in multiple configurations, such as light and dark appearance. Xcode recompiles your changes instantly and inserts them into a running version of your app — visible, and editable at all times.

Drag and drop. Arrange components within your user interface by simply dragging controls on the canvas. Click to open an inspector to select font, color, alignment, and other design options, and easily rearrange controls with your cursor. Many of these visual editors are also available within the code editor, so you can use inspectors to discover new modifiers for each control, even if you prefer hand-coding parts of your interface. You can also drag controls from your library and drop them on the design canvas or directly on the code.

Dynamic replacement. The Swift compiler and runtime are fully embedded throughout Xcode, so your app is constantly being built and run. The design canvas you see isn’t just an approximation of your user interface — it’s your live app. And Xcode can swap edited code directly in your live app using dynamic replacement.

Previews. You can now create one or many previews of any SwiftUI views to get sample data, and configure almost anything your users might see, such as large fonts, localizations, or Dark Mode. Previews can also display your UI in any device and any orientation.

## Works with UIKit and AppKit
SwiftUI is designed to work alongside UIKit and AppKit, so you can adopt it incrementally in your existing apps. When it’s time to construct a new part of your user interface or rebuild an existing one, you can use SwiftUI while keeping the rest of your codebase.

And if you want to use an interface element that isn’t offered in SwiftUI, you can mix and match SwiftUI with UIKit and AppKit to take advantage of the best of all worlds.