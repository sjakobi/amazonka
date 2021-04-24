{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.State
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.State
  ( State
      ( ..,
        SActive,
        SCancelled,
        SClosed,
        SCompleted,
        SDraft
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
pattern SActive = State' "ACTIVE"

pattern SCancelled :: State
pattern SCancelled = State' "CANCELLED"

pattern SClosed :: State
pattern SClosed = State' "CLOSED"

pattern SCompleted :: State
pattern SCompleted = State' "COMPLETED"

pattern SDraft :: State
pattern SDraft = State' "DRAFT"

{-# COMPLETE
  SActive,
  SCancelled,
  SClosed,
  SCompleted,
  SDraft,
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

instance ToJSON State where
  toJSON = toJSONText

instance FromJSON State where
  parseJSON = parseJSONText "State"
