{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.ReprocessingSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.ReprocessingSummary where

import Network.AWS.IoTAnalytics.Types.ReprocessingStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about pipeline reprocessing.
--
--
--
-- /See:/ 'reprocessingSummary' smart constructor.
data ReprocessingSummary = ReprocessingSummary'
  { _rsStatus ::
      !(Maybe ReprocessingStatus),
    _rsCreationTime ::
      !(Maybe POSIX),
    _rsId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReprocessingSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsStatus' - The status of the pipeline reprocessing.
--
-- * 'rsCreationTime' - The time the pipeline reprocessing was created.
--
-- * 'rsId' - The @reprocessingId@ returned by @StartPipelineReprocessing@ .
reprocessingSummary ::
  ReprocessingSummary
reprocessingSummary =
  ReprocessingSummary'
    { _rsStatus = Nothing,
      _rsCreationTime = Nothing,
      _rsId = Nothing
    }

-- | The status of the pipeline reprocessing.
rsStatus :: Lens' ReprocessingSummary (Maybe ReprocessingStatus)
rsStatus = lens _rsStatus (\s a -> s {_rsStatus = a})

-- | The time the pipeline reprocessing was created.
rsCreationTime :: Lens' ReprocessingSummary (Maybe UTCTime)
rsCreationTime = lens _rsCreationTime (\s a -> s {_rsCreationTime = a}) . mapping _Time

-- | The @reprocessingId@ returned by @StartPipelineReprocessing@ .
rsId :: Lens' ReprocessingSummary (Maybe Text)
rsId = lens _rsId (\s a -> s {_rsId = a})

instance FromJSON ReprocessingSummary where
  parseJSON =
    withObject
      "ReprocessingSummary"
      ( \x ->
          ReprocessingSummary'
            <$> (x .:? "status")
            <*> (x .:? "creationTime")
            <*> (x .:? "id")
      )

instance Hashable ReprocessingSummary

instance NFData ReprocessingSummary
