create_clock -period 8.335 [get_ports PixelClk]
create_generated_clock -source [get_ports PixelClk] -multiply_by 5 [get_ports SerialClk]