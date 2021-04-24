{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputState
  ( InputState
      ( ..,
        ISAttached,
        ISCreating,
        ISDeleted,
        ISDeleting,
        ISDetached
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Placeholder documentation for InputState
data InputState = InputState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ISAttached :: InputState
pattern ISAttached = InputState' "ATTACHED"

pattern ISCreating :: InputState
pattern ISCreating = InputState' "CREATING"

pattern ISDeleted :: InputState
pattern ISDeleted = InputState' "DELETED"

pattern ISDeleting :: InputState
pattern ISDeleting = InputState' "DELETING"

pattern ISDetached :: InputState
pattern ISDetached = InputState' "DETACHED"

{-# COMPLETE
  ISAttached,
  ISCreating,
  ISDeleted,
  ISDeleting,
  ISDetached,
  InputState'
  #-}

instance FromText InputState where
  parser = (InputState' . mk) <$> takeText

instance ToText InputState where
  toText (InputState' ci) = original ci

instance Hashable InputState

instance NFData InputState

instance ToByteString InputState

instance ToQuery InputState

instance ToHeader InputState

instance FromJSON InputState where
  parseJSON = parseJSONText "InputState"
