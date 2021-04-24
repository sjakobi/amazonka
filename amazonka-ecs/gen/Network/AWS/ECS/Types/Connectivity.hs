{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.Connectivity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.Connectivity
  ( Connectivity
      ( ..,
        Connected,
        Disconnected
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Connectivity = Connectivity' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Connected :: Connectivity
pattern Connected = Connectivity' "CONNECTED"

pattern Disconnected :: Connectivity
pattern Disconnected = Connectivity' "DISCONNECTED"

{-# COMPLETE
  Connected,
  Disconnected,
  Connectivity'
  #-}

instance FromText Connectivity where
  parser = (Connectivity' . mk) <$> takeText

instance ToText Connectivity where
  toText (Connectivity' ci) = original ci

instance Hashable Connectivity

instance NFData Connectivity

instance ToByteString Connectivity

instance ToQuery Connectivity

instance ToHeader Connectivity

instance FromJSON Connectivity where
  parseJSON = parseJSONText "Connectivity"
