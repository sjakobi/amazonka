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
-- Module      : Network.AWS.SSM.Types.DocumentFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentFormat
  ( DocumentFormat
      ( ..,
        DocumentFormatJSON,
        DocumentFormatTEXT,
        DocumentFormatYAML
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentFormat = DocumentFormat'
  { fromDocumentFormat ::
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

pattern DocumentFormatJSON :: DocumentFormat
pattern DocumentFormatJSON = DocumentFormat' "JSON"

pattern DocumentFormatTEXT :: DocumentFormat
pattern DocumentFormatTEXT = DocumentFormat' "TEXT"

pattern DocumentFormatYAML :: DocumentFormat
pattern DocumentFormatYAML = DocumentFormat' "YAML"

{-# COMPLETE
  DocumentFormatJSON,
  DocumentFormatTEXT,
  DocumentFormatYAML,
  DocumentFormat'
  #-}

instance Prelude.FromText DocumentFormat where
  parser = DocumentFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentFormat where
  toText (DocumentFormat' x) = x

instance Prelude.Hashable DocumentFormat

instance Prelude.NFData DocumentFormat

instance Prelude.ToByteString DocumentFormat

instance Prelude.ToQuery DocumentFormat

instance Prelude.ToHeader DocumentFormat

instance Prelude.ToJSON DocumentFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DocumentFormat where
  parseJSON = Prelude.parseJSONText "DocumentFormat"
