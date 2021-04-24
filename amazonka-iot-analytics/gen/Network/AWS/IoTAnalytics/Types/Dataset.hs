{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.Dataset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.Dataset where

import Network.AWS.IoTAnalytics.Types.DatasetAction
import Network.AWS.IoTAnalytics.Types.DatasetContentDeliveryRule
import Network.AWS.IoTAnalytics.Types.DatasetStatus
import Network.AWS.IoTAnalytics.Types.DatasetTrigger
import Network.AWS.IoTAnalytics.Types.LateDataRule
import Network.AWS.IoTAnalytics.Types.RetentionPeriod
import Network.AWS.IoTAnalytics.Types.VersioningConfiguration
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a data set.
--
--
--
-- /See:/ 'dataset' smart constructor.
data Dataset = Dataset'
  { _ddStatus ::
      !(Maybe DatasetStatus),
    _ddCreationTime :: !(Maybe POSIX),
    _ddLastUpdateTime :: !(Maybe POSIX),
    _ddTriggers :: !(Maybe [DatasetTrigger]),
    _ddActions :: !(Maybe (List1 DatasetAction)),
    _ddArn :: !(Maybe Text),
    _ddName :: !(Maybe Text),
    _ddRetentionPeriod :: !(Maybe RetentionPeriod),
    _ddLateDataRules :: !(Maybe (List1 LateDataRule)),
    _ddContentDeliveryRules ::
      !(Maybe [DatasetContentDeliveryRule]),
    _ddVersioningConfiguration ::
      !(Maybe VersioningConfiguration)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Dataset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddStatus' - The status of the data set.
--
-- * 'ddCreationTime' - When the data set was created.
--
-- * 'ddLastUpdateTime' - The last time the data set was updated.
--
-- * 'ddTriggers' - The @DatasetTrigger@ objects that specify when the data set is automatically updated.
--
-- * 'ddActions' - The @DatasetAction@ objects that automatically create the data set contents.
--
-- * 'ddArn' - The ARN of the data set.
--
-- * 'ddName' - The name of the data set.
--
-- * 'ddRetentionPeriod' - Optional. How long, in days, message data is kept for the data set.
--
-- * 'ddLateDataRules' - A list of data rules that send notifications to Amazon CloudWatch, when data arrives late. To specify @lateDataRules@ , the dataset must use a <https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html DeltaTimer> filter.
--
-- * 'ddContentDeliveryRules' - When dataset contents are created they are delivered to destinations specified here.
--
-- * 'ddVersioningConfiguration' - Optional. How many versions of dataset contents are kept. If not specified or set to null, only the latest version plus the latest succeeded version (if they are different) are kept for the time period specified by the @retentionPeriod@ parameter. For more information, see <https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions Keeping Multiple Versions of AWS IoT Analytics Data Sets> in the /AWS IoT Analytics User Guide/ .
dataset ::
  Dataset
dataset =
  Dataset'
    { _ddStatus = Nothing,
      _ddCreationTime = Nothing,
      _ddLastUpdateTime = Nothing,
      _ddTriggers = Nothing,
      _ddActions = Nothing,
      _ddArn = Nothing,
      _ddName = Nothing,
      _ddRetentionPeriod = Nothing,
      _ddLateDataRules = Nothing,
      _ddContentDeliveryRules = Nothing,
      _ddVersioningConfiguration = Nothing
    }

-- | The status of the data set.
ddStatus :: Lens' Dataset (Maybe DatasetStatus)
ddStatus = lens _ddStatus (\s a -> s {_ddStatus = a})

-- | When the data set was created.
ddCreationTime :: Lens' Dataset (Maybe UTCTime)
ddCreationTime = lens _ddCreationTime (\s a -> s {_ddCreationTime = a}) . mapping _Time

-- | The last time the data set was updated.
ddLastUpdateTime :: Lens' Dataset (Maybe UTCTime)
ddLastUpdateTime = lens _ddLastUpdateTime (\s a -> s {_ddLastUpdateTime = a}) . mapping _Time

-- | The @DatasetTrigger@ objects that specify when the data set is automatically updated.
ddTriggers :: Lens' Dataset [DatasetTrigger]
ddTriggers = lens _ddTriggers (\s a -> s {_ddTriggers = a}) . _Default . _Coerce

-- | The @DatasetAction@ objects that automatically create the data set contents.
ddActions :: Lens' Dataset (Maybe (NonEmpty DatasetAction))
ddActions = lens _ddActions (\s a -> s {_ddActions = a}) . mapping _List1

-- | The ARN of the data set.
ddArn :: Lens' Dataset (Maybe Text)
ddArn = lens _ddArn (\s a -> s {_ddArn = a})

-- | The name of the data set.
ddName :: Lens' Dataset (Maybe Text)
ddName = lens _ddName (\s a -> s {_ddName = a})

-- | Optional. How long, in days, message data is kept for the data set.
ddRetentionPeriod :: Lens' Dataset (Maybe RetentionPeriod)
ddRetentionPeriod = lens _ddRetentionPeriod (\s a -> s {_ddRetentionPeriod = a})

-- | A list of data rules that send notifications to Amazon CloudWatch, when data arrives late. To specify @lateDataRules@ , the dataset must use a <https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html DeltaTimer> filter.
ddLateDataRules :: Lens' Dataset (Maybe (NonEmpty LateDataRule))
ddLateDataRules = lens _ddLateDataRules (\s a -> s {_ddLateDataRules = a}) . mapping _List1

-- | When dataset contents are created they are delivered to destinations specified here.
ddContentDeliveryRules :: Lens' Dataset [DatasetContentDeliveryRule]
ddContentDeliveryRules = lens _ddContentDeliveryRules (\s a -> s {_ddContentDeliveryRules = a}) . _Default . _Coerce

-- | Optional. How many versions of dataset contents are kept. If not specified or set to null, only the latest version plus the latest succeeded version (if they are different) are kept for the time period specified by the @retentionPeriod@ parameter. For more information, see <https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions Keeping Multiple Versions of AWS IoT Analytics Data Sets> in the /AWS IoT Analytics User Guide/ .
ddVersioningConfiguration :: Lens' Dataset (Maybe VersioningConfiguration)
ddVersioningConfiguration = lens _ddVersioningConfiguration (\s a -> s {_ddVersioningConfiguration = a})

instance FromJSON Dataset where
  parseJSON =
    withObject
      "Dataset"
      ( \x ->
          Dataset'
            <$> (x .:? "status")
            <*> (x .:? "creationTime")
            <*> (x .:? "lastUpdateTime")
            <*> (x .:? "triggers" .!= mempty)
            <*> (x .:? "actions")
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "retentionPeriod")
            <*> (x .:? "lateDataRules")
            <*> (x .:? "contentDeliveryRules" .!= mempty)
            <*> (x .:? "versioningConfiguration")
      )

instance Hashable Dataset

instance NFData Dataset
