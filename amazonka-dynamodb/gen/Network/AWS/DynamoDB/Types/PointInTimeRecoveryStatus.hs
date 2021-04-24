{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.PointInTimeRecoveryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.PointInTimeRecoveryStatus
  ( PointInTimeRecoveryStatus
      ( ..,
        PITRSDisabled,
        PITRSEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PointInTimeRecoveryStatus
  = PointInTimeRecoveryStatus'
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

pattern PITRSDisabled :: PointInTimeRecoveryStatus
pattern PITRSDisabled = PointInTimeRecoveryStatus' "DISABLED"

pattern PITRSEnabled :: PointInTimeRecoveryStatus
pattern PITRSEnabled = PointInTimeRecoveryStatus' "ENABLED"

{-# COMPLETE
  PITRSDisabled,
  PITRSEnabled,
  PointInTimeRecoveryStatus'
  #-}

instance FromText PointInTimeRecoveryStatus where
  parser = (PointInTimeRecoveryStatus' . mk) <$> takeText

instance ToText PointInTimeRecoveryStatus where
  toText (PointInTimeRecoveryStatus' ci) = original ci

instance Hashable PointInTimeRecoveryStatus

instance NFData PointInTimeRecoveryStatus

instance ToByteString PointInTimeRecoveryStatus

instance ToQuery PointInTimeRecoveryStatus

instance ToHeader PointInTimeRecoveryStatus

instance FromJSON PointInTimeRecoveryStatus where
  parseJSON = parseJSONText "PointInTimeRecoveryStatus"
