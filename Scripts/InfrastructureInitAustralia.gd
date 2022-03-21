extends Tabs


func init_states():
	# init the states of all the buttons for Australia
	get_node("TabContainerAustralia/Traffic/Node2DTrafficInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerAustralia/Traffic/Node2DTrafficInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAustralia/Traffic/Node2DTrafficInfrastructure/ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").set_active()
	get_node("TabContainerAustralia/Traffic/Node2DTrafficInfrastructure/Data").continentName = "Australia"

	get_node("TabContainerAustralia/Energy/Node2DEnergyInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerAustralia/Energy/Node2DEnergyInfrastructure/ColorRectEfficiency/ColorRectEff2/TextureButtonEfficiency25").set_active()
	get_node("TabContainerAustralia/Energy/Node2DEnergyInfrastructure/ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").set_active()
	get_node("TabContainerAustralia/Energy/Node2DEnergyInfrastructure/Data").continentName = "Australia"

	get_node("TabContainerAustralia/Agriculture/Node2DAgronomicalInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerAustralia/Agriculture/Node2DAgronomicalInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAustralia/Agriculture/Node2DAgronomicalInfrastructure/ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").set_active()
	get_node("TabContainerAustralia/Agriculture/Node2DAgronomicalInfrastructure/Data").continentName = "Australia"

	get_node("TabContainerAustralia/Buildings/Node2DBuildingInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerAustralia/Buildings/Node2DBuildingInfrastructure/ColorRectEfficiency/ColorRectEff2/TextureButtonEfficiency25").set_active()
	get_node("TabContainerAustralia/Buildings/Node2DBuildingInfrastructure/ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").set_active()
	get_node("TabContainerAustralia/Buildings/Node2DBuildingInfrastructure/Data").continentName = "Australia"

	get_node("TabContainerAustralia/Industry/Node2DIndustryInfrastructure/ColorRectSubstitution/ColorRect2/TextureButtonFossil75Electric25").set_active()
	get_node("TabContainerAustralia/Industry/Node2DIndustryInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAustralia/Industry/Node2DIndustryInfrastructure/ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").set_active()
	get_node("TabContainerAustralia/Industry/Node2DIndustryInfrastructure/Data").continentName = "Australia"
