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
-- Module      : Network.AWS.LexModels.Types.ExportType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ExportType
  ( ExportType
      ( ..,
        ExportTypeALEXASKILLSKIT,
        ExportTypeLEX
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExportType = ExportType'
  { fromExportType ::
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

pattern ExportTypeALEXASKILLSKIT :: ExportType
pattern ExportTypeALEXASKILLSKIT = ExportType' "ALEXA_SKILLS_KIT"

pattern ExportTypeLEX :: ExportType
pattern ExportTypeLEX = ExportType' "LEX"

{-# COMPLETE
  ExportTypeALEXASKILLSKIT,
  ExportTypeLEX,
  ExportType'
  #-}

instance Prelude.FromText ExportType where
  parser = ExportType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExportType where
  toText (ExportType' x) = x

instance Prelude.Hashable ExportType

instance Prelude.NFData ExportType

instance Prelude.ToByteString ExportType

instance Prelude.ToQuery ExportType

instance Prelude.ToHeader ExportType

instance Prelude.ToJSON ExportType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExportType where
  parseJSON = Prelude.parseJSONText "ExportType"
