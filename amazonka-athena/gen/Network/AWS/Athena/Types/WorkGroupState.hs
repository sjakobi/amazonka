{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.WorkGroupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.WorkGroupState
  ( WorkGroupState
      ( ..,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkGroupState = WorkGroupState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Disabled :: WorkGroupState
pattern Disabled = WorkGroupState' "DISABLED"

pattern Enabled :: WorkGroupState
pattern Enabled = WorkGroupState' "ENABLED"

{-# COMPLETE
  Disabled,
  Enabled,
  WorkGroupState'
  #-}

instance FromText WorkGroupState where
  parser = (WorkGroupState' . mk) <$> takeText

instance ToText WorkGroupState where
  toText (WorkGroupState' ci) = original ci

instance Hashable WorkGroupState

instance NFData WorkGroupState

instance ToByteString WorkGroupState

instance ToQuery WorkGroupState

instance ToHeader WorkGroupState

instance ToJSON WorkGroupState where
  toJSON = toJSONText

instance FromJSON WorkGroupState where
  parseJSON = parseJSONText "WorkGroupState"
