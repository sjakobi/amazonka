{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.DirectoryState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.DirectoryState
  ( DirectoryState
      ( ..,
        Deleted,
        Disabled,
        Enabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DirectoryState = DirectoryState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Deleted :: DirectoryState
pattern Deleted = DirectoryState' "DELETED"

pattern Disabled :: DirectoryState
pattern Disabled = DirectoryState' "DISABLED"

pattern Enabled :: DirectoryState
pattern Enabled = DirectoryState' "ENABLED"

{-# COMPLETE
  Deleted,
  Disabled,
  Enabled,
  DirectoryState'
  #-}

instance FromText DirectoryState where
  parser = (DirectoryState' . mk) <$> takeText

instance ToText DirectoryState where
  toText (DirectoryState' ci) = original ci

instance Hashable DirectoryState

instance NFData DirectoryState

instance ToByteString DirectoryState

instance ToQuery DirectoryState

instance ToHeader DirectoryState

instance ToJSON DirectoryState where
  toJSON = toJSONText

instance FromJSON DirectoryState where
  parseJSON = parseJSONText "DirectoryState"
