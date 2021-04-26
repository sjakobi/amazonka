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
-- Module      : Network.AWS.Glue.Types.SchemaDiffType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.SchemaDiffType
  ( SchemaDiffType
      ( ..,
        SchemaDiffTypeSYNTAXDIFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SchemaDiffType = SchemaDiffType'
  { fromSchemaDiffType ::
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

pattern SchemaDiffTypeSYNTAXDIFF :: SchemaDiffType
pattern SchemaDiffTypeSYNTAXDIFF = SchemaDiffType' "SYNTAX_DIFF"

{-# COMPLETE
  SchemaDiffTypeSYNTAXDIFF,
  SchemaDiffType'
  #-}

instance Prelude.FromText SchemaDiffType where
  parser = SchemaDiffType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SchemaDiffType where
  toText (SchemaDiffType' x) = x

instance Prelude.Hashable SchemaDiffType

instance Prelude.NFData SchemaDiffType

instance Prelude.ToByteString SchemaDiffType

instance Prelude.ToQuery SchemaDiffType

instance Prelude.ToHeader SchemaDiffType

instance Prelude.ToJSON SchemaDiffType where
  toJSON = Prelude.toJSONText
