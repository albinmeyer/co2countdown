extends Tabs


func init_states():
	# init the states of all the buttons for Europe
	get_node("TabContainerEurope/Traffic/Node2DTrafficInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerEurope/Traffic/Node2DTrafficInfrastructure/ColorRectEfficiency/ColorRectEff2/TextureButtonEfficiency25").set_active()
	get_node("TabContainerEurope/Traffic/Node2DTrafficInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerEurope/Traffic/Node2DTrafficInfrastructure/Data").continentName = "Europe"

	get_node("TabContainerEurope/Energy/Node2DEnergyInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerEurope/Energy/Node2DEnergyInfrastructure/ColorRectEfficiency/ColorRectEff2/TextureButtonEfficiency25").set_active()
	get_node("TabContainerEurope/Energy/Node2DEnergyInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerEurope/Energy/Node2DEnergyInfrastructure/Data").continentName = "Europe"

	get_node("TabContainerEurope/Agriculture/Node2DAgronomicalInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerEurope/Agriculture/Node2DAgronomicalInfrastructure/ColorRectEfficiency/ColorRectEff2/TextureButtonEfficiency25").set_active()
	get_node("TabContainerEurope/Agriculture/Node2DAgronomicalInfrastructure/ColorRectSufficiency/ColorRectSuff2/TextureButtonSufficiency50").set_active()
	get_node("TabContainerEurope/Agriculture/Node2DAgronomicalInfrastructure/Data").continentName = "Europe"

	get_node("TabContainerEurope/Buildings/Node2DBuildingInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerEurope/Buildings/Node2DBuildingInfrastructure/ColorRectEfficiency/ColorRectEff2/TextureButtonEfficiency25").set_active()
	get_node("TabContainerEurope/Buildings/Node2DBuildingInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerEurope/Buildings/Node2DBuildingInfrastructure/Data").continentName = "Europe"

	get_node("TabContainerEurope/Industry/Node2DIndustryInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerEurope/Industry/Node2DIndustryInfrastructure/ColorRectEfficiency/ColorRectEff2/TextureButtonEfficiency25").set_active()
	get_node("TabContainerEurope/Industry/Node2DIndustryInfrastructure/ColorRectSufficiency/ColorRectSuff2/TextureButtonSufficiency50").set_active()
	get_node("TabContainerEurope/Industry/Node2DIndustryInfrastructure/Data").continentName = "Europe"
