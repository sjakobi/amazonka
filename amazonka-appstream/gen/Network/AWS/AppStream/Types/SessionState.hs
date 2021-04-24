{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.SessionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.SessionState
  ( SessionState
      ( ..,
        SSActive,
        SSExpired,
        SSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Possible values for the state of a streaming session.
data SessionState = SessionState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSActive :: SessionState
pattern SSActive = SessionState' "ACTIVE"

pattern SSExpired :: SessionState
pattern SSExpired = SessionState' "EXPIRED"

pattern SSPending :: SessionState
pattern SSPending = SessionState' "PENDING"

{-# COMPLETE
  SSActive,
  SSExpired,
  SSPending,
  SessionState'
  #-}

instance FromText SessionState where
  parser = (SessionState' . mk) <$> takeText

instance ToText SessionState where
  toText (SessionState' ci) = original ci

instance Hashable SessionState

instance NFData SessionState

instance ToByteString SessionState

instance ToQuery SessionState

instance ToHeader SessionState

instance FromJSON SessionState where
  parseJSON = parseJSONText "SessionState"
