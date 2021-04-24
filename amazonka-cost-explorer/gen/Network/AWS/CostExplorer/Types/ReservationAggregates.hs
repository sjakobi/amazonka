{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.ReservationAggregates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.ReservationAggregates where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The aggregated numbers for your reservation usage.
--
--
--
-- /See:/ 'reservationAggregates' smart constructor.
data ReservationAggregates = ReservationAggregates'
  { _raUnusedHours ::
      !(Maybe Text),
    _raRealizedSavings ::
      !(Maybe Text),
    _raTotalActualHours ::
      !(Maybe Text),
    _raPurchasedHours ::
      !(Maybe Text),
    _raUnrealizedSavings ::
      !(Maybe Text),
    _raOnDemandCostOfRIHoursUsed ::
      !(Maybe Text),
    _raAmortizedRecurringFee ::
      !(Maybe Text),
    _raRICostForUnusedHours ::
      !(Maybe Text),
    _raUnusedUnits ::
      !(Maybe Text),
    _raTotalActualUnits ::
      !(Maybe Text),
    _raTotalPotentialRISavings ::
      !(Maybe Text),
    _raNetRISavings ::
      !(Maybe Text),
    _raTotalAmortizedFee ::
      !(Maybe Text),
    _raUtilizationPercentageInUnits ::
      !(Maybe Text),
    _raAmortizedUpfrontFee ::
      !(Maybe Text),
    _raUtilizationPercentage ::
      !(Maybe Text),
    _raPurchasedUnits ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ReservationAggregates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raUnusedHours' - The number of reservation hours that you didn't use.
--
-- * 'raRealizedSavings' - The realized savings due to purchasing and using a reservation.
--
-- * 'raTotalActualHours' - The total number of reservation hours that you used.
--
-- * 'raPurchasedHours' - How many reservation hours that you purchased.
--
-- * 'raUnrealizedSavings' - The unrealized savings due to purchasing and using a reservation.
--
-- * 'raOnDemandCostOfRIHoursUsed' - How much your reservation would cost if charged On-Demand rates.
--
-- * 'raAmortizedRecurringFee' - The monthly cost of your reservation, amortized over the reservation period.
--
-- * 'raRICostForUnusedHours' - The cost of unused hours for your reservation.
--
-- * 'raUnusedUnits' - The number of Amazon EC2 reservation hours that you didn't use, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
--
-- * 'raTotalActualUnits' - The total number of Amazon EC2 reservation hours that you used, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
--
-- * 'raTotalPotentialRISavings' - How much you could save if you use your entire reservation.
--
-- * 'raNetRISavings' - How much you saved due to purchasing and utilizing reservation. AWS calculates this by subtracting @TotalAmortizedFee@ from @OnDemandCostOfRIHoursUsed@ .
--
-- * 'raTotalAmortizedFee' - The total cost of your reservation, amortized over the reservation period.
--
-- * 'raUtilizationPercentageInUnits' - The percentage of Amazon EC2 reservation time that you used, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
--
-- * 'raAmortizedUpfrontFee' - The upfront cost of your reservation, amortized over the reservation period.
--
-- * 'raUtilizationPercentage' - The percentage of reservation time that you used.
--
-- * 'raPurchasedUnits' - How many Amazon EC2 reservation hours that you purchased, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
reservationAggregates ::
  ReservationAggregates
reservationAggregates =
  ReservationAggregates'
    { _raUnusedHours = Nothing,
      _raRealizedSavings = Nothing,
      _raTotalActualHours = Nothing,
      _raPurchasedHours = Nothing,
      _raUnrealizedSavings = Nothing,
      _raOnDemandCostOfRIHoursUsed = Nothing,
      _raAmortizedRecurringFee = Nothing,
      _raRICostForUnusedHours = Nothing,
      _raUnusedUnits = Nothing,
      _raTotalActualUnits = Nothing,
      _raTotalPotentialRISavings = Nothing,
      _raNetRISavings = Nothing,
      _raTotalAmortizedFee = Nothing,
      _raUtilizationPercentageInUnits = Nothing,
      _raAmortizedUpfrontFee = Nothing,
      _raUtilizationPercentage = Nothing,
      _raPurchasedUnits = Nothing
    }

-- | The number of reservation hours that you didn't use.
raUnusedHours :: Lens' ReservationAggregates (Maybe Text)
raUnusedHours = lens _raUnusedHours (\s a -> s {_raUnusedHours = a})

-- | The realized savings due to purchasing and using a reservation.
raRealizedSavings :: Lens' ReservationAggregates (Maybe Text)
raRealizedSavings = lens _raRealizedSavings (\s a -> s {_raRealizedSavings = a})

-- | The total number of reservation hours that you used.
raTotalActualHours :: Lens' ReservationAggregates (Maybe Text)
raTotalActualHours = lens _raTotalActualHours (\s a -> s {_raTotalActualHours = a})

-- | How many reservation hours that you purchased.
raPurchasedHours :: Lens' ReservationAggregates (Maybe Text)
raPurchasedHours = lens _raPurchasedHours (\s a -> s {_raPurchasedHours = a})

-- | The unrealized savings due to purchasing and using a reservation.
raUnrealizedSavings :: Lens' ReservationAggregates (Maybe Text)
raUnrealizedSavings = lens _raUnrealizedSavings (\s a -> s {_raUnrealizedSavings = a})

-- | How much your reservation would cost if charged On-Demand rates.
raOnDemandCostOfRIHoursUsed :: Lens' ReservationAggregates (Maybe Text)
raOnDemandCostOfRIHoursUsed = lens _raOnDemandCostOfRIHoursUsed (\s a -> s {_raOnDemandCostOfRIHoursUsed = a})

-- | The monthly cost of your reservation, amortized over the reservation period.
raAmortizedRecurringFee :: Lens' ReservationAggregates (Maybe Text)
raAmortizedRecurringFee = lens _raAmortizedRecurringFee (\s a -> s {_raAmortizedRecurringFee = a})

-- | The cost of unused hours for your reservation.
raRICostForUnusedHours :: Lens' ReservationAggregates (Maybe Text)
raRICostForUnusedHours = lens _raRICostForUnusedHours (\s a -> s {_raRICostForUnusedHours = a})

-- | The number of Amazon EC2 reservation hours that you didn't use, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
raUnusedUnits :: Lens' ReservationAggregates (Maybe Text)
raUnusedUnits = lens _raUnusedUnits (\s a -> s {_raUnusedUnits = a})

-- | The total number of Amazon EC2 reservation hours that you used, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
raTotalActualUnits :: Lens' ReservationAggregates (Maybe Text)
raTotalActualUnits = lens _raTotalActualUnits (\s a -> s {_raTotalActualUnits = a})

-- | How much you could save if you use your entire reservation.
raTotalPotentialRISavings :: Lens' ReservationAggregates (Maybe Text)
raTotalPotentialRISavings = lens _raTotalPotentialRISavings (\s a -> s {_raTotalPotentialRISavings = a})

-- | How much you saved due to purchasing and utilizing reservation. AWS calculates this by subtracting @TotalAmortizedFee@ from @OnDemandCostOfRIHoursUsed@ .
raNetRISavings :: Lens' ReservationAggregates (Maybe Text)
raNetRISavings = lens _raNetRISavings (\s a -> s {_raNetRISavings = a})

-- | The total cost of your reservation, amortized over the reservation period.
raTotalAmortizedFee :: Lens' ReservationAggregates (Maybe Text)
raTotalAmortizedFee = lens _raTotalAmortizedFee (\s a -> s {_raTotalAmortizedFee = a})

-- | The percentage of Amazon EC2 reservation time that you used, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
raUtilizationPercentageInUnits :: Lens' ReservationAggregates (Maybe Text)
raUtilizationPercentageInUnits = lens _raUtilizationPercentageInUnits (\s a -> s {_raUtilizationPercentageInUnits = a})

-- | The upfront cost of your reservation, amortized over the reservation period.
raAmortizedUpfrontFee :: Lens' ReservationAggregates (Maybe Text)
raAmortizedUpfrontFee = lens _raAmortizedUpfrontFee (\s a -> s {_raAmortizedUpfrontFee = a})

-- | The percentage of reservation time that you used.
raUtilizationPercentage :: Lens' ReservationAggregates (Maybe Text)
raUtilizationPercentage = lens _raUtilizationPercentage (\s a -> s {_raUtilizationPercentage = a})

-- | How many Amazon EC2 reservation hours that you purchased, converted to normalized units. Normalized units are available only for Amazon EC2 usage after November 11, 2017.
raPurchasedUnits :: Lens' ReservationAggregates (Maybe Text)
raPurchasedUnits = lens _raPurchasedUnits (\s a -> s {_raPurchasedUnits = a})

instance FromJSON ReservationAggregates where
  parseJSON =
    withObject
      "ReservationAggregates"
      ( \x ->
          ReservationAggregates'
            <$> (x .:? "UnusedHours")
            <*> (x .:? "RealizedSavings")
            <*> (x .:? "TotalActualHours")
            <*> (x .:? "PurchasedHours")
            <*> (x .:? "UnrealizedSavings")
            <*> (x .:? "OnDemandCostOfRIHoursUsed")
            <*> (x .:? "AmortizedRecurringFee")
            <*> (x .:? "RICostForUnusedHours")
            <*> (x .:? "UnusedUnits")
            <*> (x .:? "TotalActualUnits")
            <*> (x .:? "TotalPotentialRISavings")
            <*> (x .:? "NetRISavings")
            <*> (x .:? "TotalAmortizedFee")
            <*> (x .:? "UtilizationPercentageInUnits")
            <*> (x .:? "AmortizedUpfrontFee")
            <*> (x .:? "UtilizationPercentage")
            <*> (x .:? "PurchasedUnits")
      )

instance Hashable ReservationAggregates

instance NFData ReservationAggregates
