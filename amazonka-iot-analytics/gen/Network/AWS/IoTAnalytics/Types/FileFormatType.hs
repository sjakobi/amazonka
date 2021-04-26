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
-- Module      : Network.AWS.IoTAnalytics.Types.FileFormatType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.FileFormatType
  ( FileFormatType
      ( ..,
        FileFormatTypeJSON,
        FileFormatTypePARQUET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FileFormatType = FileFormatType'
  { fromFileFormatType ::
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

pattern FileFormatTypeJSON :: FileFormatType
pattern FileFormatTypeJSON = FileFormatType' "JSON"

pattern FileFormatTypePARQUET :: FileFormatType
pattern FileFormatTypePARQUET = FileFormatType' "PARQUET"

{-# COMPLETE
  FileFormatTypeJSON,
  FileFormatTypePARQUET,
  FileFormatType'
  #-}

instance Prelude.FromText FileFormatType where
  parser = FileFormatType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FileFormatType where
  toText (FileFormatType' x) = x

instance Prelude.Hashable FileFormatType

instance Prelude.NFData FileFormatType

instance Prelude.ToByteString FileFormatType

instance Prelude.ToQuery FileFormatType

instance Prelude.ToHeader FileFormatType

instance Prelude.FromJSON FileFormatType where
  parseJSON = Prelude.parseJSONText "FileFormatType"
