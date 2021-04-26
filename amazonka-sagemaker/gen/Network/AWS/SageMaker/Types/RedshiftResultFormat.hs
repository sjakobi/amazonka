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
-- Module      : Network.AWS.SageMaker.Types.RedshiftResultFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RedshiftResultFormat
  ( RedshiftResultFormat
      ( ..,
        RedshiftResultFormatCSV,
        RedshiftResultFormatPARQUET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The data storage format for Redshift query results.
newtype RedshiftResultFormat = RedshiftResultFormat'
  { fromRedshiftResultFormat ::
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

pattern RedshiftResultFormatCSV :: RedshiftResultFormat
pattern RedshiftResultFormatCSV = RedshiftResultFormat' "CSV"

pattern RedshiftResultFormatPARQUET :: RedshiftResultFormat
pattern RedshiftResultFormatPARQUET = RedshiftResultFormat' "PARQUET"

{-# COMPLETE
  RedshiftResultFormatCSV,
  RedshiftResultFormatPARQUET,
  RedshiftResultFormat'
  #-}

instance Prelude.FromText RedshiftResultFormat where
  parser = RedshiftResultFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText RedshiftResultFormat where
  toText (RedshiftResultFormat' x) = x

instance Prelude.Hashable RedshiftResultFormat

instance Prelude.NFData RedshiftResultFormat

instance Prelude.ToByteString RedshiftResultFormat

instance Prelude.ToQuery RedshiftResultFormat

instance Prelude.ToHeader RedshiftResultFormat

instance Prelude.ToJSON RedshiftResultFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RedshiftResultFormat where
  parseJSON = Prelude.parseJSONText "RedshiftResultFormat"
