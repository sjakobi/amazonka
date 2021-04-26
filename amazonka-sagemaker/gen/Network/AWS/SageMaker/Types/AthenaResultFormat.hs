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
-- Module      : Network.AWS.SageMaker.Types.AthenaResultFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AthenaResultFormat
  ( AthenaResultFormat
      ( ..,
        AthenaResultFormatAVRO,
        AthenaResultFormatJSON,
        AthenaResultFormatORC,
        AthenaResultFormatPARQUET,
        AthenaResultFormatTEXTFILE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The data storage format for Athena query results.
newtype AthenaResultFormat = AthenaResultFormat'
  { fromAthenaResultFormat ::
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

pattern AthenaResultFormatAVRO :: AthenaResultFormat
pattern AthenaResultFormatAVRO = AthenaResultFormat' "AVRO"

pattern AthenaResultFormatJSON :: AthenaResultFormat
pattern AthenaResultFormatJSON = AthenaResultFormat' "JSON"

pattern AthenaResultFormatORC :: AthenaResultFormat
pattern AthenaResultFormatORC = AthenaResultFormat' "ORC"

pattern AthenaResultFormatPARQUET :: AthenaResultFormat
pattern AthenaResultFormatPARQUET = AthenaResultFormat' "PARQUET"

pattern AthenaResultFormatTEXTFILE :: AthenaResultFormat
pattern AthenaResultFormatTEXTFILE = AthenaResultFormat' "TEXTFILE"

{-# COMPLETE
  AthenaResultFormatAVRO,
  AthenaResultFormatJSON,
  AthenaResultFormatORC,
  AthenaResultFormatPARQUET,
  AthenaResultFormatTEXTFILE,
  AthenaResultFormat'
  #-}

instance Prelude.FromText AthenaResultFormat where
  parser = AthenaResultFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText AthenaResultFormat where
  toText (AthenaResultFormat' x) = x

instance Prelude.Hashable AthenaResultFormat

instance Prelude.NFData AthenaResultFormat

instance Prelude.ToByteString AthenaResultFormat

instance Prelude.ToQuery AthenaResultFormat

instance Prelude.ToHeader AthenaResultFormat

instance Prelude.ToJSON AthenaResultFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AthenaResultFormat where
  parseJSON = Prelude.parseJSONText "AthenaResultFormat"
