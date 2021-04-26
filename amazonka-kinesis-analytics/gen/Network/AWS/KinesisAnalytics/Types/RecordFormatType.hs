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
-- Module      : Network.AWS.KinesisAnalytics.Types.RecordFormatType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.RecordFormatType
  ( RecordFormatType
      ( ..,
        RecordFormatTypeCSV,
        RecordFormatTypeJSON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecordFormatType = RecordFormatType'
  { fromRecordFormatType ::
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

pattern RecordFormatTypeCSV :: RecordFormatType
pattern RecordFormatTypeCSV = RecordFormatType' "CSV"

pattern RecordFormatTypeJSON :: RecordFormatType
pattern RecordFormatTypeJSON = RecordFormatType' "JSON"

{-# COMPLETE
  RecordFormatTypeCSV,
  RecordFormatTypeJSON,
  RecordFormatType'
  #-}

instance Prelude.FromText RecordFormatType where
  parser = RecordFormatType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecordFormatType where
  toText (RecordFormatType' x) = x

instance Prelude.Hashable RecordFormatType

instance Prelude.NFData RecordFormatType

instance Prelude.ToByteString RecordFormatType

instance Prelude.ToQuery RecordFormatType

instance Prelude.ToHeader RecordFormatType

instance Prelude.ToJSON RecordFormatType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RecordFormatType where
  parseJSON = Prelude.parseJSONText "RecordFormatType"
