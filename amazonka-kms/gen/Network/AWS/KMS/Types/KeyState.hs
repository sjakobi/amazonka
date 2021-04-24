{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.KeyState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.KeyState
  ( KeyState
      ( ..,
        Disabled,
        Enabled,
        PendingDeletion,
        PendingImport,
        Unavailable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data KeyState = KeyState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Disabled :: KeyState
pattern Disabled = KeyState' "Disabled"

pattern Enabled :: KeyState
pattern Enabled = KeyState' "Enabled"

pattern PendingDeletion :: KeyState
pattern PendingDeletion = KeyState' "PendingDeletion"

pattern PendingImport :: KeyState
pattern PendingImport = KeyState' "PendingImport"

pattern Unavailable :: KeyState
pattern Unavailable = KeyState' "Unavailable"

{-# COMPLETE
  Disabled,
  Enabled,
  PendingDeletion,
  PendingImport,
  Unavailable,
  KeyState'
  #-}

instance FromText KeyState where
  parser = (KeyState' . mk) <$> takeText

instance ToText KeyState where
  toText (KeyState' ci) = original ci

instance Hashable KeyState

instance NFData KeyState

instance ToByteString KeyState

instance ToQuery KeyState

instance ToHeader KeyState

instance FromJSON KeyState where
  parseJSON = parseJSONText "KeyState"
