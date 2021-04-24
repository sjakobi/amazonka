{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.APIdestinationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.APIdestinationState
  ( APIdestinationState
      ( ..,
        ASActive,
        ASInactive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data APIdestinationState
  = APIdestinationState'
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

pattern ASActive :: APIdestinationState
pattern ASActive = APIdestinationState' "ACTIVE"

pattern ASInactive :: APIdestinationState
pattern ASInactive = APIdestinationState' "INACTIVE"

{-# COMPLETE
  ASActive,
  ASInactive,
  APIdestinationState'
  #-}

instance FromText APIdestinationState where
  parser = (APIdestinationState' . mk) <$> takeText

instance ToText APIdestinationState where
  toText (APIdestinationState' ci) = original ci

instance Hashable APIdestinationState

instance NFData APIdestinationState

instance ToByteString APIdestinationState

instance ToQuery APIdestinationState

instance ToHeader APIdestinationState

instance FromJSON APIdestinationState where
  parseJSON = parseJSONText "APIdestinationState"
