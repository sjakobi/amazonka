{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk.Types.ActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ActionType
  ( ActionType
      ( ..,
        InstanceRefresh,
        PlatformUpdate,
        Unknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ActionType = ActionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern InstanceRefresh :: ActionType
pattern InstanceRefresh = ActionType' "InstanceRefresh"

pattern PlatformUpdate :: ActionType
pattern PlatformUpdate = ActionType' "PlatformUpdate"

pattern Unknown :: ActionType
pattern Unknown = ActionType' "Unknown"

{-# COMPLETE
  InstanceRefresh,
  PlatformUpdate,
  Unknown,
  ActionType'
  #-}

instance FromText ActionType where
  parser = (ActionType' . mk) <$> takeText

instance ToText ActionType where
  toText (ActionType' ci) = original ci

instance Hashable ActionType

instance NFData ActionType

instance ToByteString ActionType

instance ToQuery ActionType

instance ToHeader ActionType

instance FromXML ActionType where
  parseXML = parseXMLText "ActionType"
