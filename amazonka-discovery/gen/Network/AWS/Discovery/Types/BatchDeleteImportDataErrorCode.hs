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
-- Module      : Network.AWS.Discovery.Types.BatchDeleteImportDataErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.BatchDeleteImportDataErrorCode
  ( BatchDeleteImportDataErrorCode
      ( ..,
        BatchDeleteImportDataErrorCodeINTERNALSERVERERROR,
        BatchDeleteImportDataErrorCodeNOTFOUND,
        BatchDeleteImportDataErrorCodeOVERLIMIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BatchDeleteImportDataErrorCode = BatchDeleteImportDataErrorCode'
  { fromBatchDeleteImportDataErrorCode ::
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

pattern BatchDeleteImportDataErrorCodeINTERNALSERVERERROR :: BatchDeleteImportDataErrorCode
pattern BatchDeleteImportDataErrorCodeINTERNALSERVERERROR = BatchDeleteImportDataErrorCode' "INTERNAL_SERVER_ERROR"

pattern BatchDeleteImportDataErrorCodeNOTFOUND :: BatchDeleteImportDataErrorCode
pattern BatchDeleteImportDataErrorCodeNOTFOUND = BatchDeleteImportDataErrorCode' "NOT_FOUND"

pattern BatchDeleteImportDataErrorCodeOVERLIMIT :: BatchDeleteImportDataErrorCode
pattern BatchDeleteImportDataErrorCodeOVERLIMIT = BatchDeleteImportDataErrorCode' "OVER_LIMIT"

{-# COMPLETE
  BatchDeleteImportDataErrorCodeINTERNALSERVERERROR,
  BatchDeleteImportDataErrorCodeNOTFOUND,
  BatchDeleteImportDataErrorCodeOVERLIMIT,
  BatchDeleteImportDataErrorCode'
  #-}

instance Prelude.FromText BatchDeleteImportDataErrorCode where
  parser = BatchDeleteImportDataErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText BatchDeleteImportDataErrorCode where
  toText (BatchDeleteImportDataErrorCode' x) = x

instance Prelude.Hashable BatchDeleteImportDataErrorCode

instance Prelude.NFData BatchDeleteImportDataErrorCode

instance Prelude.ToByteString BatchDeleteImportDataErrorCode

instance Prelude.ToQuery BatchDeleteImportDataErrorCode

instance Prelude.ToHeader BatchDeleteImportDataErrorCode

instance Prelude.FromJSON BatchDeleteImportDataErrorCode where
  parseJSON = Prelude.parseJSONText "BatchDeleteImportDataErrorCode"
