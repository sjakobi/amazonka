{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.ResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ResourceType
  ( ResourceType
      ( ..,
        Document,
        EC2Instance,
        ManagedInstance
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceType = ResourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Document :: ResourceType
pattern Document = ResourceType' "Document"

pattern EC2Instance :: ResourceType
pattern EC2Instance = ResourceType' "EC2Instance"

pattern ManagedInstance :: ResourceType
pattern ManagedInstance = ResourceType' "ManagedInstance"

{-# COMPLETE
  Document,
  EC2Instance,
  ManagedInstance,
  ResourceType'
  #-}

instance FromText ResourceType where
  parser = (ResourceType' . mk) <$> takeText

instance ToText ResourceType where
  toText (ResourceType' ci) = original ci

instance Hashable ResourceType

instance NFData ResourceType

instance ToByteString ResourceType

instance ToQuery ResourceType

instance ToHeader ResourceType

instance FromJSON ResourceType where
  parseJSON = parseJSONText "ResourceType"
