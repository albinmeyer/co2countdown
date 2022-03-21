extends Node

var continentName
var bipOfThisInfrastructurePerContinentPerTurn = 0
var co2OfThisInfrastructurePerContinentPerTurn = 0
var co2PercentageEff = 100
var co2PercentageSubst = 100
var economySize = 1

func getEconomySize():
	return economySize

func getContinentName():
	return continentName

func getBIP():
	return bipOfThisInfrastructurePerContinentPerTurn
	
func getCO2():
	var emission = co2OfThisInfrastructurePerContinentPerTurn*co2PercentageEff/100
	emission = emission*co2PercentageSubst/100
	return emission
