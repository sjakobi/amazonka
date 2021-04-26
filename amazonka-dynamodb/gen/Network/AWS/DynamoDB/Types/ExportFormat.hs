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
-- Module      : Network.AWS.DynamoDB.Types.ExportFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ExportFormat
  ( ExportFormat
      ( ..,
        ExportFormatDYNAMODBJSON,
        ExportFormatION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExportFormat = ExportFormat'
  { fromExportFormat ::
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

pattern ExportFormatDYNAMODBJSON :: ExportFormat
pattern ExportFormatDYNAMODBJSON = ExportFormat' "DYNAMODB_JSON"

pattern ExportFormatION :: ExportFormat
pattern ExportFormatION = ExportFormat' "ION"

{-# COMPLETE
  ExportFormatDYNAMODBJSON,
  ExportFormatION,
  ExportFormat'
  #-}

instance Prelude.FromText ExportFormat where
  parser = ExportFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExportFormat where
  toText (ExportFormat' x) = x

instance Prelude.Hashable ExportFormat

instance Prelude.NFData ExportFormat

instance Prelude.ToByteString ExportFormat

instance Prelude.ToQuery ExportFormat

instance Prelude.ToHeader ExportFormat

instance Prelude.ToJSON ExportFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExportFormat where
  parseJSON = Prelude.parseJSONText "ExportFormat"
