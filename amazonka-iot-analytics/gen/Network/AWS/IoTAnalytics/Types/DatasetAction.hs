{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatasetAction where

import Network.AWS.IoTAnalytics.Types.ContainerDatasetAction
import Network.AWS.IoTAnalytics.Types.SqlQueryDatasetAction
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A @DatasetAction@ object that specifies how data set contents are automatically created.
--
--
--
-- /See:/ 'datasetAction' smart constructor.
data DatasetAction = DatasetAction'
  { _daActionName ::
      !(Maybe Text),
    _daQueryAction ::
      !(Maybe SqlQueryDatasetAction),
    _daContainerAction ::
      !(Maybe ContainerDatasetAction)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatasetAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daActionName' - The name of the data set action by which data set contents are automatically created.
--
-- * 'daQueryAction' - An @SqlQueryDatasetAction@ object that uses an SQL query to automatically create data set contents.
--
-- * 'daContainerAction' - Information that allows the system to run a containerized application to create the dataset contents. The application must be in a Docker container along with any required support libraries.
datasetAction ::
  DatasetAction
datasetAction =
  DatasetAction'
    { _daActionName = Nothing,
      _daQueryAction = Nothing,
      _daContainerAction = Nothing
    }

-- | The name of the data set action by which data set contents are automatically created.
daActionName :: Lens' DatasetAction (Maybe Text)
daActionName = lens _daActionName (\s a -> s {_daActionName = a})

-- | An @SqlQueryDatasetAction@ object that uses an SQL query to automatically create data set contents.
daQueryAction :: Lens' DatasetAction (Maybe SqlQueryDatasetAction)
daQueryAction = lens _daQueryAction (\s a -> s {_daQueryAction = a})

-- | Information that allows the system to run a containerized application to create the dataset contents. The application must be in a Docker container along with any required support libraries.
daContainerAction :: Lens' DatasetAction (Maybe ContainerDatasetAction)
daContainerAction = lens _daContainerAction (\s a -> s {_daContainerAction = a})

instance FromJSON DatasetAction where
  parseJSON =
    withObject
      "DatasetAction"
      ( \x ->
          DatasetAction'
            <$> (x .:? "actionName")
            <*> (x .:? "queryAction")
            <*> (x .:? "containerAction")
      )

instance Hashable DatasetAction

instance NFData DatasetAction

instance ToJSON DatasetAction where
  toJSON DatasetAction' {..} =
    object
      ( catMaybes
          [ ("actionName" .=) <$> _daActionName,
            ("queryAction" .=) <$> _daQueryAction,
            ("containerAction" .=) <$> _daContainerAction
          ]
      )
