{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatasetSummary where

import Network.AWS.IoTAnalytics.Types.DatasetActionSummary
import Network.AWS.IoTAnalytics.Types.DatasetStatus
import Network.AWS.IoTAnalytics.Types.DatasetTrigger
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A summary of information about a data set.
--
--
--
-- /See:/ 'datasetSummary' smart constructor.
data DatasetSummary = DatasetSummary'
  { _dsStatus ::
      !(Maybe DatasetStatus),
    _dsCreationTime :: !(Maybe POSIX),
    _dsLastUpdateTime :: !(Maybe POSIX),
    _dsTriggers :: !(Maybe [DatasetTrigger]),
    _dsActions ::
      !(Maybe (List1 DatasetActionSummary)),
    _dsDatasetName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatasetSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsStatus' - The status of the data set.
--
-- * 'dsCreationTime' - The time the data set was created.
--
-- * 'dsLastUpdateTime' - The last time the data set was updated.
--
-- * 'dsTriggers' - A list of triggers. A trigger causes data set content to be populated at a specified time interval or when another data set is populated. The list of triggers can be empty or contain up to five @DataSetTrigger@ objects
--
-- * 'dsActions' - A list of @DataActionSummary@ objects.
--
-- * 'dsDatasetName' - The name of the data set.
datasetSummary ::
  DatasetSummary
datasetSummary =
  DatasetSummary'
    { _dsStatus = Nothing,
      _dsCreationTime = Nothing,
      _dsLastUpdateTime = Nothing,
      _dsTriggers = Nothing,
      _dsActions = Nothing,
      _dsDatasetName = Nothing
    }

-- | The status of the data set.
dsStatus :: Lens' DatasetSummary (Maybe DatasetStatus)
dsStatus = lens _dsStatus (\s a -> s {_dsStatus = a})

-- | The time the data set was created.
dsCreationTime :: Lens' DatasetSummary (Maybe UTCTime)
dsCreationTime = lens _dsCreationTime (\s a -> s {_dsCreationTime = a}) . mapping _Time

-- | The last time the data set was updated.
dsLastUpdateTime :: Lens' DatasetSummary (Maybe UTCTime)
dsLastUpdateTime = lens _dsLastUpdateTime (\s a -> s {_dsLastUpdateTime = a}) . mapping _Time

-- | A list of triggers. A trigger causes data set content to be populated at a specified time interval or when another data set is populated. The list of triggers can be empty or contain up to five @DataSetTrigger@ objects
dsTriggers :: Lens' DatasetSummary [DatasetTrigger]
dsTriggers = lens _dsTriggers (\s a -> s {_dsTriggers = a}) . _Default . _Coerce

-- | A list of @DataActionSummary@ objects.
dsActions :: Lens' DatasetSummary (Maybe (NonEmpty DatasetActionSummary))
dsActions = lens _dsActions (\s a -> s {_dsActions = a}) . mapping _List1

-- | The name of the data set.
dsDatasetName :: Lens' DatasetSummary (Maybe Text)
dsDatasetName = lens _dsDatasetName (\s a -> s {_dsDatasetName = a})

instance FromJSON DatasetSummary where
  parseJSON =
    withObject
      "DatasetSummary"
      ( \x ->
          DatasetSummary'
            <$> (x .:? "status")
            <*> (x .:? "creationTime")
            <*> (x .:? "lastUpdateTime")
            <*> (x .:? "triggers" .!= mempty)
            <*> (x .:? "actions")
            <*> (x .:? "datasetName")
      )

instance Hashable DatasetSummary

instance NFData DatasetSummary
