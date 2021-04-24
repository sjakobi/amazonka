{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.AggregatedSourceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.AggregatedSourceStatus where

import Network.AWS.Config.Types.AggregatedSourceStatusType
import Network.AWS.Config.Types.AggregatedSourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The current sync status between the source and the aggregator account.
--
--
--
-- /See:/ 'aggregatedSourceStatus' smart constructor.
data AggregatedSourceStatus = AggregatedSourceStatus'
  { _assLastUpdateStatus ::
      !( Maybe
           AggregatedSourceStatusType
       ),
    _assLastErrorMessage ::
      !(Maybe Text),
    _assLastUpdateTime ::
      !(Maybe POSIX),
    _assSourceId ::
      !(Maybe Text),
    _assLastErrorCode ::
      !(Maybe Text),
    _assAWSRegion ::
      !(Maybe Text),
    _assSourceType ::
      !( Maybe
           AggregatedSourceType
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

-- | Creates a value of 'AggregatedSourceStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assLastUpdateStatus' - Filters the last updated status type.     * Valid value FAILED indicates errors while moving data.     * Valid value SUCCEEDED indicates the data was successfully moved.     * Valid value OUTDATED indicates the data is not the most recent.
--
-- * 'assLastErrorMessage' - The message indicating that the source account aggregation failed due to an error.
--
-- * 'assLastUpdateTime' - The time of the last update.
--
-- * 'assSourceId' - The source account ID or an organization.
--
-- * 'assLastErrorCode' - The error code that AWS Config returned when the source account aggregation last failed.
--
-- * 'assAWSRegion' - The region authorized to collect aggregated data.
--
-- * 'assSourceType' - The source account or an organization.
aggregatedSourceStatus ::
  AggregatedSourceStatus
aggregatedSourceStatus =
  AggregatedSourceStatus'
    { _assLastUpdateStatus =
        Nothing,
      _assLastErrorMessage = Nothing,
      _assLastUpdateTime = Nothing,
      _assSourceId = Nothing,
      _assLastErrorCode = Nothing,
      _assAWSRegion = Nothing,
      _assSourceType = Nothing
    }

-- | Filters the last updated status type.     * Valid value FAILED indicates errors while moving data.     * Valid value SUCCEEDED indicates the data was successfully moved.     * Valid value OUTDATED indicates the data is not the most recent.
assLastUpdateStatus :: Lens' AggregatedSourceStatus (Maybe AggregatedSourceStatusType)
assLastUpdateStatus = lens _assLastUpdateStatus (\s a -> s {_assLastUpdateStatus = a})

-- | The message indicating that the source account aggregation failed due to an error.
assLastErrorMessage :: Lens' AggregatedSourceStatus (Maybe Text)
assLastErrorMessage = lens _assLastErrorMessage (\s a -> s {_assLastErrorMessage = a})

-- | The time of the last update.
assLastUpdateTime :: Lens' AggregatedSourceStatus (Maybe UTCTime)
assLastUpdateTime = lens _assLastUpdateTime (\s a -> s {_assLastUpdateTime = a}) . mapping _Time

-- | The source account ID or an organization.
assSourceId :: Lens' AggregatedSourceStatus (Maybe Text)
assSourceId = lens _assSourceId (\s a -> s {_assSourceId = a})

-- | The error code that AWS Config returned when the source account aggregation last failed.
assLastErrorCode :: Lens' AggregatedSourceStatus (Maybe Text)
assLastErrorCode = lens _assLastErrorCode (\s a -> s {_assLastErrorCode = a})

-- | The region authorized to collect aggregated data.
assAWSRegion :: Lens' AggregatedSourceStatus (Maybe Text)
assAWSRegion = lens _assAWSRegion (\s a -> s {_assAWSRegion = a})

-- | The source account or an organization.
assSourceType :: Lens' AggregatedSourceStatus (Maybe AggregatedSourceType)
assSourceType = lens _assSourceType (\s a -> s {_assSourceType = a})

instance FromJSON AggregatedSourceStatus where
  parseJSON =
    withObject
      "AggregatedSourceStatus"
      ( \x ->
          AggregatedSourceStatus'
            <$> (x .:? "LastUpdateStatus")
            <*> (x .:? "LastErrorMessage")
            <*> (x .:? "LastUpdateTime")
            <*> (x .:? "SourceId")
            <*> (x .:? "LastErrorCode")
            <*> (x .:? "AwsRegion")
            <*> (x .:? "SourceType")
      )

instance Hashable AggregatedSourceStatus

instance NFData AggregatedSourceStatus
