{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ResourceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ResourceAttribute
  ( ResourceAttribute
      ( ..,
        CreationPolicy,
        DeletionPolicy,
        Metadata,
        Properties,
        Tags,
        UpdatePolicy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ResourceAttribute = ResourceAttribute' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CreationPolicy :: ResourceAttribute
pattern CreationPolicy = ResourceAttribute' "CreationPolicy"

pattern DeletionPolicy :: ResourceAttribute
pattern DeletionPolicy = ResourceAttribute' "DeletionPolicy"

pattern Metadata :: ResourceAttribute
pattern Metadata = ResourceAttribute' "Metadata"

pattern Properties :: ResourceAttribute
pattern Properties = ResourceAttribute' "Properties"

pattern Tags :: ResourceAttribute
pattern Tags = ResourceAttribute' "Tags"

pattern UpdatePolicy :: ResourceAttribute
pattern UpdatePolicy = ResourceAttribute' "UpdatePolicy"

{-# COMPLETE
  CreationPolicy,
  DeletionPolicy,
  Metadata,
  Properties,
  Tags,
  UpdatePolicy,
  ResourceAttribute'
  #-}

instance FromText ResourceAttribute where
  parser = (ResourceAttribute' . mk) <$> takeText

instance ToText ResourceAttribute where
  toText (ResourceAttribute' ci) = original ci

instance Hashable ResourceAttribute

instance NFData ResourceAttribute

instance ToByteString ResourceAttribute

instance ToQuery ResourceAttribute

instance ToHeader ResourceAttribute

instance FromXML ResourceAttribute where
  parseXML = parseXMLText "ResourceAttribute"
