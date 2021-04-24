{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.Pipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.Pipeline where

import Network.AWS.IoTAnalytics.Types.PipelineActivity
import Network.AWS.IoTAnalytics.Types.ReprocessingSummary
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a pipeline.
--
--
--
-- /See:/ 'pipeline' smart constructor.
data Pipeline = Pipeline'
  { _pCreationTime ::
      !(Maybe POSIX),
    _pLastUpdateTime :: !(Maybe POSIX),
    _pActivities :: !(Maybe (List1 PipelineActivity)),
    _pArn :: !(Maybe Text),
    _pName :: !(Maybe Text),
    _pReprocessingSummaries ::
      !(Maybe [ReprocessingSummary])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Pipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pCreationTime' - When the pipeline was created.
--
-- * 'pLastUpdateTime' - The last time the pipeline was updated.
--
-- * 'pActivities' - The activities that perform transformations on the messages.
--
-- * 'pArn' - The ARN of the pipeline.
--
-- * 'pName' - The name of the pipeline.
--
-- * 'pReprocessingSummaries' - A summary of information about the pipeline reprocessing.
pipeline ::
  Pipeline
pipeline =
  Pipeline'
    { _pCreationTime = Nothing,
      _pLastUpdateTime = Nothing,
      _pActivities = Nothing,
      _pArn = Nothing,
      _pName = Nothing,
      _pReprocessingSummaries = Nothing
    }

-- | When the pipeline was created.
pCreationTime :: Lens' Pipeline (Maybe UTCTime)
pCreationTime = lens _pCreationTime (\s a -> s {_pCreationTime = a}) . mapping _Time

-- | The last time the pipeline was updated.
pLastUpdateTime :: Lens' Pipeline (Maybe UTCTime)
pLastUpdateTime = lens _pLastUpdateTime (\s a -> s {_pLastUpdateTime = a}) . mapping _Time

-- | The activities that perform transformations on the messages.
pActivities :: Lens' Pipeline (Maybe (NonEmpty PipelineActivity))
pActivities = lens _pActivities (\s a -> s {_pActivities = a}) . mapping _List1

-- | The ARN of the pipeline.
pArn :: Lens' Pipeline (Maybe Text)
pArn = lens _pArn (\s a -> s {_pArn = a})

-- | The name of the pipeline.
pName :: Lens' Pipeline (Maybe Text)
pName = lens _pName (\s a -> s {_pName = a})

-- | A summary of information about the pipeline reprocessing.
pReprocessingSummaries :: Lens' Pipeline [ReprocessingSummary]
pReprocessingSummaries = lens _pReprocessingSummaries (\s a -> s {_pReprocessingSummaries = a}) . _Default . _Coerce

instance FromJSON Pipeline where
  parseJSON =
    withObject
      "Pipeline"
      ( \x ->
          Pipeline'
            <$> (x .:? "creationTime")
            <*> (x .:? "lastUpdateTime")
            <*> (x .:? "activities")
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "reprocessingSummaries" .!= mempty)
      )

instance Hashable Pipeline

instance NFData Pipeline
