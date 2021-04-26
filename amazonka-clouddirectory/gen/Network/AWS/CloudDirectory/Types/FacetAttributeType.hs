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
-- Module      : Network.AWS.CloudDirectory.Types.FacetAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.FacetAttributeType
  ( FacetAttributeType
      ( ..,
        FacetAttributeTypeBINARY,
        FacetAttributeTypeBOOLEAN,
        FacetAttributeTypeDATETIME,
        FacetAttributeTypeNUMBER,
        FacetAttributeTypeSTRING,
        FacetAttributeTypeVARIANT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FacetAttributeType = FacetAttributeType'
  { fromFacetAttributeType ::
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

pattern FacetAttributeTypeBINARY :: FacetAttributeType
pattern FacetAttributeTypeBINARY = FacetAttributeType' "BINARY"

pattern FacetAttributeTypeBOOLEAN :: FacetAttributeType
pattern FacetAttributeTypeBOOLEAN = FacetAttributeType' "BOOLEAN"

pattern FacetAttributeTypeDATETIME :: FacetAttributeType
pattern FacetAttributeTypeDATETIME = FacetAttributeType' "DATETIME"

pattern FacetAttributeTypeNUMBER :: FacetAttributeType
pattern FacetAttributeTypeNUMBER = FacetAttributeType' "NUMBER"

pattern FacetAttributeTypeSTRING :: FacetAttributeType
pattern FacetAttributeTypeSTRING = FacetAttributeType' "STRING"

pattern FacetAttributeTypeVARIANT :: FacetAttributeType
pattern FacetAttributeTypeVARIANT = FacetAttributeType' "VARIANT"

{-# COMPLETE
  FacetAttributeTypeBINARY,
  FacetAttributeTypeBOOLEAN,
  FacetAttributeTypeDATETIME,
  FacetAttributeTypeNUMBER,
  FacetAttributeTypeSTRING,
  FacetAttributeTypeVARIANT,
  FacetAttributeType'
  #-}

instance Prelude.FromText FacetAttributeType where
  parser = FacetAttributeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FacetAttributeType where
  toText (FacetAttributeType' x) = x

instance Prelude.Hashable FacetAttributeType

instance Prelude.NFData FacetAttributeType

instance Prelude.ToByteString FacetAttributeType

instance Prelude.ToQuery FacetAttributeType

instance Prelude.ToHeader FacetAttributeType

instance Prelude.ToJSON FacetAttributeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FacetAttributeType where
  parseJSON = Prelude.parseJSONText "FacetAttributeType"
