{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.ReservationPurchaseRecommendationDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.ReservationPurchaseRecommendationDetail where

import Network.AWS.CostExplorer.Types.InstanceDetails
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details about your recommended reservation purchase.
--
--
--
-- /See:/ 'reservationPurchaseRecommendationDetail' smart constructor.
data ReservationPurchaseRecommendationDetail = ReservationPurchaseRecommendationDetail'
  { _rprdUpfrontCost ::
      !( Maybe
           Text
       ),
    _rprdAccountId ::
      !( Maybe
           Text
       ),
    _rprdEstimatedMonthlySavingsAmount ::
      !( Maybe
           Text
       ),
    _rprdRecurringStandardMonthlyCost ::
      !( Maybe
           Text
       ),
    _rprdRecommendedNormalizedUnitsToPurchase ::
      !( Maybe
           Text
       ),
    _rprdAverageUtilization ::
      !( Maybe
           Text
       ),
    _rprdAverageNumberOfInstancesUsedPerHour ::
      !( Maybe
           Text
       ),
    _rprdEstimatedReservationCostForLookbackPeriod ::
      !( Maybe
           Text
       ),
    _rprdInstanceDetails ::
      !( Maybe
           InstanceDetails
       ),
    _rprdMaximumNumberOfInstancesUsedPerHour ::
      !( Maybe
           Text
       ),
    _rprdRecommendedNumberOfInstancesToPurchase ::
      !( Maybe
           Text
       ),
    _rprdCurrencyCode ::
      !( Maybe
           Text
       ),
    _rprdMinimumNormalizedUnitsUsedPerHour ::
      !( Maybe
           Text
       ),
    _rprdAverageNormalizedUnitsUsedPerHour ::
      !( Maybe
           Text
       ),
    _rprdMaximumNormalizedUnitsUsedPerHour ::
      !( Maybe
           Text
       ),
    _rprdEstimatedBreakEvenInMonths ::
      !( Maybe
           Text
       ),
    _rprdMinimumNumberOfInstancesUsedPerHour ::
      !( Maybe
           Text
       ),
    _rprdEstimatedMonthlySavingsPercentage ::
      !( Maybe
           Text
       ),
    _rprdEstimatedMonthlyOnDemandCost ::
      !( Maybe
           Text
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

-- | Creates a value of 'ReservationPurchaseRecommendationDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rprdUpfrontCost' - How much purchasing this instance costs you upfront.
--
-- * 'rprdAccountId' - The account that this RI recommendation is for.
--
-- * 'rprdEstimatedMonthlySavingsAmount' - How much AWS estimates that this specific recommendation could save you in a month.
--
-- * 'rprdRecurringStandardMonthlyCost' - How much purchasing this instance costs you on a monthly basis.
--
-- * 'rprdRecommendedNormalizedUnitsToPurchase' - The number of normalized units that AWS recommends that you purchase.
--
-- * 'rprdAverageUtilization' - The average utilization of your instances. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdAverageNumberOfInstancesUsedPerHour' - The average number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdEstimatedReservationCostForLookbackPeriod' - How much AWS estimates that you would have spent for all usage during the specified historical period if you had a reservation.
--
-- * 'rprdInstanceDetails' - Details about the instances that AWS recommends that you purchase.
--
-- * 'rprdMaximumNumberOfInstancesUsedPerHour' - The maximum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdRecommendedNumberOfInstancesToPurchase' - The number of instances that AWS recommends that you purchase.
--
-- * 'rprdCurrencyCode' - The currency code that AWS used to calculate the costs for this instance.
--
-- * 'rprdMinimumNormalizedUnitsUsedPerHour' - The minimum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdAverageNormalizedUnitsUsedPerHour' - The average number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdMaximumNormalizedUnitsUsedPerHour' - The maximum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdEstimatedBreakEvenInMonths' - How long AWS estimates that it takes for this instance to start saving you money, in months.
--
-- * 'rprdMinimumNumberOfInstancesUsedPerHour' - The minimum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
--
-- * 'rprdEstimatedMonthlySavingsPercentage' - How much AWS estimates that this specific recommendation could save you in a month, as a percentage of your overall costs.
--
-- * 'rprdEstimatedMonthlyOnDemandCost' - How much AWS estimates that you spend on On-Demand Instances in a month.
reservationPurchaseRecommendationDetail ::
  ReservationPurchaseRecommendationDetail
reservationPurchaseRecommendationDetail =
  ReservationPurchaseRecommendationDetail'
    { _rprdUpfrontCost =
        Nothing,
      _rprdAccountId = Nothing,
      _rprdEstimatedMonthlySavingsAmount =
        Nothing,
      _rprdRecurringStandardMonthlyCost =
        Nothing,
      _rprdRecommendedNormalizedUnitsToPurchase =
        Nothing,
      _rprdAverageUtilization = Nothing,
      _rprdAverageNumberOfInstancesUsedPerHour =
        Nothing,
      _rprdEstimatedReservationCostForLookbackPeriod =
        Nothing,
      _rprdInstanceDetails = Nothing,
      _rprdMaximumNumberOfInstancesUsedPerHour =
        Nothing,
      _rprdRecommendedNumberOfInstancesToPurchase =
        Nothing,
      _rprdCurrencyCode = Nothing,
      _rprdMinimumNormalizedUnitsUsedPerHour =
        Nothing,
      _rprdAverageNormalizedUnitsUsedPerHour =
        Nothing,
      _rprdMaximumNormalizedUnitsUsedPerHour =
        Nothing,
      _rprdEstimatedBreakEvenInMonths =
        Nothing,
      _rprdMinimumNumberOfInstancesUsedPerHour =
        Nothing,
      _rprdEstimatedMonthlySavingsPercentage =
        Nothing,
      _rprdEstimatedMonthlyOnDemandCost =
        Nothing
    }

-- | How much purchasing this instance costs you upfront.
rprdUpfrontCost :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdUpfrontCost = lens _rprdUpfrontCost (\s a -> s {_rprdUpfrontCost = a})

-- | The account that this RI recommendation is for.
rprdAccountId :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdAccountId = lens _rprdAccountId (\s a -> s {_rprdAccountId = a})

-- | How much AWS estimates that this specific recommendation could save you in a month.
rprdEstimatedMonthlySavingsAmount :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdEstimatedMonthlySavingsAmount = lens _rprdEstimatedMonthlySavingsAmount (\s a -> s {_rprdEstimatedMonthlySavingsAmount = a})

-- | How much purchasing this instance costs you on a monthly basis.
rprdRecurringStandardMonthlyCost :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdRecurringStandardMonthlyCost = lens _rprdRecurringStandardMonthlyCost (\s a -> s {_rprdRecurringStandardMonthlyCost = a})

-- | The number of normalized units that AWS recommends that you purchase.
rprdRecommendedNormalizedUnitsToPurchase :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdRecommendedNormalizedUnitsToPurchase = lens _rprdRecommendedNormalizedUnitsToPurchase (\s a -> s {_rprdRecommendedNormalizedUnitsToPurchase = a})

-- | The average utilization of your instances. AWS uses this to calculate your recommended reservation purchases.
rprdAverageUtilization :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdAverageUtilization = lens _rprdAverageUtilization (\s a -> s {_rprdAverageUtilization = a})

-- | The average number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdAverageNumberOfInstancesUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdAverageNumberOfInstancesUsedPerHour = lens _rprdAverageNumberOfInstancesUsedPerHour (\s a -> s {_rprdAverageNumberOfInstancesUsedPerHour = a})

-- | How much AWS estimates that you would have spent for all usage during the specified historical period if you had a reservation.
rprdEstimatedReservationCostForLookbackPeriod :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdEstimatedReservationCostForLookbackPeriod = lens _rprdEstimatedReservationCostForLookbackPeriod (\s a -> s {_rprdEstimatedReservationCostForLookbackPeriod = a})

-- | Details about the instances that AWS recommends that you purchase.
rprdInstanceDetails :: Lens' ReservationPurchaseRecommendationDetail (Maybe InstanceDetails)
rprdInstanceDetails = lens _rprdInstanceDetails (\s a -> s {_rprdInstanceDetails = a})

-- | The maximum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdMaximumNumberOfInstancesUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdMaximumNumberOfInstancesUsedPerHour = lens _rprdMaximumNumberOfInstancesUsedPerHour (\s a -> s {_rprdMaximumNumberOfInstancesUsedPerHour = a})

-- | The number of instances that AWS recommends that you purchase.
rprdRecommendedNumberOfInstancesToPurchase :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdRecommendedNumberOfInstancesToPurchase = lens _rprdRecommendedNumberOfInstancesToPurchase (\s a -> s {_rprdRecommendedNumberOfInstancesToPurchase = a})

-- | The currency code that AWS used to calculate the costs for this instance.
rprdCurrencyCode :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdCurrencyCode = lens _rprdCurrencyCode (\s a -> s {_rprdCurrencyCode = a})

-- | The minimum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdMinimumNormalizedUnitsUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdMinimumNormalizedUnitsUsedPerHour = lens _rprdMinimumNormalizedUnitsUsedPerHour (\s a -> s {_rprdMinimumNormalizedUnitsUsedPerHour = a})

-- | The average number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdAverageNormalizedUnitsUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdAverageNormalizedUnitsUsedPerHour = lens _rprdAverageNormalizedUnitsUsedPerHour (\s a -> s {_rprdAverageNormalizedUnitsUsedPerHour = a})

-- | The maximum number of normalized units that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdMaximumNormalizedUnitsUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdMaximumNormalizedUnitsUsedPerHour = lens _rprdMaximumNormalizedUnitsUsedPerHour (\s a -> s {_rprdMaximumNormalizedUnitsUsedPerHour = a})

-- | How long AWS estimates that it takes for this instance to start saving you money, in months.
rprdEstimatedBreakEvenInMonths :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdEstimatedBreakEvenInMonths = lens _rprdEstimatedBreakEvenInMonths (\s a -> s {_rprdEstimatedBreakEvenInMonths = a})

-- | The minimum number of instances that you used in an hour during the historical period. AWS uses this to calculate your recommended reservation purchases.
rprdMinimumNumberOfInstancesUsedPerHour :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdMinimumNumberOfInstancesUsedPerHour = lens _rprdMinimumNumberOfInstancesUsedPerHour (\s a -> s {_rprdMinimumNumberOfInstancesUsedPerHour = a})

-- | How much AWS estimates that this specific recommendation could save you in a month, as a percentage of your overall costs.
rprdEstimatedMonthlySavingsPercentage :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdEstimatedMonthlySavingsPercentage = lens _rprdEstimatedMonthlySavingsPercentage (\s a -> s {_rprdEstimatedMonthlySavingsPercentage = a})

-- | How much AWS estimates that you spend on On-Demand Instances in a month.
rprdEstimatedMonthlyOnDemandCost :: Lens' ReservationPurchaseRecommendationDetail (Maybe Text)
rprdEstimatedMonthlyOnDemandCost = lens _rprdEstimatedMonthlyOnDemandCost (\s a -> s {_rprdEstimatedMonthlyOnDemandCost = a})

instance
  FromJSON
    ReservationPurchaseRecommendationDetail
  where
  parseJSON =
    withObject
      "ReservationPurchaseRecommendationDetail"
      ( \x ->
          ReservationPurchaseRecommendationDetail'
            <$> (x .:? "UpfrontCost")
            <*> (x .:? "AccountId")
            <*> (x .:? "EstimatedMonthlySavingsAmount")
            <*> (x .:? "RecurringStandardMonthlyCost")
            <*> (x .:? "RecommendedNormalizedUnitsToPurchase")
            <*> (x .:? "AverageUtilization")
            <*> (x .:? "AverageNumberOfInstancesUsedPerHour")
            <*> (x .:? "EstimatedReservationCostForLookbackPeriod")
            <*> (x .:? "InstanceDetails")
            <*> (x .:? "MaximumNumberOfInstancesUsedPerHour")
            <*> (x .:? "RecommendedNumberOfInstancesToPurchase")
            <*> (x .:? "CurrencyCode")
            <*> (x .:? "MinimumNormalizedUnitsUsedPerHour")
            <*> (x .:? "AverageNormalizedUnitsUsedPerHour")
            <*> (x .:? "MaximumNormalizedUnitsUsedPerHour")
            <*> (x .:? "EstimatedBreakEvenInMonths")
            <*> (x .:? "MinimumNumberOfInstancesUsedPerHour")
            <*> (x .:? "EstimatedMonthlySavingsPercentage")
            <*> (x .:? "EstimatedMonthlyOnDemandCost")
      )

instance
  Hashable
    ReservationPurchaseRecommendationDetail

instance
  NFData
    ReservationPurchaseRecommendationDetail
