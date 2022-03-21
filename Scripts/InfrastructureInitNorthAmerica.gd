extends Tabs


func init_states():
	# init the states of all the buttons for North America
	get_node("TabContainerNorthAmerica/Traffic/Node2DTrafficInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerNorthAmerica/Traffic/Node2DTrafficInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerNorthAmerica/Traffic/Node2DTrafficInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerNorthAmerica/Traffic/Node2DTrafficInfrastructure/Data").continentName = "NorthAmerica"

	get_node("TabContainerNorthAmerica/Energy/Node2DEnergyInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerNorthAmerica/Energy/Node2DEnergyInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerNorthAmerica/Energy/Node2DEnergyInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerNorthAmerica/Energy/Node2DEnergyInfrastructure/Data").continentName = "NorthAmerica"

	get_node("TabContainerNorthAmerica/Agriculture/Node2DAgronomicalInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerNorthAmerica/Agriculture/Node2DAgronomicalInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerNorthAmerica/Agriculture/Node2DAgronomicalInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerNorthAmerica/Agriculture/Node2DAgronomicalInfrastructure/Data").continentName = "NorthAmerica"

	get_node("TabContainerNorthAmerica/Buildings/Node2DBuildingInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerNorthAmerica/Buildings/Node2DBuildingInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerNorthAmerica/Buildings/Node2DBuildingInfrastructure/ColorRectSufficiency/ColorRectSuff2/TextureButtonSufficiency50").set_active()
	get_node("TabContainerNorthAmerica/Buildings/Node2DBuildingInfrastructure/Data").continentName = "NorthAmerica"

	get_node("TabContainerNorthAmerica/Industry/Node2DIndustryInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerNorthAmerica/Industry/Node2DIndustryInfrastructure/ColorRectEfficiency/ColorRectEff2/TextureButtonEfficiency25").set_active()
	get_node("TabContainerNorthAmerica/Industry/Node2DIndustryInfrastructure/ColorRectSufficiency/ColorRectSuff2/TextureButtonSufficiency50").set_active()
	get_node("TabContainerNorthAmerica/Industry/Node2DIndustryInfrastructure/Data").continentName = "NorthAmerica"
