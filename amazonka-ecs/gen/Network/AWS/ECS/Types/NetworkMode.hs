{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.NetworkMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.NetworkMode
  ( NetworkMode
      ( ..,
        NMAWSvpc,
        NMBridge,
        NMHost,
        NMNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NetworkMode = NetworkMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern NMAWSvpc :: NetworkMode
pattern NMAWSvpc = NetworkMode' "awsvpc"

pattern NMBridge :: NetworkMode
pattern NMBridge = NetworkMode' "bridge"

pattern NMHost :: NetworkMode
pattern NMHost = NetworkMode' "host"

pattern NMNone :: NetworkMode
pattern NMNone = NetworkMode' "none"

{-# COMPLETE
  NMAWSvpc,
  NMBridge,
  NMHost,
  NMNone,
  NetworkMode'
  #-}

instance FromText NetworkMode where
  parser = (NetworkMode' . mk) <$> takeText

instance ToText NetworkMode where
  toText (NetworkMode' ci) = original ci

instance Hashable NetworkMode

instance NFData NetworkMode

instance ToByteString NetworkMode

instance ToQuery NetworkMode

instance ToHeader NetworkMode

instance ToJSON NetworkMode where
  toJSON = toJSONText

instance FromJSON NetworkMode where
  parseJSON = parseJSONText "NetworkMode"
