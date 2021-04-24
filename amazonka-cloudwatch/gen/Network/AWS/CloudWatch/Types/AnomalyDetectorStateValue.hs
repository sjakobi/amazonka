{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatch.Types.AnomalyDetectorStateValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.AnomalyDetectorStateValue
  ( AnomalyDetectorStateValue
      ( ..,
        PendingTraining,
        Trained,
        TrainedInsufficientData
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AnomalyDetectorStateValue
  = AnomalyDetectorStateValue'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PendingTraining :: AnomalyDetectorStateValue
pattern PendingTraining = AnomalyDetectorStateValue' "PENDING_TRAINING"

pattern Trained :: AnomalyDetectorStateValue
pattern Trained = AnomalyDetectorStateValue' "TRAINED"

pattern TrainedInsufficientData :: AnomalyDetectorStateValue
pattern TrainedInsufficientData = AnomalyDetectorStateValue' "TRAINED_INSUFFICIENT_DATA"

{-# COMPLETE
  PendingTraining,
  Trained,
  TrainedInsufficientData,
  AnomalyDetectorStateValue'
  #-}

instance FromText AnomalyDetectorStateValue where
  parser = (AnomalyDetectorStateValue' . mk) <$> takeText

instance ToText AnomalyDetectorStateValue where
  toText (AnomalyDetectorStateValue' ci) = original ci

instance Hashable AnomalyDetectorStateValue

instance NFData AnomalyDetectorStateValue

instance ToByteString AnomalyDetectorStateValue

instance ToQuery AnomalyDetectorStateValue

instance ToHeader AnomalyDetectorStateValue

instance FromXML AnomalyDetectorStateValue where
  parseXML = parseXMLText "AnomalyDetectorStateValue"
