{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.UpdateDataset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a data set.
module Network.AWS.IoTAnalytics.UpdateDataset
  ( -- * Creating a Request
    updateDataset,
    UpdateDataset,

    -- * Request Lenses
    uTriggers,
    uRetentionPeriod,
    uLateDataRules,
    uContentDeliveryRules,
    uVersioningConfiguration,
    uDatasetName,
    uActions,

    -- * Destructuring the Response
    updateDatasetResponse,
    UpdateDatasetResponse,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateDataset' smart constructor.
data UpdateDataset = UpdateDataset'
  { _uTriggers ::
      !(Maybe [DatasetTrigger]),
    _uRetentionPeriod ::
      !(Maybe RetentionPeriod),
    _uLateDataRules ::
      !(Maybe (List1 LateDataRule)),
    _uContentDeliveryRules ::
      !(Maybe [DatasetContentDeliveryRule]),
    _uVersioningConfiguration ::
      !(Maybe VersioningConfiguration),
    _uDatasetName :: !Text,
    _uActions :: !(List1 DatasetAction)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDataset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uTriggers' - A list of @DatasetTrigger@ objects. The list can be empty or can contain up to five @DatasetTrigger@ objects.
--
-- * 'uRetentionPeriod' - How long, in days, dataset contents are kept for the dataset.
--
-- * 'uLateDataRules' - A list of data rules that send notifications to Amazon CloudWatch, when data arrives late. To specify @lateDataRules@ , the dataset must use a <https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html DeltaTimer> filter.
--
-- * 'uContentDeliveryRules' - When dataset contents are created, they are delivered to destinations specified here.
--
-- * 'uVersioningConfiguration' - Optional. How many versions of dataset contents are kept. If not specified or set to null, only the latest version plus the latest succeeded version (if they are different) are kept for the time period specified by the @retentionPeriod@ parameter. For more information, see <https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions Keeping Multiple Versions of AWS IoT Analytics Data Sets> in the /AWS IoT Analytics User Guide/ .
--
-- * 'uDatasetName' - The name of the data set to update.
--
-- * 'uActions' - A list of @DatasetAction@ objects.
updateDataset ::
  -- | 'uDatasetName'
  Text ->
  -- | 'uActions'
  NonEmpty DatasetAction ->
  UpdateDataset
updateDataset pDatasetName_ pActions_ =
  UpdateDataset'
    { _uTriggers = Nothing,
      _uRetentionPeriod = Nothing,
      _uLateDataRules = Nothing,
      _uContentDeliveryRules = Nothing,
      _uVersioningConfiguration = Nothing,
      _uDatasetName = pDatasetName_,
      _uActions = _List1 # pActions_
    }

-- | A list of @DatasetTrigger@ objects. The list can be empty or can contain up to five @DatasetTrigger@ objects.
uTriggers :: Lens' UpdateDataset [DatasetTrigger]
uTriggers = lens _uTriggers (\s a -> s {_uTriggers = a}) . _Default . _Coerce

-- | How long, in days, dataset contents are kept for the dataset.
uRetentionPeriod :: Lens' UpdateDataset (Maybe RetentionPeriod)
uRetentionPeriod = lens _uRetentionPeriod (\s a -> s {_uRetentionPeriod = a})

-- | A list of data rules that send notifications to Amazon CloudWatch, when data arrives late. To specify @lateDataRules@ , the dataset must use a <https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html DeltaTimer> filter.
uLateDataRules :: Lens' UpdateDataset (Maybe (NonEmpty LateDataRule))
uLateDataRules = lens _uLateDataRules (\s a -> s {_uLateDataRules = a}) . mapping _List1

-- | When dataset contents are created, they are delivered to destinations specified here.
uContentDeliveryRules :: Lens' UpdateDataset [DatasetContentDeliveryRule]
uContentDeliveryRules = lens _uContentDeliveryRules (\s a -> s {_uContentDeliveryRules = a}) . _Default . _Coerce

-- | Optional. How many versions of dataset contents are kept. If not specified or set to null, only the latest version plus the latest succeeded version (if they are different) are kept for the time period specified by the @retentionPeriod@ parameter. For more information, see <https://docs.aws.amazon.com/iotanalytics/latest/userguide/getting-started.html#aws-iot-analytics-dataset-versions Keeping Multiple Versions of AWS IoT Analytics Data Sets> in the /AWS IoT Analytics User Guide/ .
uVersioningConfiguration :: Lens' UpdateDataset (Maybe VersioningConfiguration)
uVersioningConfiguration = lens _uVersioningConfiguration (\s a -> s {_uVersioningConfiguration = a})

-- | The name of the data set to update.
uDatasetName :: Lens' UpdateDataset Text
uDatasetName = lens _uDatasetName (\s a -> s {_uDatasetName = a})

-- | A list of @DatasetAction@ objects.
uActions :: Lens' UpdateDataset (NonEmpty DatasetAction)
uActions = lens _uActions (\s a -> s {_uActions = a}) . _List1

instance AWSRequest UpdateDataset where
  type Rs UpdateDataset = UpdateDatasetResponse
  request = putJSON ioTAnalytics
  response = receiveNull UpdateDatasetResponse'

instance Hashable UpdateDataset

instance NFData UpdateDataset

instance ToHeaders UpdateDataset where
  toHeaders = const mempty

instance ToJSON UpdateDataset where
  toJSON UpdateDataset' {..} =
    object
      ( catMaybes
          [ ("triggers" .=) <$> _uTriggers,
            ("retentionPeriod" .=) <$> _uRetentionPeriod,
            ("lateDataRules" .=) <$> _uLateDataRules,
            ("contentDeliveryRules" .=)
              <$> _uContentDeliveryRules,
            ("versioningConfiguration" .=)
              <$> _uVersioningConfiguration,
            Just ("actions" .= _uActions)
          ]
      )

instance ToPath UpdateDataset where
  toPath UpdateDataset' {..} =
    mconcat ["/datasets/", toBS _uDatasetName]

instance ToQuery UpdateDataset where
  toQuery = const mempty

-- | /See:/ 'updateDatasetResponse' smart constructor.
data UpdateDatasetResponse = UpdateDatasetResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateDatasetResponse' with the minimum fields required to make a request.
updateDatasetResponse ::
  UpdateDatasetResponse
updateDatasetResponse = UpdateDatasetResponse'

instance NFData UpdateDatasetResponse
