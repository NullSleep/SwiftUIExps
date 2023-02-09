# SwiftUI Essentials: Building Lists and Navigation

## Preface from Apple
To follow the [Building Lists and Navigation](https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation) tutorial, start with your completed project from the previous tutorial, or open the Xcode project in the **StartingPoint** folder. When prompted by the tutorial, you'll need the images and JSON in the **Resources** folder. To explore on your own, open the Xcode project in the **Complete** folder and browse the project's code.

- Note: To preview and interact with views from the canvas in Xcode ensure your Mac is running macOS 11 or later.

## Introduction
With the basic landmark detail view set up, you need to provide a way for users to see the full list of landmarks, and to view the details about each location.

You’ll create views that can show information about any landmark, and dynamically generate a scrolling list that a user can tap to see a detail view for a landmark. To fine-tune the UI, you’ll use Xcode’s canvas to render multiple previews at different device sizes.

In the first tutorial, you hard-coded information into all of your custom views. Here, you’ll create a model to store data that you can pass into your views.