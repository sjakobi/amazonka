{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.ComputePlatform
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.ComputePlatform
  ( ComputePlatform
      ( ..,
        Ecs,
        Lambda,
        Server
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ComputePlatform = ComputePlatform' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Ecs :: ComputePlatform
pattern Ecs = ComputePlatform' "ECS"

pattern Lambda :: ComputePlatform
pattern Lambda = ComputePlatform' "Lambda"

pattern Server :: ComputePlatform
pattern Server = ComputePlatform' "Server"

{-# COMPLETE
  Ecs,
  Lambda,
  Server,
  ComputePlatform'
  #-}

instance FromText ComputePlatform where
  parser = (ComputePlatform' . mk) <$> takeText

instance ToText ComputePlatform where
  toText (ComputePlatform' ci) = original ci

instance Hashable ComputePlatform

instance NFData ComputePlatform

instance ToByteString ComputePlatform

instance ToQuery ComputePlatform

instance ToHeader ComputePlatform

instance ToJSON ComputePlatform where
  toJSON = toJSONText

instance FromJSON ComputePlatform where
  parseJSON = parseJSONText "ComputePlatform"
