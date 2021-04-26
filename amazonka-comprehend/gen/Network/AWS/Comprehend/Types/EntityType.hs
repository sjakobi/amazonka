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
-- Module      : Network.AWS.Comprehend.Types.EntityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EntityType
  ( EntityType
      ( ..,
        EntityTypeCOMMERCIALITEM,
        EntityTypeDATE,
        EntityTypeEVENT,
        EntityTypeLOCATION,
        EntityTypeORGANIZATION,
        EntityTypeOTHER,
        EntityTypePERSON,
        EntityTypeQUANTITY,
        EntityTypeTITLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EntityType = EntityType'
  { fromEntityType ::
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

pattern EntityTypeCOMMERCIALITEM :: EntityType
pattern EntityTypeCOMMERCIALITEM = EntityType' "COMMERCIAL_ITEM"

pattern EntityTypeDATE :: EntityType
pattern EntityTypeDATE = EntityType' "DATE"

pattern EntityTypeEVENT :: EntityType
pattern EntityTypeEVENT = EntityType' "EVENT"

pattern EntityTypeLOCATION :: EntityType
pattern EntityTypeLOCATION = EntityType' "LOCATION"

pattern EntityTypeORGANIZATION :: EntityType
pattern EntityTypeORGANIZATION = EntityType' "ORGANIZATION"

pattern EntityTypeOTHER :: EntityType
pattern EntityTypeOTHER = EntityType' "OTHER"

pattern EntityTypePERSON :: EntityType
pattern EntityTypePERSON = EntityType' "PERSON"

pattern EntityTypeQUANTITY :: EntityType
pattern EntityTypeQUANTITY = EntityType' "QUANTITY"

pattern EntityTypeTITLE :: EntityType
pattern EntityTypeTITLE = EntityType' "TITLE"

{-# COMPLETE
  EntityTypeCOMMERCIALITEM,
  EntityTypeDATE,
  EntityTypeEVENT,
  EntityTypeLOCATION,
  EntityTypeORGANIZATION,
  EntityTypeOTHER,
  EntityTypePERSON,
  EntityTypeQUANTITY,
  EntityTypeTITLE,
  EntityType'
  #-}

instance Prelude.FromText EntityType where
  parser = EntityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EntityType where
  toText (EntityType' x) = x

instance Prelude.Hashable EntityType

instance Prelude.NFData EntityType

instance Prelude.ToByteString EntityType

instance Prelude.ToQuery EntityType

instance Prelude.ToHeader EntityType

instance Prelude.FromJSON EntityType where
  parseJSON = Prelude.parseJSONText "EntityType"
