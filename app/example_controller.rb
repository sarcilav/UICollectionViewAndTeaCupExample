class ExampleController < UIViewController
  stylesheet :example

  layout do
    subview Example, :my_example_view
  end
end
