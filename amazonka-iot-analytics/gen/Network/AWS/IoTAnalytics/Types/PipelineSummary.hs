{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.PipelineSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.PipelineSummary where

import Network.AWS.IoTAnalytics.Types.ReprocessingSummary
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A summary of information about a pipeline.
--
--
--
-- /See:/ 'pipelineSummary' smart constructor.
data PipelineSummary = PipelineSummary'
  { _psCreationTime ::
      !(Maybe POSIX),
    _psLastUpdateTime :: !(Maybe POSIX),
    _psReprocessingSummaries ::
      !(Maybe [ReprocessingSummary]),
    _psPipelineName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PipelineSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psCreationTime' - When the pipeline was created.
--
-- * 'psLastUpdateTime' - When the pipeline was last updated.
--
-- * 'psReprocessingSummaries' - A summary of information about the pipeline reprocessing.
--
-- * 'psPipelineName' - The name of the pipeline.
pipelineSummary ::
  PipelineSummary
pipelineSummary =
  PipelineSummary'
    { _psCreationTime = Nothing,
      _psLastUpdateTime = Nothing,
      _psReprocessingSummaries = Nothing,
      _psPipelineName = Nothing
    }

-- | When the pipeline was created.
psCreationTime :: Lens' PipelineSummary (Maybe UTCTime)
psCreationTime = lens _psCreationTime (\s a -> s {_psCreationTime = a}) . mapping _Time

-- | When the pipeline was last updated.
psLastUpdateTime :: Lens' PipelineSummary (Maybe UTCTime)
psLastUpdateTime = lens _psLastUpdateTime (\s a -> s {_psLastUpdateTime = a}) . mapping _Time

-- | A summary of information about the pipeline reprocessing.
psReprocessingSummaries :: Lens' PipelineSummary [ReprocessingSummary]
psReprocessingSummaries = lens _psReprocessingSummaries (\s a -> s {_psReprocessingSummaries = a}) . _Default . _Coerce

-- | The name of the pipeline.
psPipelineName :: Lens' PipelineSummary (Maybe Text)
psPipelineName = lens _psPipelineName (\s a -> s {_psPipelineName = a})

instance FromJSON PipelineSummary where
  parseJSON =
    withObject
      "PipelineSummary"
      ( \x ->
          PipelineSummary'
            <$> (x .:? "creationTime")
            <*> (x .:? "lastUpdateTime")
            <*> (x .:? "reprocessingSummaries" .!= mempty)
            <*> (x .:? "pipelineName")
      )

instance Hashable PipelineSummary

instance NFData PipelineSummary
