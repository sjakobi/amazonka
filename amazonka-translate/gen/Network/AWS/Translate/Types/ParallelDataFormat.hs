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
-- Module      : Network.AWS.Translate.Types.ParallelDataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Translate.Types.ParallelDataFormat
  ( ParallelDataFormat
      ( ..,
        ParallelDataFormatCSV,
        ParallelDataFormatTMX,
        ParallelDataFormatTSV
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ParallelDataFormat = ParallelDataFormat'
  { fromParallelDataFormat ::
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

pattern ParallelDataFormatCSV :: ParallelDataFormat
pattern ParallelDataFormatCSV = ParallelDataFormat' "CSV"

pattern ParallelDataFormatTMX :: ParallelDataFormat
pattern ParallelDataFormatTMX = ParallelDataFormat' "TMX"

pattern ParallelDataFormatTSV :: ParallelDataFormat
pattern ParallelDataFormatTSV = ParallelDataFormat' "TSV"

{-# COMPLETE
  ParallelDataFormatCSV,
  ParallelDataFormatTMX,
  ParallelDataFormatTSV,
  ParallelDataFormat'
  #-}

instance Prelude.FromText ParallelDataFormat where
  parser = ParallelDataFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText ParallelDataFormat where
  toText (ParallelDataFormat' x) = x

instance Prelude.Hashable ParallelDataFormat

instance Prelude.NFData ParallelDataFormat

instance Prelude.ToByteString ParallelDataFormat

instance Prelude.ToQuery ParallelDataFormat

instance Prelude.ToHeader ParallelDataFormat

instance Prelude.ToJSON ParallelDataFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ParallelDataFormat where
  parseJSON = Prelude.parseJSONText "ParallelDataFormat"
