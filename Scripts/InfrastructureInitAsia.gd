extends Tabs


func init_states():
	# init the states of all the buttons for Asia
	get_node("TabContainerAsia/Traffic/Node2DTrafficInfrastructure/ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").set_active()
	get_node("TabContainerAsia/Traffic/Node2DTrafficInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAsia/Traffic/Node2DTrafficInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerAsia/Traffic/Node2DTrafficInfrastructure/Data").continentName = "Asia"

	get_node("TabContainerAsia/Energy/Node2DEnergyInfrastructure/ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").set_active()
	get_node("TabContainerAsia/Energy/Node2DEnergyInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAsia/Energy/Node2DEnergyInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerAsia/Energy/Node2DEnergyInfrastructure/Data").continentName = "Asia"

	get_node("TabContainerAsia/Agriculture/Node2DAgronomicalInfrastructure/ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").set_active()
	get_node("TabContainerAsia/Agriculture/Node2DAgronomicalInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAsia/Agriculture/Node2DAgronomicalInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerAsia/Agriculture/Node2DAgronomicalInfrastructure/Data").continentName = "Asia"

	get_node("TabContainerAsia/Buildings/Node2DBuildingInfrastructure/ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").set_active()
	get_node("TabContainerAsia/Buildings/Node2DBuildingInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAsia/Buildings/Node2DBuildingInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerAsia/Buildings/Node2DBuildingInfrastructure/Data").continentName = "Asia"

	get_node("TabContainerAsia/Industry/Node2DIndustryInfrastructure/ColorRectSubstitution/ColorRect1/TextureButtonFossil100Electric0").set_active()
	get_node("TabContainerAsia/Industry/Node2DIndustryInfrastructure/ColorRectEfficiency/ColorRectEff1/TextureButtonEfficiency0").set_active()
	get_node("TabContainerAsia/Industry/Node2DIndustryInfrastructure/ColorRectSufficiency/ColorRectSuff1/TextureButtonSufficiency0").set_active()
	get_node("TabContainerAsia/Industry/Node2DIndustryInfrastructure/Data").continentName = "Asia"
