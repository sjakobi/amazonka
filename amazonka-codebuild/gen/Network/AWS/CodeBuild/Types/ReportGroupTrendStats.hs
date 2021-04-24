{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ReportGroupTrendStats
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportGroupTrendStats where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains trend statistics for a set of reports. The actual values depend on the type of trend being collected. For more information, see .
--
--
--
-- /See:/ 'reportGroupTrendStats' smart constructor.
data ReportGroupTrendStats = ReportGroupTrendStats'
  { _rgtsMin ::
      !(Maybe Text),
    _rgtsMax :: !(Maybe Text),
    _rgtsAverage ::
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

-- | Creates a value of 'ReportGroupTrendStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgtsMin' - Contains the minimum value analyzed.
--
-- * 'rgtsMax' - Contains the maximum value analyzed.
--
-- * 'rgtsAverage' - Contains the average of all values analyzed.
reportGroupTrendStats ::
  ReportGroupTrendStats
reportGroupTrendStats =
  ReportGroupTrendStats'
    { _rgtsMin = Nothing,
      _rgtsMax = Nothing,
      _rgtsAverage = Nothing
    }

-- | Contains the minimum value analyzed.
rgtsMin :: Lens' ReportGroupTrendStats (Maybe Text)
rgtsMin = lens _rgtsMin (\s a -> s {_rgtsMin = a})

-- | Contains the maximum value analyzed.
rgtsMax :: Lens' ReportGroupTrendStats (Maybe Text)
rgtsMax = lens _rgtsMax (\s a -> s {_rgtsMax = a})

-- | Contains the average of all values analyzed.
rgtsAverage :: Lens' ReportGroupTrendStats (Maybe Text)
rgtsAverage = lens _rgtsAverage (\s a -> s {_rgtsAverage = a})

instance FromJSON ReportGroupTrendStats where
  parseJSON =
    withObject
      "ReportGroupTrendStats"
      ( \x ->
          ReportGroupTrendStats'
            <$> (x .:? "min")
            <*> (x .:? "max")
            <*> (x .:? "average")
      )

instance Hashable ReportGroupTrendStats

instance NFData ReportGroupTrendStats
