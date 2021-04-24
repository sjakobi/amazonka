{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        InternalServerError,
        NotFound,
        OverLimit
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BatchDeleteImportDataErrorCode
  = BatchDeleteImportDataErrorCode'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern InternalServerError :: BatchDeleteImportDataErrorCode
pattern InternalServerError = BatchDeleteImportDataErrorCode' "INTERNAL_SERVER_ERROR"

pattern NotFound :: BatchDeleteImportDataErrorCode
pattern NotFound = BatchDeleteImportDataErrorCode' "NOT_FOUND"

pattern OverLimit :: BatchDeleteImportDataErrorCode
pattern OverLimit = BatchDeleteImportDataErrorCode' "OVER_LIMIT"

{-# COMPLETE
  InternalServerError,
  NotFound,
  OverLimit,
  BatchDeleteImportDataErrorCode'
  #-}

instance FromText BatchDeleteImportDataErrorCode where
  parser = (BatchDeleteImportDataErrorCode' . mk) <$> takeText

instance ToText BatchDeleteImportDataErrorCode where
  toText (BatchDeleteImportDataErrorCode' ci) = original ci

instance Hashable BatchDeleteImportDataErrorCode

instance NFData BatchDeleteImportDataErrorCode

instance ToByteString BatchDeleteImportDataErrorCode

instance ToQuery BatchDeleteImportDataErrorCode

instance ToHeader BatchDeleteImportDataErrorCode

instance FromJSON BatchDeleteImportDataErrorCode where
  parseJSON = parseJSONText "BatchDeleteImportDataErrorCode"
