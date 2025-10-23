$(BINFILE): $(C) $(CP) $(H) $(HP)
	$(CXX) -o $@ $(C) $(CP) $(L)
