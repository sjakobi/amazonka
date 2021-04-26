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
-- Module      : Network.AWS.Discovery.Types.ExportDataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ExportDataFormat
  ( ExportDataFormat
      ( ..,
        ExportDataFormatCSV,
        ExportDataFormatGRAPHML
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExportDataFormat = ExportDataFormat'
  { fromExportDataFormat ::
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

pattern ExportDataFormatCSV :: ExportDataFormat
pattern ExportDataFormatCSV = ExportDataFormat' "CSV"

pattern ExportDataFormatGRAPHML :: ExportDataFormat
pattern ExportDataFormatGRAPHML = ExportDataFormat' "GRAPHML"

{-# COMPLETE
  ExportDataFormatCSV,
  ExportDataFormatGRAPHML,
  ExportDataFormat'
  #-}

instance Prelude.FromText ExportDataFormat where
  parser = ExportDataFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExportDataFormat where
  toText (ExportDataFormat' x) = x

instance Prelude.Hashable ExportDataFormat

instance Prelude.NFData ExportDataFormat

instance Prelude.ToByteString ExportDataFormat

instance Prelude.ToQuery ExportDataFormat

instance Prelude.ToHeader ExportDataFormat

instance Prelude.ToJSON ExportDataFormat where
  toJSON = Prelude.toJSONText
