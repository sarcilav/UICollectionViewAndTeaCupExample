Teacup::Stylesheet.new :example do
 
  style :collection,
    frame: :full,
    backgroundColor: UIColor.whiteColor,
    autoresizingMask: UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight,
    allowsSelection: false,
    collectionViewLayout: {
      itemSize: [100, 150],
      sectionInset: [10,10,10,10],
      minimumInteritemSpacing: 5,
      minimumLineSpacing: 5 
    }
 
  style :cell,
    frame: :full,
    backgroundColor: UIColor.whiteColor

  style :cell_label,
    frame: :full,
    textColor: UIColor.blackColor,
    backgroundColor: UIColor.whiteColor

  style :my_example_view, frame: :full
end
