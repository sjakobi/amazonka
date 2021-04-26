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
-- Module      : Network.AWS.WorkDocs.Types.BooleanEnumType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.BooleanEnumType
  ( BooleanEnumType
      ( ..,
        BooleanEnumTypeFALSE,
        BooleanEnumTypeTRUE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BooleanEnumType = BooleanEnumType'
  { fromBooleanEnumType ::
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

pattern BooleanEnumTypeFALSE :: BooleanEnumType
pattern BooleanEnumTypeFALSE = BooleanEnumType' "FALSE"

pattern BooleanEnumTypeTRUE :: BooleanEnumType
pattern BooleanEnumTypeTRUE = BooleanEnumType' "TRUE"

{-# COMPLETE
  BooleanEnumTypeFALSE,
  BooleanEnumTypeTRUE,
  BooleanEnumType'
  #-}

instance Prelude.FromText BooleanEnumType where
  parser = BooleanEnumType' Prelude.<$> Prelude.takeText

instance Prelude.ToText BooleanEnumType where
  toText (BooleanEnumType' x) = x

instance Prelude.Hashable BooleanEnumType

instance Prelude.NFData BooleanEnumType

instance Prelude.ToByteString BooleanEnumType

instance Prelude.ToQuery BooleanEnumType

instance Prelude.ToHeader BooleanEnumType

instance Prelude.ToJSON BooleanEnumType where
  toJSON = Prelude.toJSONText
