{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameServerGroupDeleteOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerGroupDeleteOption
  ( GameServerGroupDeleteOption
      ( ..,
        ForceDelete,
        Retain,
        SafeDelete
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameServerGroupDeleteOption
  = GameServerGroupDeleteOption'
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

pattern ForceDelete :: GameServerGroupDeleteOption
pattern ForceDelete = GameServerGroupDeleteOption' "FORCE_DELETE"

pattern Retain :: GameServerGroupDeleteOption
pattern Retain = GameServerGroupDeleteOption' "RETAIN"

pattern SafeDelete :: GameServerGroupDeleteOption
pattern SafeDelete = GameServerGroupDeleteOption' "SAFE_DELETE"

{-# COMPLETE
  ForceDelete,
  Retain,
  SafeDelete,
  GameServerGroupDeleteOption'
  #-}

instance FromText GameServerGroupDeleteOption where
  parser = (GameServerGroupDeleteOption' . mk) <$> takeText

instance ToText GameServerGroupDeleteOption where
  toText (GameServerGroupDeleteOption' ci) = original ci

instance Hashable GameServerGroupDeleteOption

instance NFData GameServerGroupDeleteOption

instance ToByteString GameServerGroupDeleteOption

instance ToQuery GameServerGroupDeleteOption

instance ToHeader GameServerGroupDeleteOption

instance ToJSON GameServerGroupDeleteOption where
  toJSON = toJSONText
