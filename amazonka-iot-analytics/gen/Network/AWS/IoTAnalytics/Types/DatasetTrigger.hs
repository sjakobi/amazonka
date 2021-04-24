{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DatasetTrigger
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatasetTrigger where

import Network.AWS.IoTAnalytics.Types.Schedule
import Network.AWS.IoTAnalytics.Types.TriggeringDataset
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The @DatasetTrigger@ that specifies when the data set is automatically updated.
--
--
--
-- /See:/ 'datasetTrigger' smart constructor.
data DatasetTrigger = DatasetTrigger'
  { _dtSchedule ::
      !(Maybe Schedule),
    _dtDataset :: !(Maybe TriggeringDataset)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatasetTrigger' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtSchedule' - The Schedule when the trigger is initiated.
--
-- * 'dtDataset' - The data set whose content creation triggers the creation of this data set's contents.
datasetTrigger ::
  DatasetTrigger
datasetTrigger =
  DatasetTrigger'
    { _dtSchedule = Nothing,
      _dtDataset = Nothing
    }

-- | The Schedule when the trigger is initiated.
dtSchedule :: Lens' DatasetTrigger (Maybe Schedule)
dtSchedule = lens _dtSchedule (\s a -> s {_dtSchedule = a})

-- | The data set whose content creation triggers the creation of this data set's contents.
dtDataset :: Lens' DatasetTrigger (Maybe TriggeringDataset)
dtDataset = lens _dtDataset (\s a -> s {_dtDataset = a})

instance FromJSON DatasetTrigger where
  parseJSON =
    withObject
      "DatasetTrigger"
      ( \x ->
          DatasetTrigger'
            <$> (x .:? "schedule") <*> (x .:? "dataset")
      )

instance Hashable DatasetTrigger

instance NFData DatasetTrigger

instance ToJSON DatasetTrigger where
  toJSON DatasetTrigger' {..} =
    object
      ( catMaybes
          [ ("schedule" .=) <$> _dtSchedule,
            ("dataset" .=) <$> _dtDataset
          ]
      )
