{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.RetentionPeriod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.RetentionPeriod where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | How long, in days, message data is kept.
--
--
--
-- /See:/ 'retentionPeriod' smart constructor.
data RetentionPeriod = RetentionPeriod'
  { _rpNumberOfDays ::
      !(Maybe Nat),
    _rpUnlimited :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RetentionPeriod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpNumberOfDays' - The number of days that message data is kept. The @unlimited@ parameter must be false.
--
-- * 'rpUnlimited' - If true, message data is kept indefinitely.
retentionPeriod ::
  RetentionPeriod
retentionPeriod =
  RetentionPeriod'
    { _rpNumberOfDays = Nothing,
      _rpUnlimited = Nothing
    }

-- | The number of days that message data is kept. The @unlimited@ parameter must be false.
rpNumberOfDays :: Lens' RetentionPeriod (Maybe Natural)
rpNumberOfDays = lens _rpNumberOfDays (\s a -> s {_rpNumberOfDays = a}) . mapping _Nat

-- | If true, message data is kept indefinitely.
rpUnlimited :: Lens' RetentionPeriod (Maybe Bool)
rpUnlimited = lens _rpUnlimited (\s a -> s {_rpUnlimited = a})

instance FromJSON RetentionPeriod where
  parseJSON =
    withObject
      "RetentionPeriod"
      ( \x ->
          RetentionPeriod'
            <$> (x .:? "numberOfDays") <*> (x .:? "unlimited")
      )

instance Hashable RetentionPeriod

instance NFData RetentionPeriod

instance ToJSON RetentionPeriod where
  toJSON RetentionPeriod' {..} =
    object
      ( catMaybes
          [ ("numberOfDays" .=) <$> _rpNumberOfDays,
            ("unlimited" .=) <$> _rpUnlimited
          ]
      )
