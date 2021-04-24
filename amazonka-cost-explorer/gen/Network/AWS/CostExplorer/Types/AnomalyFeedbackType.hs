{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.AnomalyFeedbackType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.AnomalyFeedbackType
  ( AnomalyFeedbackType
      ( ..,
        NO,
        PlannedActivity,
        Yes
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AnomalyFeedbackType
  = AnomalyFeedbackType'
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

pattern NO :: AnomalyFeedbackType
pattern NO = AnomalyFeedbackType' "NO"

pattern PlannedActivity :: AnomalyFeedbackType
pattern PlannedActivity = AnomalyFeedbackType' "PLANNED_ACTIVITY"

pattern Yes :: AnomalyFeedbackType
pattern Yes = AnomalyFeedbackType' "YES"

{-# COMPLETE
  NO,
  PlannedActivity,
  Yes,
  AnomalyFeedbackType'
  #-}

instance FromText AnomalyFeedbackType where
  parser = (AnomalyFeedbackType' . mk) <$> takeText

instance ToText AnomalyFeedbackType where
  toText (AnomalyFeedbackType' ci) = original ci

instance Hashable AnomalyFeedbackType

instance NFData AnomalyFeedbackType

instance ToByteString AnomalyFeedbackType

instance ToQuery AnomalyFeedbackType

instance ToHeader AnomalyFeedbackType

instance ToJSON AnomalyFeedbackType where
  toJSON = toJSONText

instance FromJSON AnomalyFeedbackType where
  parseJSON = parseJSONText "AnomalyFeedbackType"
