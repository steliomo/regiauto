pdf = Prawn::Document.new(:page_size => 'A5', :page_layout => :landscape)
pdf.repeat(:all) do
  pdf.bounding_box([0,350], :width => 525) do
    pdf.text "Título provisório" 
    pdf.horizontal_rule 
    #pdf.stroke_bounds
    pdf.stroke_circle [0,0],0
    pdf.move_down(10)
  end
end
	
pdf.move_down(5)
pdf.text "#{@process_register.proprietary.name}"
pdf.move_down(5)
pdf.text "#{@process_register.proprietary.name}"

pdf.text "Alima Minha esposa adorado"*100, :heading => 2
