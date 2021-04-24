{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.LaunchType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.LaunchType
  ( LaunchType
      ( ..,
        EC2,
        Fargate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LaunchType = LaunchType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EC2 :: LaunchType
pattern EC2 = LaunchType' "EC2"

pattern Fargate :: LaunchType
pattern Fargate = LaunchType' "FARGATE"

{-# COMPLETE
  EC2,
  Fargate,
  LaunchType'
  #-}

instance FromText LaunchType where
  parser = (LaunchType' . mk) <$> takeText

instance ToText LaunchType where
  toText (LaunchType' ci) = original ci

instance Hashable LaunchType

instance NFData LaunchType

instance ToByteString LaunchType

instance ToQuery LaunchType

instance ToHeader LaunchType

instance ToJSON LaunchType where
  toJSON = toJSONText

instance FromJSON LaunchType where
  parseJSON = parseJSONText "LaunchType"
