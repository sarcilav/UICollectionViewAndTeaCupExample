class Example < UIView 
 
  CELL_IDENTIFIER = 'example_cell'
 
  def initWithFrame(frame)
    if super
 
      # Create UICollection View
      layout = UICollectionViewFlowLayout.alloc.init
      cv = UICollectionView.alloc.initWithFrame(self.bounds, collectionViewLayout: layout)
      cv.registerClass(ExampleCell, forCellWithReuseIdentifier: CELL_IDENTIFIER)
      @collection = subview(cv, :collection, delegate: self, dataSource: self)
 
    end
 
    self
  end
 
  def numberOfSectionsInCollectionView(view)
    ROWS
  end
 
  def collectionView(view, numberOfItemsInSection: section)
    COLS
  end
    
  def collectionView(view, cellForItemAtIndexPath: index_path)
    view.dequeueReusableCellWithReuseIdentifier(CELL_IDENTIFIER, forIndexPath: index_path).tap do |cell|
 
      layout(cell.contentView, :cell) do 
        # No not add subviews here, as this cell may already exist. Add them in ExampleCell below
        cell.label.text = "#{index_path.section}/#{index_path.row}"
      end
 
    end
  end
 
end
