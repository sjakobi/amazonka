{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.LogGroupField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.LogGroupField where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The fields contained in log events found by a @GetLogGroupFields@ operation, along with the percentage of queried log events in which each field appears.
--
--
--
-- /See:/ 'logGroupField' smart constructor.
data LogGroupField = LogGroupField'
  { _lgfName ::
      !(Maybe Text),
    _lgfPercent :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LogGroupField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgfName' - The name of a log field.
--
-- * 'lgfPercent' - The percentage of log events queried that contained the field.
logGroupField ::
  LogGroupField
logGroupField =
  LogGroupField'
    { _lgfName = Nothing,
      _lgfPercent = Nothing
    }

-- | The name of a log field.
lgfName :: Lens' LogGroupField (Maybe Text)
lgfName = lens _lgfName (\s a -> s {_lgfName = a})

-- | The percentage of log events queried that contained the field.
lgfPercent :: Lens' LogGroupField (Maybe Natural)
lgfPercent = lens _lgfPercent (\s a -> s {_lgfPercent = a}) . mapping _Nat

instance FromJSON LogGroupField where
  parseJSON =
    withObject
      "LogGroupField"
      ( \x ->
          LogGroupField'
            <$> (x .:? "name") <*> (x .:? "percent")
      )

instance Hashable LogGroupField

instance NFData LogGroupField
