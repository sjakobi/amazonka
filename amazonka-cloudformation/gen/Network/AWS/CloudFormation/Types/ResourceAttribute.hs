{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ResourceAttributeCreationPolicy,
        ResourceAttributeDeletionPolicy,
        ResourceAttributeMetadata,
        ResourceAttributeProperties,
        ResourceAttributeTags,
        ResourceAttributeUpdatePolicy
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceAttribute = ResourceAttribute'
  { fromResourceAttribute ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ResourceAttributeCreationPolicy :: ResourceAttribute
pattern ResourceAttributeCreationPolicy = ResourceAttribute' "CreationPolicy"

pattern ResourceAttributeDeletionPolicy :: ResourceAttribute
pattern ResourceAttributeDeletionPolicy = ResourceAttribute' "DeletionPolicy"

pattern ResourceAttributeMetadata :: ResourceAttribute
pattern ResourceAttributeMetadata = ResourceAttribute' "Metadata"

pattern ResourceAttributeProperties :: ResourceAttribute
pattern ResourceAttributeProperties = ResourceAttribute' "Properties"

pattern ResourceAttributeTags :: ResourceAttribute
pattern ResourceAttributeTags = ResourceAttribute' "Tags"

pattern ResourceAttributeUpdatePolicy :: ResourceAttribute
pattern ResourceAttributeUpdatePolicy = ResourceAttribute' "UpdatePolicy"

{-# COMPLETE
  ResourceAttributeCreationPolicy,
  ResourceAttributeDeletionPolicy,
  ResourceAttributeMetadata,
  ResourceAttributeProperties,
  ResourceAttributeTags,
  ResourceAttributeUpdatePolicy,
  ResourceAttribute'
  #-}

instance Prelude.FromText ResourceAttribute where
  parser = ResourceAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceAttribute where
  toText (ResourceAttribute' x) = x

instance Prelude.Hashable ResourceAttribute

instance Prelude.NFData ResourceAttribute

instance Prelude.ToByteString ResourceAttribute

instance Prelude.ToQuery ResourceAttribute

instance Prelude.ToHeader ResourceAttribute

instance Prelude.FromXML ResourceAttribute where
  parseXML = Prelude.parseXMLText "ResourceAttribute"
