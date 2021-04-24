{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types.ProactiveEngagementStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.ProactiveEngagementStatus
  ( ProactiveEngagementStatus
      ( ..,
        PESDisabled,
        PESEnabled,
        PESPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProactiveEngagementStatus
  = ProactiveEngagementStatus'
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

pattern PESDisabled :: ProactiveEngagementStatus
pattern PESDisabled = ProactiveEngagementStatus' "DISABLED"

pattern PESEnabled :: ProactiveEngagementStatus
pattern PESEnabled = ProactiveEngagementStatus' "ENABLED"

pattern PESPending :: ProactiveEngagementStatus
pattern PESPending = ProactiveEngagementStatus' "PENDING"

{-# COMPLETE
  PESDisabled,
  PESEnabled,
  PESPending,
  ProactiveEngagementStatus'
  #-}

instance FromText ProactiveEngagementStatus where
  parser = (ProactiveEngagementStatus' . mk) <$> takeText

instance ToText ProactiveEngagementStatus where
  toText (ProactiveEngagementStatus' ci) = original ci

instance Hashable ProactiveEngagementStatus

instance NFData ProactiveEngagementStatus

instance ToByteString ProactiveEngagementStatus

instance ToQuery ProactiveEngagementStatus

instance ToHeader ProactiveEngagementStatus

instance FromJSON ProactiveEngagementStatus where
  parseJSON = parseJSONText "ProactiveEngagementStatus"
