extends Tabs


func init_states():
	# init the states of all the buttons for Africa
	get_node("TabContainerAfrica/Traffic/Node2DTrafficInfrastructure/ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").set_active()
	get_node("TabContainerAfrica/Traffic/Node2DTrafficInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAfrica/Traffic/Node2DTrafficInfrastructure/ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").set_active()
	get_node("TabContainerAfrica/Traffic/Node2DTrafficInfrastructure/Data").continentName = "Africa"

	get_node("TabContainerAfrica/Energy/Node2DEnergyInfrastructure/ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").set_active()
	get_node("TabContainerAfrica/Energy/Node2DEnergyInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAfrica/Energy/Node2DEnergyInfrastructure/ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").set_active()
	get_node("TabContainerAfrica/Energy/Node2DEnergyInfrastructure/Data").continentName = "Africa"

	get_node("TabContainerAfrica/Agriculture/Node2DAgronomicalInfrastructure/ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").set_active()
	get_node("TabContainerAfrica/Agriculture/Node2DAgronomicalInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAfrica/Agriculture/Node2DAgronomicalInfrastructure/ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").set_active()
	get_node("TabContainerAfrica/Agriculture/Node2DAgronomicalInfrastructure/Data").continentName = "Africa"

	get_node("TabContainerAfrica/Buildings/Node2DBuildingInfrastructure/ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").set_active()
	get_node("TabContainerAfrica/Buildings/Node2DBuildingInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAfrica/Buildings/Node2DBuildingInfrastructure/ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").set_active()
	get_node("TabContainerAfrica/Buildings/Node2DBuildingInfrastructure/Data").continentName = "Africa"

	get_node("TabContainerAfrica/Industry/Node2DIndustryInfrastructure/ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").set_active()
	get_node("TabContainerAfrica/Industry/Node2DIndustryInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAfrica/Industry/Node2DIndustryInfrastructure/ColorRectSufficiency/ColorRectSuff3/TextureButtonSufficiency100").set_active()
	get_node("TabContainerAfrica/Industry/Node2DIndustryInfrastructure/Data").continentName = "Africa"
