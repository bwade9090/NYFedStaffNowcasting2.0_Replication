// --+ options: stochastic,json=compute +--
var
    AllIndustryProduction_OBS
    ManufacturingProduction_OBS
    ServiceActivities_OBS
    RetailSales_OBS
    EquipmentInvestment_OBS
    ConstructionCompleted_OBS
    UnemploymentBenefitApplications_OBS
    CustomsExportAmount_OBS
    GDP_OBS
    GNI_OBS
    AllIndustryProduction
    ManufacturingProduction
    ServiceActivities
    RetailSales
    EquipmentInvestment
    ConstructionCompleted
    UnemploymentBenefitApplications
    CustomsExportAmount
    GDP
    GNI
    Factor_All
    Factor_Trend
    Factor_Export
    Factor_DomesticDemand
    Error_AllIndustryProduction
    Error_ManufacturingProduction
    Error_ServiceActivities
    Error_RetailSales
    Error_EquipmentInvestment
    Error_ConstructionCompleted
    Error_UnemploymentBenefitApplications
    Error_CustomsExportAmount
    Error_GDP
    Error_GNI
    Trend_GDP
    Trend_GNI
    sigma_f_All
    sigma_f_Trend
    sigma_f_Export
    sigma_f_DomesticDemand
    sigma_e_AllIndustryProduction
    sigma_e_ManufacturingProduction
    sigma_e_ServiceActivities
    sigma_e_RetailSales
    sigma_e_EquipmentInvestment
    sigma_e_ConstructionCompleted
    sigma_e_UnemploymentBenefitApplications
    sigma_e_CustomsExportAmount
    sigma_e_GDP
    sigma_e_GNI
;
parameters
    mu_AllIndustryProduction
    mu_ManufacturingProduction
    mu_ServiceActivities
    mu_RetailSales
    mu_EquipmentInvestment
    mu_ConstructionCompleted
    mu_UnemploymentBenefitApplications
    mu_CustomsExportAmount
    mu_GDP
    mu_GNI
    lambda_AllIndustryProduction_All
    lambda_ManufacturingProduction_All
    lambda_ServiceActivities_All
    lambda_RetailSales_All
    lambda_EquipmentInvestment_All
    lambda_ConstructionCompleted_All
    lambda_UnemploymentBenefitApplications_All
    lambda_CustomsExportAmount_All
    lambda_GDP_All
    lambda_GNI_All
    lambda_GDP_Trend
    lambda_GNI_Trend
    lambda_EquipmentInvestment_Export
    lambda_CustomsExportAmount_Export
    lambda_RetailSales_DomesticDemand
    lambda_EquipmentInvestment_DomesticDemand
    lambda_ConstructionCompleted_DomesticDemand
    phi_f_All_All_lag1
    phi_f_Trend_All_lag1
    phi_f_Export_All_lag1
    phi_f_DomesticDemand_All_lag1
    phi_f_All_Trend_lag1
    phi_f_Trend_Trend_lag1
    phi_f_Export_Trend_lag1
    phi_f_DomesticDemand_Trend_lag1
    phi_f_All_Export_lag1
    phi_f_Trend_Export_lag1
    phi_f_Export_Export_lag1
    phi_f_DomesticDemand_Export_lag1
    phi_f_All_DomesticDemand_lag1
    phi_f_Trend_DomesticDemand_lag1
    phi_f_Export_DomesticDemand_lag1
    phi_f_DomesticDemand_DomesticDemand_lag1
    phi_f_All_All_lag2
    phi_f_Trend_All_lag2
    phi_f_Export_All_lag2
    phi_f_DomesticDemand_All_lag2
    phi_f_All_Trend_lag2
    phi_f_Trend_Trend_lag2
    phi_f_Export_Trend_lag2
    phi_f_DomesticDemand_Trend_lag2
    phi_f_All_Export_lag2
    phi_f_Trend_Export_lag2
    phi_f_Export_Export_lag2
    phi_f_DomesticDemand_Export_lag2
    phi_f_All_DomesticDemand_lag2
    phi_f_Trend_DomesticDemand_lag2
    phi_f_Export_DomesticDemand_lag2
    phi_f_DomesticDemand_DomesticDemand_lag2
    phi_f_All_All_lag3
    phi_f_Trend_All_lag3
    phi_f_Export_All_lag3
    phi_f_DomesticDemand_All_lag3
    phi_f_All_Trend_lag3
    phi_f_Trend_Trend_lag3
    phi_f_Export_Trend_lag3
    phi_f_DomesticDemand_Trend_lag3
    phi_f_All_Export_lag3
    phi_f_Trend_Export_lag3
    phi_f_Export_Export_lag3
    phi_f_DomesticDemand_Export_lag3
    phi_f_All_DomesticDemand_lag3
    phi_f_Trend_DomesticDemand_lag3
    phi_f_Export_DomesticDemand_lag3
    phi_f_DomesticDemand_DomesticDemand_lag3
    phi_f_All_All_lag4
    phi_f_Trend_All_lag4
    phi_f_Export_All_lag4
    phi_f_DomesticDemand_All_lag4
    phi_f_All_Trend_lag4
    phi_f_Trend_Trend_lag4
    phi_f_Export_Trend_lag4
    phi_f_DomesticDemand_Trend_lag4
    phi_f_All_Export_lag4
    phi_f_Trend_Export_lag4
    phi_f_Export_Export_lag4
    phi_f_DomesticDemand_Export_lag4
    phi_f_All_DomesticDemand_lag4
    phi_f_Trend_DomesticDemand_lag4
    phi_f_Export_DomesticDemand_lag4
    phi_f_DomesticDemand_DomesticDemand_lag4
    phi_e_AllIndustryProduction_lag1
    phi_e_ManufacturingProduction_lag1
    phi_e_ServiceActivities_lag1
    phi_e_RetailSales_lag1
    phi_e_EquipmentInvestment_lag1
    phi_e_ConstructionCompleted_lag1
    phi_e_UnemploymentBenefitApplications_lag1
    phi_e_CustomsExportAmount_lag1
    phi_e_GDP_lag1
    phi_e_GNI_lag1
    phi_e_AllIndustryProduction_lag2
    phi_e_ManufacturingProduction_lag2
    phi_e_ServiceActivities_lag2
    phi_e_RetailSales_lag2
    phi_e_EquipmentInvestment_lag2
    phi_e_ConstructionCompleted_lag2
    phi_e_UnemploymentBenefitApplications_lag2
    phi_e_CustomsExportAmount_lag2
    phi_e_GDP_lag2
    phi_e_GNI_lag2
    gamma_g_GDP
    gamma_g_GNI
    gamma_f_All
    gamma_f_Trend
    gamma_f_Export
    gamma_f_DomesticDemand
    gamma_e_AllIndustryProduction
    gamma_e_ManufacturingProduction
    gamma_e_ServiceActivities
    gamma_e_RetailSales
    gamma_e_EquipmentInvestment
    gamma_e_ConstructionCompleted
    gamma_e_UnemploymentBenefitApplications
    gamma_e_CustomsExportAmount
    gamma_e_GDP
    gamma_e_GNI
;
varexo
    outlier_f_All
    outlier_f_Trend
    outlier_f_Export
    outlier_f_DomesticDemand
    epsilon_f_All
    epsilon_f_Trend
    epsilon_f_Export
    epsilon_f_DomesticDemand
    outlier_e_AllIndustryProduction
    outlier_e_ManufacturingProduction
    outlier_e_ServiceActivities
    outlier_e_RetailSales
    outlier_e_EquipmentInvestment
    outlier_e_ConstructionCompleted
    outlier_e_UnemploymentBenefitApplications
    outlier_e_CustomsExportAmount
    outlier_e_GDP
    outlier_e_GNI
    epsilon_e_AllIndustryProduction
    epsilon_e_ManufacturingProduction
    epsilon_e_ServiceActivities
    epsilon_e_RetailSales
    epsilon_e_EquipmentInvestment
    epsilon_e_ConstructionCompleted
    epsilon_e_UnemploymentBenefitApplications
    epsilon_e_CustomsExportAmount
    epsilon_e_GDP
    epsilon_e_GNI
    upsilon_g_GDP
    upsilon_g_GNI
    upsilon_f_All
    upsilon_f_Trend
    upsilon_f_Export
    upsilon_f_DomesticDemand
    upsilon_e_AllIndustryProduction
    upsilon_e_ManufacturingProduction
    upsilon_e_ServiceActivities
    upsilon_e_RetailSales
    upsilon_e_EquipmentInvestment
    upsilon_e_ConstructionCompleted
    upsilon_e_UnemploymentBenefitApplications
    upsilon_e_CustomsExportAmount
    upsilon_e_GDP
    upsilon_e_GNI
;
model;
    AllIndustryProduction_OBS=AllIndustryProduction;
    ManufacturingProduction_OBS=ManufacturingProduction;
    ServiceActivities_OBS=ServiceActivities;
    RetailSales_OBS=RetailSales;
    EquipmentInvestment_OBS=EquipmentInvestment;
    ConstructionCompleted_OBS=ConstructionCompleted;
    UnemploymentBenefitApplications_OBS=UnemploymentBenefitApplications;
    CustomsExportAmount_OBS=CustomsExportAmount;
    GDP_OBS=(GDP + 2*GDP(-1) + 3*GDP(-2) + 2*GDP(-3) + GDP(-4))/3;
    GNI_OBS=(GNI + 2*GNI(-1) + 3*GNI(-2) + 2*GNI(-3) + GNI(-4))/3;
    AllIndustryProduction=mu_AllIndustryProduction + lambda_AllIndustryProduction_All*Factor_All + Error_AllIndustryProduction;
    ManufacturingProduction=mu_ManufacturingProduction + lambda_ManufacturingProduction_All*Factor_All + Error_ManufacturingProduction;
    ServiceActivities=mu_ServiceActivities + lambda_ServiceActivities_All*Factor_All + Error_ServiceActivities;
    RetailSales=mu_RetailSales + lambda_RetailSales_All*Factor_All + lambda_RetailSales_DomesticDemand*Factor_DomesticDemand + Error_RetailSales;
    EquipmentInvestment=mu_EquipmentInvestment + lambda_EquipmentInvestment_All*Factor_All + lambda_EquipmentInvestment_Export*Factor_Export + lambda_EquipmentInvestment_DomesticDemand*Factor_DomesticDemand + Error_EquipmentInvestment;
    ConstructionCompleted=mu_ConstructionCompleted + lambda_ConstructionCompleted_All*Factor_All + lambda_ConstructionCompleted_DomesticDemand*Factor_DomesticDemand + Error_ConstructionCompleted;
    UnemploymentBenefitApplications=mu_UnemploymentBenefitApplications + lambda_UnemploymentBenefitApplications_All*Factor_All + Error_UnemploymentBenefitApplications;
    CustomsExportAmount=mu_CustomsExportAmount + lambda_CustomsExportAmount_All*Factor_All + lambda_CustomsExportAmount_Export*Factor_Export + Error_CustomsExportAmount;
    GDP=mu_GDP + Trend_GDP + lambda_GDP_All*Factor_All + lambda_GDP_Trend*Factor_Trend + Error_GDP;
    GNI=mu_GNI + Trend_GNI + lambda_GNI_All*Factor_All + lambda_GNI_Trend*Factor_Trend + Error_GNI;
    Factor_All=phi_f_All_All_lag1*Factor_All(-1) + phi_f_All_Trend_lag1*Factor_Trend(-1) + phi_f_All_Export_lag1*Factor_Export(-1) + phi_f_All_DomesticDemand_lag1*Factor_DomesticDemand(-1) + phi_f_All_All_lag2*Factor_All(-2) + phi_f_All_Trend_lag2*Factor_Trend(-2) + phi_f_All_Export_lag2*Factor_Export(-2) + phi_f_All_DomesticDemand_lag2*Factor_DomesticDemand(-2) + phi_f_All_All_lag3*Factor_All(-3) + phi_f_All_Trend_lag3*Factor_Trend(-3) + phi_f_All_Export_lag3*Factor_Export(-3) + phi_f_All_DomesticDemand_lag3*Factor_DomesticDemand(-3) + phi_f_All_All_lag4*Factor_All(-4) + phi_f_All_Trend_lag4*Factor_Trend(-4) + phi_f_All_Export_lag4*Factor_Export(-4) + phi_f_All_DomesticDemand_lag4*Factor_DomesticDemand(-4) + sigma_f_All*outlier_f_All*epsilon_f_All;
    Factor_Trend=phi_f_Trend_All_lag1*Factor_All(-1) + phi_f_Trend_Trend_lag1*Factor_Trend(-1) + phi_f_Trend_Export_lag1*Factor_Export(-1) + phi_f_Trend_DomesticDemand_lag1*Factor_DomesticDemand(-1) + phi_f_Trend_All_lag2*Factor_All(-2) + phi_f_Trend_Trend_lag2*Factor_Trend(-2) + phi_f_Trend_Export_lag2*Factor_Export(-2) + phi_f_Trend_DomesticDemand_lag2*Factor_DomesticDemand(-2) + phi_f_Trend_All_lag3*Factor_All(-3) + phi_f_Trend_Trend_lag3*Factor_Trend(-3) + phi_f_Trend_Export_lag3*Factor_Export(-3) + phi_f_Trend_DomesticDemand_lag3*Factor_DomesticDemand(-3) + phi_f_Trend_All_lag4*Factor_All(-4) + phi_f_Trend_Trend_lag4*Factor_Trend(-4) + phi_f_Trend_Export_lag4*Factor_Export(-4) + phi_f_Trend_DomesticDemand_lag4*Factor_DomesticDemand(-4) + sigma_f_Trend*outlier_f_Trend*epsilon_f_Trend;
    Factor_Export=phi_f_Export_All_lag1*Factor_All(-1) + phi_f_Export_Trend_lag1*Factor_Trend(-1) + phi_f_Export_Export_lag1*Factor_Export(-1) + phi_f_Export_DomesticDemand_lag1*Factor_DomesticDemand(-1) + phi_f_Export_All_lag2*Factor_All(-2) + phi_f_Export_Trend_lag2*Factor_Trend(-2) + phi_f_Export_Export_lag2*Factor_Export(-2) + phi_f_Export_DomesticDemand_lag2*Factor_DomesticDemand(-2) + phi_f_Export_All_lag3*Factor_All(-3) + phi_f_Export_Trend_lag3*Factor_Trend(-3) + phi_f_Export_Export_lag3*Factor_Export(-3) + phi_f_Export_DomesticDemand_lag3*Factor_DomesticDemand(-3) + phi_f_Export_All_lag4*Factor_All(-4) + phi_f_Export_Trend_lag4*Factor_Trend(-4) + phi_f_Export_Export_lag4*Factor_Export(-4) + phi_f_Export_DomesticDemand_lag4*Factor_DomesticDemand(-4) + sigma_f_Export*outlier_f_Export*epsilon_f_Export;
    Factor_DomesticDemand=phi_f_DomesticDemand_All_lag1*Factor_All(-1) + phi_f_DomesticDemand_Trend_lag1*Factor_Trend(-1) + phi_f_DomesticDemand_Export_lag1*Factor_Export(-1) + phi_f_DomesticDemand_DomesticDemand_lag1*Factor_DomesticDemand(-1) + phi_f_DomesticDemand_All_lag2*Factor_All(-2) + phi_f_DomesticDemand_Trend_lag2*Factor_Trend(-2) + phi_f_DomesticDemand_Export_lag2*Factor_Export(-2) + phi_f_DomesticDemand_DomesticDemand_lag2*Factor_DomesticDemand(-2) + phi_f_DomesticDemand_All_lag3*Factor_All(-3) + phi_f_DomesticDemand_Trend_lag3*Factor_Trend(-3) + phi_f_DomesticDemand_Export_lag3*Factor_Export(-3) + phi_f_DomesticDemand_DomesticDemand_lag3*Factor_DomesticDemand(-3) + phi_f_DomesticDemand_All_lag4*Factor_All(-4) + phi_f_DomesticDemand_Trend_lag4*Factor_Trend(-4) + phi_f_DomesticDemand_Export_lag4*Factor_Export(-4) + phi_f_DomesticDemand_DomesticDemand_lag4*Factor_DomesticDemand(-4) + sigma_f_DomesticDemand*outlier_f_DomesticDemand*epsilon_f_DomesticDemand;
    Error_AllIndustryProduction=phi_e_AllIndustryProduction_lag1*Error_AllIndustryProduction(-1) + phi_e_AllIndustryProduction_lag2*Error_AllIndustryProduction(-2) + sigma_e_AllIndustryProduction*outlier_e_AllIndustryProduction*epsilon_e_AllIndustryProduction;
    Error_ManufacturingProduction=phi_e_ManufacturingProduction_lag1*Error_ManufacturingProduction(-1) + phi_e_ManufacturingProduction_lag2*Error_ManufacturingProduction(-2) + sigma_e_ManufacturingProduction*outlier_e_ManufacturingProduction*epsilon_e_ManufacturingProduction;
    Error_ServiceActivities=phi_e_ServiceActivities_lag1*Error_ServiceActivities(-1) + phi_e_ServiceActivities_lag2*Error_ServiceActivities(-2) + sigma_e_ServiceActivities*outlier_e_ServiceActivities*epsilon_e_ServiceActivities;
    Error_RetailSales=phi_e_RetailSales_lag1*Error_RetailSales(-1) + phi_e_RetailSales_lag2*Error_RetailSales(-2) + sigma_e_RetailSales*outlier_e_RetailSales*epsilon_e_RetailSales;
    Error_EquipmentInvestment=phi_e_EquipmentInvestment_lag1*Error_EquipmentInvestment(-1) + phi_e_EquipmentInvestment_lag2*Error_EquipmentInvestment(-2) + sigma_e_EquipmentInvestment*outlier_e_EquipmentInvestment*epsilon_e_EquipmentInvestment;
    Error_ConstructionCompleted=phi_e_ConstructionCompleted_lag1*Error_ConstructionCompleted(-1) + phi_e_ConstructionCompleted_lag2*Error_ConstructionCompleted(-2) + sigma_e_ConstructionCompleted*outlier_e_ConstructionCompleted*epsilon_e_ConstructionCompleted;
    Error_UnemploymentBenefitApplications=phi_e_UnemploymentBenefitApplications_lag1*Error_UnemploymentBenefitApplications(-1) + phi_e_UnemploymentBenefitApplications_lag2*Error_UnemploymentBenefitApplications(-2) + sigma_e_UnemploymentBenefitApplications*outlier_e_UnemploymentBenefitApplications*epsilon_e_UnemploymentBenefitApplications;
    Error_CustomsExportAmount=phi_e_CustomsExportAmount_lag1*Error_CustomsExportAmount(-1) + phi_e_CustomsExportAmount_lag2*Error_CustomsExportAmount(-2) + sigma_e_CustomsExportAmount*outlier_e_CustomsExportAmount*epsilon_e_CustomsExportAmount;
    Error_GDP=phi_e_GDP_lag1*Error_GDP(-1) + phi_e_GDP_lag2*Error_GDP(-2) + sigma_e_GDP*outlier_e_GDP*epsilon_e_GDP;
    Error_GNI=phi_e_GNI_lag1*Error_GNI(-1) + phi_e_GNI_lag2*Error_GNI(-2) + sigma_e_GNI*outlier_e_GNI*epsilon_e_GNI;
    Trend_GDP=Trend_GDP(-1) + gamma_g_GDP*upsilon_g_GDP;
    Trend_GNI=Trend_GNI(-1) + gamma_g_GNI*upsilon_g_GNI;
    log(sigma_f_All^2)=log(sigma_f_All(-1)^2) + gamma_f_All*upsilon_f_All;
    log(sigma_f_Trend^2)=log(sigma_f_Trend(-1)^2) + gamma_f_Trend*upsilon_f_Trend;
    log(sigma_f_Export^2)=log(sigma_f_Export(-1)^2) + gamma_f_Export*upsilon_f_Export;
    log(sigma_f_DomesticDemand^2)=log(sigma_f_DomesticDemand(-1)^2) + gamma_f_DomesticDemand*upsilon_f_DomesticDemand;
    log(sigma_e_AllIndustryProduction^2)=log(sigma_e_AllIndustryProduction(-1)^2) + gamma_e_AllIndustryProduction*upsilon_e_AllIndustryProduction;
    log(sigma_e_ManufacturingProduction^2)=log(sigma_e_ManufacturingProduction(-1)^2) + gamma_e_ManufacturingProduction*upsilon_e_ManufacturingProduction;
    log(sigma_e_ServiceActivities^2)=log(sigma_e_ServiceActivities(-1)^2) + gamma_e_ServiceActivities*upsilon_e_ServiceActivities;
    log(sigma_e_RetailSales^2)=log(sigma_e_RetailSales(-1)^2) + gamma_e_RetailSales*upsilon_e_RetailSales;
    log(sigma_e_EquipmentInvestment^2)=log(sigma_e_EquipmentInvestment(-1)^2) + gamma_e_EquipmentInvestment*upsilon_e_EquipmentInvestment;
    log(sigma_e_ConstructionCompleted^2)=log(sigma_e_ConstructionCompleted(-1)^2) + gamma_e_ConstructionCompleted*upsilon_e_ConstructionCompleted;
    log(sigma_e_UnemploymentBenefitApplications^2)=log(sigma_e_UnemploymentBenefitApplications(-1)^2) + gamma_e_UnemploymentBenefitApplications*upsilon_e_UnemploymentBenefitApplications;
    log(sigma_e_CustomsExportAmount^2)=log(sigma_e_CustomsExportAmount(-1)^2) + gamma_e_CustomsExportAmount*upsilon_e_CustomsExportAmount;
    log(sigma_e_GDP^2)=log(sigma_e_GDP(-1)^2) + gamma_e_GDP*upsilon_e_GDP;
    log(sigma_e_GNI^2)=log(sigma_e_GNI(-1)^2) + gamma_e_GNI*upsilon_e_GNI;
end;
varobs
    AllIndustryProduction_OBS
    ManufacturingProduction_OBS
    ServiceActivities_OBS
    RetailSales_OBS
    EquipmentInvestment_OBS
    ConstructionCompleted_OBS
    UnemploymentBenefitApplications_OBS
    CustomsExportAmount_OBS
    GDP_OBS
    GNI_OBS
;
