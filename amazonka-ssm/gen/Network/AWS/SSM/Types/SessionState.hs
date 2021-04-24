{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.SessionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.SessionState
  ( SessionState
      ( ..,
        Active,
        History
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

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

pattern Active :: SessionState
pattern Active = SessionState' "Active"

pattern History :: SessionState
pattern History = SessionState' "History"

{-# COMPLETE
  Active,
  History,
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

instance ToJSON SessionState where
  toJSON = toJSONText
