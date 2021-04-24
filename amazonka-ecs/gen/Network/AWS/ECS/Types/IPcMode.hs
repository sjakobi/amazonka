{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.IPcMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.IPcMode
  ( IPcMode
      ( ..,
        IMHost,
        IMNone,
        IMTask
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IPcMode = IPcMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IMHost :: IPcMode
pattern IMHost = IPcMode' "host"

pattern IMNone :: IPcMode
pattern IMNone = IPcMode' "none"

pattern IMTask :: IPcMode
pattern IMTask = IPcMode' "task"

{-# COMPLETE
  IMHost,
  IMNone,
  IMTask,
  IPcMode'
  #-}

instance FromText IPcMode where
  parser = (IPcMode' . mk) <$> takeText

instance ToText IPcMode where
  toText (IPcMode' ci) = original ci

instance Hashable IPcMode

instance NFData IPcMode

instance ToByteString IPcMode

instance ToQuery IPcMode

instance ToHeader IPcMode

instance ToJSON IPcMode where
  toJSON = toJSONText

instance FromJSON IPcMode where
  parseJSON = parseJSONText "IPcMode"
