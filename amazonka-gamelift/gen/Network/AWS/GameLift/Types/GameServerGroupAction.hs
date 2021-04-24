{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameServerGroupAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerGroupAction
  ( GameServerGroupAction
      ( ..,
        ReplaceInstanceTypes
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameServerGroupAction
  = GameServerGroupAction'
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

pattern ReplaceInstanceTypes :: GameServerGroupAction
pattern ReplaceInstanceTypes = GameServerGroupAction' "REPLACE_INSTANCE_TYPES"

{-# COMPLETE
  ReplaceInstanceTypes,
  GameServerGroupAction'
  #-}

instance FromText GameServerGroupAction where
  parser = (GameServerGroupAction' . mk) <$> takeText

instance ToText GameServerGroupAction where
  toText (GameServerGroupAction' ci) = original ci

instance Hashable GameServerGroupAction

instance NFData GameServerGroupAction

instance ToByteString GameServerGroupAction

instance ToQuery GameServerGroupAction

instance ToHeader GameServerGroupAction

instance ToJSON GameServerGroupAction where
  toJSON = toJSONText

instance FromJSON GameServerGroupAction where
  parseJSON = parseJSONText "GameServerGroupAction"
