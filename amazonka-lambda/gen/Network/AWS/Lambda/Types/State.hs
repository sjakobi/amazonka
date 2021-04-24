{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.State
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.State
  ( State
      ( ..,
        SActive,
        SFailed,
        SInactive,
        SPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data State = State' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SActive :: State
pattern SActive = State' "Active"

pattern SFailed :: State
pattern SFailed = State' "Failed"

pattern SInactive :: State
pattern SInactive = State' "Inactive"

pattern SPending :: State
pattern SPending = State' "Pending"

{-# COMPLETE
  SActive,
  SFailed,
  SInactive,
  SPending,
  State'
  #-}

instance FromText State where
  parser = (State' . mk) <$> takeText

instance ToText State where
  toText (State' ci) = original ci

instance Hashable State

instance NFData State

instance ToByteString State

instance ToQuery State

instance ToHeader State

instance FromJSON State where
  parseJSON = parseJSONText "State"
