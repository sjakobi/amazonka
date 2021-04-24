{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.BehaviorModelTrainingSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.BehaviorModelTrainingSummary where

import Network.AWS.IoT.Types.ModelStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The summary of an ML Detect behavior model.
--
--
--
-- /See:/ 'behaviorModelTrainingSummary' smart constructor.
data BehaviorModelTrainingSummary = BehaviorModelTrainingSummary'
  { _bmtsLastModelRefreshDate ::
      !( Maybe
           POSIX
       ),
    _bmtsDatapointsCollectionPercentage ::
      !( Maybe
           Double
       ),
    _bmtsModelStatus ::
      !( Maybe
           ModelStatus
       ),
    _bmtsBehaviorName ::
      !(Maybe Text),
    _bmtsTrainingDataCollectionStartDate ::
      !( Maybe
           POSIX
       ),
    _bmtsSecurityProfileName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BehaviorModelTrainingSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bmtsLastModelRefreshDate' - The date the model was last refreshed.
--
-- * 'bmtsDatapointsCollectionPercentage' - The percentage of datapoints collected.
--
-- * 'bmtsModelStatus' - The status of the behavior model.
--
-- * 'bmtsBehaviorName' - The name of the behavior.
--
-- * 'bmtsTrainingDataCollectionStartDate' - The date a training model started collecting data.
--
-- * 'bmtsSecurityProfileName' - The name of the security profile.
behaviorModelTrainingSummary ::
  BehaviorModelTrainingSummary
behaviorModelTrainingSummary =
  BehaviorModelTrainingSummary'
    { _bmtsLastModelRefreshDate =
        Nothing,
      _bmtsDatapointsCollectionPercentage = Nothing,
      _bmtsModelStatus = Nothing,
      _bmtsBehaviorName = Nothing,
      _bmtsTrainingDataCollectionStartDate =
        Nothing,
      _bmtsSecurityProfileName = Nothing
    }

-- | The date the model was last refreshed.
bmtsLastModelRefreshDate :: Lens' BehaviorModelTrainingSummary (Maybe UTCTime)
bmtsLastModelRefreshDate = lens _bmtsLastModelRefreshDate (\s a -> s {_bmtsLastModelRefreshDate = a}) . mapping _Time

-- | The percentage of datapoints collected.
bmtsDatapointsCollectionPercentage :: Lens' BehaviorModelTrainingSummary (Maybe Double)
bmtsDatapointsCollectionPercentage = lens _bmtsDatapointsCollectionPercentage (\s a -> s {_bmtsDatapointsCollectionPercentage = a})

-- | The status of the behavior model.
bmtsModelStatus :: Lens' BehaviorModelTrainingSummary (Maybe ModelStatus)
bmtsModelStatus = lens _bmtsModelStatus (\s a -> s {_bmtsModelStatus = a})

-- | The name of the behavior.
bmtsBehaviorName :: Lens' BehaviorModelTrainingSummary (Maybe Text)
bmtsBehaviorName = lens _bmtsBehaviorName (\s a -> s {_bmtsBehaviorName = a})

-- | The date a training model started collecting data.
bmtsTrainingDataCollectionStartDate :: Lens' BehaviorModelTrainingSummary (Maybe UTCTime)
bmtsTrainingDataCollectionStartDate = lens _bmtsTrainingDataCollectionStartDate (\s a -> s {_bmtsTrainingDataCollectionStartDate = a}) . mapping _Time

-- | The name of the security profile.
bmtsSecurityProfileName :: Lens' BehaviorModelTrainingSummary (Maybe Text)
bmtsSecurityProfileName = lens _bmtsSecurityProfileName (\s a -> s {_bmtsSecurityProfileName = a})

instance FromJSON BehaviorModelTrainingSummary where
  parseJSON =
    withObject
      "BehaviorModelTrainingSummary"
      ( \x ->
          BehaviorModelTrainingSummary'
            <$> (x .:? "lastModelRefreshDate")
            <*> (x .:? "datapointsCollectionPercentage")
            <*> (x .:? "modelStatus")
            <*> (x .:? "behaviorName")
            <*> (x .:? "trainingDataCollectionStartDate")
            <*> (x .:? "securityProfileName")
      )

instance Hashable BehaviorModelTrainingSummary

instance NFData BehaviorModelTrainingSummary
