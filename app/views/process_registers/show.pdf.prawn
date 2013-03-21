pdf.page
pdf.text "Título provisório"
pdf.repeat(:all) do
  pdf.stroke do
   pdf.horizontal_rule
  end
end
	
pdf.move_down(5)
pdf.text "#{@process_register.proprietary.name}"
pdf.move_down(5)
pdf.text "#{@process_register.proprietary.name}"
