{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameServerHealthCheck
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerHealthCheck
  ( GameServerHealthCheck
      ( ..,
        Healthy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameServerHealthCheck
  = GameServerHealthCheck'
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

pattern Healthy :: GameServerHealthCheck
pattern Healthy = GameServerHealthCheck' "HEALTHY"

{-# COMPLETE
  Healthy,
  GameServerHealthCheck'
  #-}

instance FromText GameServerHealthCheck where
  parser = (GameServerHealthCheck' . mk) <$> takeText

instance ToText GameServerHealthCheck where
  toText (GameServerHealthCheck' ci) = original ci

instance Hashable GameServerHealthCheck

instance NFData GameServerHealthCheck

instance ToByteString GameServerHealthCheck

instance ToQuery GameServerHealthCheck

instance ToHeader GameServerHealthCheck

instance ToJSON GameServerHealthCheck where
  toJSON = toJSONText
