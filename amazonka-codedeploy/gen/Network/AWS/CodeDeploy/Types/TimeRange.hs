{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.TimeRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.TimeRange where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a time range.
--
--
--
-- /See:/ 'timeRange' smart constructor.
data TimeRange = TimeRange'
  { _trEnd :: !(Maybe POSIX),
    _trStart :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TimeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trEnd' - The end time of the time range.
--
-- * 'trStart' - The start time of the time range.
timeRange ::
  TimeRange
timeRange =
  TimeRange' {_trEnd = Nothing, _trStart = Nothing}

-- | The end time of the time range.
trEnd :: Lens' TimeRange (Maybe UTCTime)
trEnd = lens _trEnd (\s a -> s {_trEnd = a}) . mapping _Time

-- | The start time of the time range.
trStart :: Lens' TimeRange (Maybe UTCTime)
trStart = lens _trStart (\s a -> s {_trStart = a}) . mapping _Time

instance Hashable TimeRange

instance NFData TimeRange

instance ToJSON TimeRange where
  toJSON TimeRange' {..} =
    object
      ( catMaybes
          [("end" .=) <$> _trEnd, ("start" .=) <$> _trStart]
      )
