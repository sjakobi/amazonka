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
-- Module      : Network.AWS.ServiceCatalog.Types.ResourceAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ResourceAttribute
  ( ResourceAttribute
      ( ..,
        ResourceAttributeCREATIONPOLICY,
        ResourceAttributeDELETIONPOLICY,
        ResourceAttributeMETADATA,
        ResourceAttributePROPERTIES,
        ResourceAttributeTAGS,
        ResourceAttributeUPDATEPOLICY
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

pattern ResourceAttributeCREATIONPOLICY :: ResourceAttribute
pattern ResourceAttributeCREATIONPOLICY = ResourceAttribute' "CREATIONPOLICY"

pattern ResourceAttributeDELETIONPOLICY :: ResourceAttribute
pattern ResourceAttributeDELETIONPOLICY = ResourceAttribute' "DELETIONPOLICY"

pattern ResourceAttributeMETADATA :: ResourceAttribute
pattern ResourceAttributeMETADATA = ResourceAttribute' "METADATA"

pattern ResourceAttributePROPERTIES :: ResourceAttribute
pattern ResourceAttributePROPERTIES = ResourceAttribute' "PROPERTIES"

pattern ResourceAttributeTAGS :: ResourceAttribute
pattern ResourceAttributeTAGS = ResourceAttribute' "TAGS"

pattern ResourceAttributeUPDATEPOLICY :: ResourceAttribute
pattern ResourceAttributeUPDATEPOLICY = ResourceAttribute' "UPDATEPOLICY"

{-# COMPLETE
  ResourceAttributeCREATIONPOLICY,
  ResourceAttributeDELETIONPOLICY,
  ResourceAttributeMETADATA,
  ResourceAttributePROPERTIES,
  ResourceAttributeTAGS,
  ResourceAttributeUPDATEPOLICY,
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

instance Prelude.FromJSON ResourceAttribute where
  parseJSON = Prelude.parseJSONText "ResourceAttribute"
