{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.SavingsPlansPurchaseRecommendation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SavingsPlansPurchaseRecommendation where

import Network.AWS.CostExplorer.Types.AccountScope
import Network.AWS.CostExplorer.Types.LookbackPeriodInDays
import Network.AWS.CostExplorer.Types.PaymentOption
import Network.AWS.CostExplorer.Types.SavingsPlansPurchaseRecommendationDetail
import Network.AWS.CostExplorer.Types.SavingsPlansPurchaseRecommendationSummary
import Network.AWS.CostExplorer.Types.SupportedSavingsPlansType
import Network.AWS.CostExplorer.Types.TermInYears
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains your request parameters, Savings Plan Recommendations Summary, and Details.
--
--
--
-- /See:/ 'savingsPlansPurchaseRecommendation' smart constructor.
data SavingsPlansPurchaseRecommendation = SavingsPlansPurchaseRecommendation'
  { _spprPaymentOption ::
      !( Maybe
           PaymentOption
       ),
    _spprSavingsPlansPurchaseRecommendationSummary ::
      !( Maybe
           SavingsPlansPurchaseRecommendationSummary
       ),
    _spprAccountScope ::
      !( Maybe
           AccountScope
       ),
    _spprTermInYears ::
      !( Maybe
           TermInYears
       ),
    _spprSavingsPlansPurchaseRecommendationDetails ::
      !( Maybe
           [SavingsPlansPurchaseRecommendationDetail]
       ),
    _spprSavingsPlansType ::
      !( Maybe
           SupportedSavingsPlansType
       ),
    _spprLookbackPeriodInDays ::
      !( Maybe
           LookbackPeriodInDays
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SavingsPlansPurchaseRecommendation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spprPaymentOption' - The payment option used to generate the recommendation.
--
-- * 'spprSavingsPlansPurchaseRecommendationSummary' - Summary metrics for your Savings Plans Recommendations.
--
-- * 'spprAccountScope' - The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to @PAYER@ . If the value is @LINKED@ , recommendations are calculated for individual member accounts only.
--
-- * 'spprTermInYears' - The Savings Plans recommendation term in years, used to generate the recommendation.
--
-- * 'spprSavingsPlansPurchaseRecommendationDetails' - Details for the Savings Plans we recommend that you purchase to cover existing Savings Plans eligible workloads.
--
-- * 'spprSavingsPlansType' - The requested Savings Plans recommendation type.
--
-- * 'spprLookbackPeriodInDays' - The lookback period in days, used to generate the recommendation.
savingsPlansPurchaseRecommendation ::
  SavingsPlansPurchaseRecommendation
savingsPlansPurchaseRecommendation =
  SavingsPlansPurchaseRecommendation'
    { _spprPaymentOption =
        Nothing,
      _spprSavingsPlansPurchaseRecommendationSummary =
        Nothing,
      _spprAccountScope = Nothing,
      _spprTermInYears = Nothing,
      _spprSavingsPlansPurchaseRecommendationDetails =
        Nothing,
      _spprSavingsPlansType = Nothing,
      _spprLookbackPeriodInDays = Nothing
    }

-- | The payment option used to generate the recommendation.
spprPaymentOption :: Lens' SavingsPlansPurchaseRecommendation (Maybe PaymentOption)
spprPaymentOption = lens _spprPaymentOption (\s a -> s {_spprPaymentOption = a})

-- | Summary metrics for your Savings Plans Recommendations.
spprSavingsPlansPurchaseRecommendationSummary :: Lens' SavingsPlansPurchaseRecommendation (Maybe SavingsPlansPurchaseRecommendationSummary)
spprSavingsPlansPurchaseRecommendationSummary = lens _spprSavingsPlansPurchaseRecommendationSummary (\s a -> s {_spprSavingsPlansPurchaseRecommendationSummary = a})

-- | The account scope that you want your recommendations for. Amazon Web Services calculates recommendations including the management account and member accounts if the value is set to @PAYER@ . If the value is @LINKED@ , recommendations are calculated for individual member accounts only.
spprAccountScope :: Lens' SavingsPlansPurchaseRecommendation (Maybe AccountScope)
spprAccountScope = lens _spprAccountScope (\s a -> s {_spprAccountScope = a})

-- | The Savings Plans recommendation term in years, used to generate the recommendation.
spprTermInYears :: Lens' SavingsPlansPurchaseRecommendation (Maybe TermInYears)
spprTermInYears = lens _spprTermInYears (\s a -> s {_spprTermInYears = a})

-- | Details for the Savings Plans we recommend that you purchase to cover existing Savings Plans eligible workloads.
spprSavingsPlansPurchaseRecommendationDetails :: Lens' SavingsPlansPurchaseRecommendation [SavingsPlansPurchaseRecommendationDetail]
spprSavingsPlansPurchaseRecommendationDetails = lens _spprSavingsPlansPurchaseRecommendationDetails (\s a -> s {_spprSavingsPlansPurchaseRecommendationDetails = a}) . _Default . _Coerce

-- | The requested Savings Plans recommendation type.
spprSavingsPlansType :: Lens' SavingsPlansPurchaseRecommendation (Maybe SupportedSavingsPlansType)
spprSavingsPlansType = lens _spprSavingsPlansType (\s a -> s {_spprSavingsPlansType = a})

-- | The lookback period in days, used to generate the recommendation.
spprLookbackPeriodInDays :: Lens' SavingsPlansPurchaseRecommendation (Maybe LookbackPeriodInDays)
spprLookbackPeriodInDays = lens _spprLookbackPeriodInDays (\s a -> s {_spprLookbackPeriodInDays = a})

instance FromJSON SavingsPlansPurchaseRecommendation where
  parseJSON =
    withObject
      "SavingsPlansPurchaseRecommendation"
      ( \x ->
          SavingsPlansPurchaseRecommendation'
            <$> (x .:? "PaymentOption")
            <*> (x .:? "SavingsPlansPurchaseRecommendationSummary")
            <*> (x .:? "AccountScope")
            <*> (x .:? "TermInYears")
            <*> ( x .:? "SavingsPlansPurchaseRecommendationDetails"
                    .!= mempty
                )
            <*> (x .:? "SavingsPlansType")
            <*> (x .:? "LookbackPeriodInDays")
      )

instance Hashable SavingsPlansPurchaseRecommendation

instance NFData SavingsPlansPurchaseRecommendation
