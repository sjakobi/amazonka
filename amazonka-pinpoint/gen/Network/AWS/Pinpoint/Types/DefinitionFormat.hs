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
-- Module      : Network.AWS.Pinpoint.Types.DefinitionFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.DefinitionFormat
  ( DefinitionFormat
      ( ..,
        DefinitionFormatCSV,
        DefinitionFormatJSON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DefinitionFormat = DefinitionFormat'
  { fromDefinitionFormat ::
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

pattern DefinitionFormatCSV :: DefinitionFormat
pattern DefinitionFormatCSV = DefinitionFormat' "CSV"

pattern DefinitionFormatJSON :: DefinitionFormat
pattern DefinitionFormatJSON = DefinitionFormat' "JSON"

{-# COMPLETE
  DefinitionFormatCSV,
  DefinitionFormatJSON,
  DefinitionFormat'
  #-}

instance Prelude.FromText DefinitionFormat where
  parser = DefinitionFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText DefinitionFormat where
  toText (DefinitionFormat' x) = x

instance Prelude.Hashable DefinitionFormat

instance Prelude.NFData DefinitionFormat

instance Prelude.ToByteString DefinitionFormat

instance Prelude.ToQuery DefinitionFormat

instance Prelude.ToHeader DefinitionFormat

instance Prelude.ToJSON DefinitionFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DefinitionFormat where
  parseJSON = Prelude.parseJSONText "DefinitionFormat"
