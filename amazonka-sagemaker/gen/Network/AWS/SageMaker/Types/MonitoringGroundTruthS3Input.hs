{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringGroundTruthS3Input
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringGroundTruthS3Input where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The ground truth labels for the dataset used for the monitoring job.
--
--
--
-- /See:/ 'monitoringGroundTruthS3Input' smart constructor.
newtype MonitoringGroundTruthS3Input = MonitoringGroundTruthS3Input'
  { _mgtsiS3URI ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'MonitoringGroundTruthS3Input' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgtsiS3URI' - The address of the Amazon S3 location of the ground truth labels.
monitoringGroundTruthS3Input ::
  MonitoringGroundTruthS3Input
monitoringGroundTruthS3Input =
  MonitoringGroundTruthS3Input'
    { _mgtsiS3URI =
        Nothing
    }

-- | The address of the Amazon S3 location of the ground truth labels.
mgtsiS3URI :: Lens' MonitoringGroundTruthS3Input (Maybe Text)
mgtsiS3URI = lens _mgtsiS3URI (\s a -> s {_mgtsiS3URI = a})

instance FromJSON MonitoringGroundTruthS3Input where
  parseJSON =
    withObject
      "MonitoringGroundTruthS3Input"
      ( \x ->
          MonitoringGroundTruthS3Input' <$> (x .:? "S3Uri")
      )

instance Hashable MonitoringGroundTruthS3Input

instance NFData MonitoringGroundTruthS3Input

instance ToJSON MonitoringGroundTruthS3Input where
  toJSON MonitoringGroundTruthS3Input' {..} =
    object (catMaybes [("S3Uri" .=) <$> _mgtsiS3URI])
