if current_user.profile == "Atendedor"
  pdf = Prawn::Document.new(:page_size => 'A5', :page_layout => :landscape)
  pdf.bounding_box([0,350], :width => 520)do
    pdf.font "Times-Roman"
    pdf.text "ID: <b>#{@process_register.id}</b>", :size => 8, :inline_format => true 
    pdf.image "#{RAILS_ROOT}/public/images/rep.png", :position => :center
    pdf.move_down(5)
    pdf.text "República de Moçambique", :align => :center 
    pdf.text "-----", :align => :center 
    pdf.text "Procuradoria da República", :align => :center 
    pdf.text "Registo de Automóveis", :align => :center, :size => 24
    pdf.move_down(15) 
    pdf.text "Veículo automóvel com  a matrícula <b><i>#{@process_register.vehicle.name}</i></b>", :inline_format => true
    pdf.move_down(10)
    pdf.text "O presente documento permite a circulação do veículo acima indicado, nos termos do parágrafo 2º" + 
              " do artigo 13ª do Decreto nº 40 080, de 8 de Março de 1995, e do nº 3 do do artigo 42º do"+ 
              " Código da Estrada.", :align => :justify, :leading => 2  
    pdf.pad(5){pdf.text "até ao dia........ de ........................... de 20........, data em que impreterivelmente caduca."}
    pdf.pad(15){pdf.text "O Conservador", :align => :center}
    pdf.pad(10){pdf.text "...............................................................", :align => :center}
    pdf.pad(10){pdf.text "N.B.: Esta parte do guia não dá o direito"+
                          "\n"+"ao levantamento do livrete e do título.", :size => 9}
  end
else
  pdf = Prawn::Document.new(:page_size => [350, 550], :page_layout => :landscape)
  pdf.bounding_box([0,285], :width => 220)do
    pdf.font "Times-Roman"
    pdf.text "Veículo automóvel <b><i>#{@process_register.vehicle.name}</i></b>", :inline_format => true
    pdf.move_down(10)
    pdf.text "Em #{@process_register.updated_at.day} do mês #{@process_register.updated_at.month} de #{@process_register.updated_at.year}"+
              " foi efectuado o registo de propriedade a favor de <b><i>#{@process_register.proprietary.name}</i></b>"+
              " residente no #{@process_register.proprietary.address}.", :align => :justify, :leading => 2, :inline_format => true   
    pdf.text "............" * 91
  end
  pdf.bounding_box([255,285], :width => 220)do
    pdf.font "Times-Roman"
    pdf.text "Veículo automóvel <b><i>#{@process_register.vehicle.name}</i></b>", :inline_format => true
    pdf.pad(10){pdf.text "..............." * 91, :align => :justify}
  end
end