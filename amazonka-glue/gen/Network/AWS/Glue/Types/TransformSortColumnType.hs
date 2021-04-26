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
-- Module      : Network.AWS.Glue.Types.TransformSortColumnType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TransformSortColumnType
  ( TransformSortColumnType
      ( ..,
        TransformSortColumnTypeCREATED,
        TransformSortColumnTypeLASTMODIFIED,
        TransformSortColumnTypeNAME,
        TransformSortColumnTypeSTATUS,
        TransformSortColumnTypeTRANSFORMTYPE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TransformSortColumnType = TransformSortColumnType'
  { fromTransformSortColumnType ::
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

pattern TransformSortColumnTypeCREATED :: TransformSortColumnType
pattern TransformSortColumnTypeCREATED = TransformSortColumnType' "CREATED"

pattern TransformSortColumnTypeLASTMODIFIED :: TransformSortColumnType
pattern TransformSortColumnTypeLASTMODIFIED = TransformSortColumnType' "LAST_MODIFIED"

pattern TransformSortColumnTypeNAME :: TransformSortColumnType
pattern TransformSortColumnTypeNAME = TransformSortColumnType' "NAME"

pattern TransformSortColumnTypeSTATUS :: TransformSortColumnType
pattern TransformSortColumnTypeSTATUS = TransformSortColumnType' "STATUS"

pattern TransformSortColumnTypeTRANSFORMTYPE :: TransformSortColumnType
pattern TransformSortColumnTypeTRANSFORMTYPE = TransformSortColumnType' "TRANSFORM_TYPE"

{-# COMPLETE
  TransformSortColumnTypeCREATED,
  TransformSortColumnTypeLASTMODIFIED,
  TransformSortColumnTypeNAME,
  TransformSortColumnTypeSTATUS,
  TransformSortColumnTypeTRANSFORMTYPE,
  TransformSortColumnType'
  #-}

instance Prelude.FromText TransformSortColumnType where
  parser = TransformSortColumnType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TransformSortColumnType where
  toText (TransformSortColumnType' x) = x

instance Prelude.Hashable TransformSortColumnType

instance Prelude.NFData TransformSortColumnType

instance Prelude.ToByteString TransformSortColumnType

instance Prelude.ToQuery TransformSortColumnType

instance Prelude.ToHeader TransformSortColumnType

instance Prelude.ToJSON TransformSortColumnType where
  toJSON = Prelude.toJSONText
