{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.RecurringCharge
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.RecurringCharge where

import Network.AWS.DeviceFarm.Types.MonetaryAmount
import Network.AWS.DeviceFarm.Types.RecurringChargeFrequency
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies whether charges for devices are recurring.
--
--
--
-- /See:/ 'recurringCharge' smart constructor.
data RecurringCharge = RecurringCharge'
  { _rcCost ::
      !(Maybe MonetaryAmount),
    _rcFrequency ::
      !(Maybe RecurringChargeFrequency)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RecurringCharge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcCost' - The cost of the recurring charge.
--
-- * 'rcFrequency' - The frequency in which charges recur.
recurringCharge ::
  RecurringCharge
recurringCharge =
  RecurringCharge'
    { _rcCost = Nothing,
      _rcFrequency = Nothing
    }

-- | The cost of the recurring charge.
rcCost :: Lens' RecurringCharge (Maybe MonetaryAmount)
rcCost = lens _rcCost (\s a -> s {_rcCost = a})

-- | The frequency in which charges recur.
rcFrequency :: Lens' RecurringCharge (Maybe RecurringChargeFrequency)
rcFrequency = lens _rcFrequency (\s a -> s {_rcFrequency = a})

instance FromJSON RecurringCharge where
  parseJSON =
    withObject
      "RecurringCharge"
      ( \x ->
          RecurringCharge'
            <$> (x .:? "cost") <*> (x .:? "frequency")
      )

instance Hashable RecurringCharge

instance NFData RecurringCharge
