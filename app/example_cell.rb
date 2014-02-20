class ExampleCell < UICollectionViewCell 
  attr_accessor :label
 
  def initWithFrame(frame)
    if super
 
      layout self.contentView do
        # Add subviews here
        @label = subview(UILabel, :cell_label)
      end
 
    end
    self
  end
 
end

