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
-- Module      : Network.AWS.Translate.Types.TerminologyDataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.TerminologyDataFormat
  ( TerminologyDataFormat
      ( ..,
        TerminologyDataFormatCSV,
        TerminologyDataFormatTMX
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TerminologyDataFormat = TerminologyDataFormat'
  { fromTerminologyDataFormat ::
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

pattern TerminologyDataFormatCSV :: TerminologyDataFormat
pattern TerminologyDataFormatCSV = TerminologyDataFormat' "CSV"

pattern TerminologyDataFormatTMX :: TerminologyDataFormat
pattern TerminologyDataFormatTMX = TerminologyDataFormat' "TMX"

{-# COMPLETE
  TerminologyDataFormatCSV,
  TerminologyDataFormatTMX,
  TerminologyDataFormat'
  #-}

instance Prelude.FromText TerminologyDataFormat where
  parser = TerminologyDataFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText TerminologyDataFormat where
  toText (TerminologyDataFormat' x) = x

instance Prelude.Hashable TerminologyDataFormat

instance Prelude.NFData TerminologyDataFormat

instance Prelude.ToByteString TerminologyDataFormat

instance Prelude.ToQuery TerminologyDataFormat

instance Prelude.ToHeader TerminologyDataFormat

instance Prelude.ToJSON TerminologyDataFormat where
  toJSON = Prelude.toJSONText
