{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.TargetInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.TargetInstance where

import Network.AWS.CostExplorer.Types.ResourceDetails
import Network.AWS.CostExplorer.Types.ResourceUtilization
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Details on recommended instance.
--
--
--
-- /See:/ 'targetInstance' smart constructor.
data TargetInstance = TargetInstance'
  { _tiEstimatedMonthlySavings ::
      !(Maybe Text),
    _tiCurrencyCode :: !(Maybe Text),
    _tiEstimatedMonthlyCost :: !(Maybe Text),
    _tiExpectedResourceUtilization ::
      !(Maybe ResourceUtilization),
    _tiDefaultTargetInstance :: !(Maybe Bool),
    _tiResourceDetails ::
      !(Maybe ResourceDetails)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TargetInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiEstimatedMonthlySavings' - Estimated savings resulting from modification, on a monthly basis.
--
-- * 'tiCurrencyCode' - The currency code that AWS used to calculate the costs for this instance.
--
-- * 'tiEstimatedMonthlyCost' - Expected cost to operate this instance type on a monthly basis.
--
-- * 'tiExpectedResourceUtilization' - Expected utilization metrics for target instance type.
--
-- * 'tiDefaultTargetInstance' - Indicates whether this recommendation is the defaulted AWS recommendation.
--
-- * 'tiResourceDetails' - Details on the target instance type.
targetInstance ::
  TargetInstance
targetInstance =
  TargetInstance'
    { _tiEstimatedMonthlySavings =
        Nothing,
      _tiCurrencyCode = Nothing,
      _tiEstimatedMonthlyCost = Nothing,
      _tiExpectedResourceUtilization = Nothing,
      _tiDefaultTargetInstance = Nothing,
      _tiResourceDetails = Nothing
    }

-- | Estimated savings resulting from modification, on a monthly basis.
tiEstimatedMonthlySavings :: Lens' TargetInstance (Maybe Text)
tiEstimatedMonthlySavings = lens _tiEstimatedMonthlySavings (\s a -> s {_tiEstimatedMonthlySavings = a})

-- | The currency code that AWS used to calculate the costs for this instance.
tiCurrencyCode :: Lens' TargetInstance (Maybe Text)
tiCurrencyCode = lens _tiCurrencyCode (\s a -> s {_tiCurrencyCode = a})

-- | Expected cost to operate this instance type on a monthly basis.
tiEstimatedMonthlyCost :: Lens' TargetInstance (Maybe Text)
tiEstimatedMonthlyCost = lens _tiEstimatedMonthlyCost (\s a -> s {_tiEstimatedMonthlyCost = a})

-- | Expected utilization metrics for target instance type.
tiExpectedResourceUtilization :: Lens' TargetInstance (Maybe ResourceUtilization)
tiExpectedResourceUtilization = lens _tiExpectedResourceUtilization (\s a -> s {_tiExpectedResourceUtilization = a})

-- | Indicates whether this recommendation is the defaulted AWS recommendation.
tiDefaultTargetInstance :: Lens' TargetInstance (Maybe Bool)
tiDefaultTargetInstance = lens _tiDefaultTargetInstance (\s a -> s {_tiDefaultTargetInstance = a})

-- | Details on the target instance type.
tiResourceDetails :: Lens' TargetInstance (Maybe ResourceDetails)
tiResourceDetails = lens _tiResourceDetails (\s a -> s {_tiResourceDetails = a})

instance FromJSON TargetInstance where
  parseJSON =
    withObject
      "TargetInstance"
      ( \x ->
          TargetInstance'
            <$> (x .:? "EstimatedMonthlySavings")
            <*> (x .:? "CurrencyCode")
            <*> (x .:? "EstimatedMonthlyCost")
            <*> (x .:? "ExpectedResourceUtilization")
            <*> (x .:? "DefaultTargetInstance")
            <*> (x .:? "ResourceDetails")
      )

instance Hashable TargetInstance

instance NFData TargetInstance
