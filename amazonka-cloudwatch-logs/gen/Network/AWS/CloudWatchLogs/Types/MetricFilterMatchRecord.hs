{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.MetricFilterMatchRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.MetricFilterMatchRecord where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents a matched event.
--
--
--
-- /See:/ 'metricFilterMatchRecord' smart constructor.
data MetricFilterMatchRecord = MetricFilterMatchRecord'
  { _mfmrEventNumber ::
      !(Maybe Integer),
    _mfmrEventMessage ::
      !(Maybe Text),
    _mfmrExtractedValues ::
      !( Maybe
           (Map Text Text)
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

-- | Creates a value of 'MetricFilterMatchRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mfmrEventNumber' - The event number.
--
-- * 'mfmrEventMessage' - The raw event data.
--
-- * 'mfmrExtractedValues' - The values extracted from the event data by the filter.
metricFilterMatchRecord ::
  MetricFilterMatchRecord
metricFilterMatchRecord =
  MetricFilterMatchRecord'
    { _mfmrEventNumber =
        Nothing,
      _mfmrEventMessage = Nothing,
      _mfmrExtractedValues = Nothing
    }

-- | The event number.
mfmrEventNumber :: Lens' MetricFilterMatchRecord (Maybe Integer)
mfmrEventNumber = lens _mfmrEventNumber (\s a -> s {_mfmrEventNumber = a})

-- | The raw event data.
mfmrEventMessage :: Lens' MetricFilterMatchRecord (Maybe Text)
mfmrEventMessage = lens _mfmrEventMessage (\s a -> s {_mfmrEventMessage = a})

-- | The values extracted from the event data by the filter.
mfmrExtractedValues :: Lens' MetricFilterMatchRecord (HashMap Text Text)
mfmrExtractedValues = lens _mfmrExtractedValues (\s a -> s {_mfmrExtractedValues = a}) . _Default . _Map

instance FromJSON MetricFilterMatchRecord where
  parseJSON =
    withObject
      "MetricFilterMatchRecord"
      ( \x ->
          MetricFilterMatchRecord'
            <$> (x .:? "eventNumber")
            <*> (x .:? "eventMessage")
            <*> (x .:? "extractedValues" .!= mempty)
      )

instance Hashable MetricFilterMatchRecord

instance NFData MetricFilterMatchRecord
