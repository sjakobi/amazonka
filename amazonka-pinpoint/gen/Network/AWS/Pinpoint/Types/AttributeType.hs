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
-- Module      : Network.AWS.Pinpoint.Types.AttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.AttributeType
  ( AttributeType
      ( ..,
        AttributeTypeAFTER,
        AttributeTypeBEFORE,
        AttributeTypeBETWEEN,
        AttributeTypeCONTAINS,
        AttributeTypeEXCLUSIVE,
        AttributeTypeINCLUSIVE,
        AttributeTypeON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AttributeType = AttributeType'
  { fromAttributeType ::
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

pattern AttributeTypeAFTER :: AttributeType
pattern AttributeTypeAFTER = AttributeType' "AFTER"

pattern AttributeTypeBEFORE :: AttributeType
pattern AttributeTypeBEFORE = AttributeType' "BEFORE"

pattern AttributeTypeBETWEEN :: AttributeType
pattern AttributeTypeBETWEEN = AttributeType' "BETWEEN"

pattern AttributeTypeCONTAINS :: AttributeType
pattern AttributeTypeCONTAINS = AttributeType' "CONTAINS"

pattern AttributeTypeEXCLUSIVE :: AttributeType
pattern AttributeTypeEXCLUSIVE = AttributeType' "EXCLUSIVE"

pattern AttributeTypeINCLUSIVE :: AttributeType
pattern AttributeTypeINCLUSIVE = AttributeType' "INCLUSIVE"

pattern AttributeTypeON :: AttributeType
pattern AttributeTypeON = AttributeType' "ON"

{-# COMPLETE
  AttributeTypeAFTER,
  AttributeTypeBEFORE,
  AttributeTypeBETWEEN,
  AttributeTypeCONTAINS,
  AttributeTypeEXCLUSIVE,
  AttributeTypeINCLUSIVE,
  AttributeTypeON,
  AttributeType'
  #-}

instance Prelude.FromText AttributeType where
  parser = AttributeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AttributeType where
  toText (AttributeType' x) = x

instance Prelude.Hashable AttributeType

instance Prelude.NFData AttributeType

instance Prelude.ToByteString AttributeType

instance Prelude.ToQuery AttributeType

instance Prelude.ToHeader AttributeType

instance Prelude.ToJSON AttributeType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AttributeType where
  parseJSON = Prelude.parseJSONText "AttributeType"
