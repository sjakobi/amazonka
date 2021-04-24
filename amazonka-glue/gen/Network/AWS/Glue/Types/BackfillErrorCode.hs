{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.BackfillErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.BackfillErrorCode
  ( BackfillErrorCode
      ( ..,
        EncryptedPartitionError,
        InternalError,
        InvalidPartitionTypeDataError,
        MissingPartitionValueError,
        UnsupportedPartitionCharacterError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BackfillErrorCode = BackfillErrorCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EncryptedPartitionError :: BackfillErrorCode
pattern EncryptedPartitionError = BackfillErrorCode' "ENCRYPTED_PARTITION_ERROR"

pattern InternalError :: BackfillErrorCode
pattern InternalError = BackfillErrorCode' "INTERNAL_ERROR"

pattern InvalidPartitionTypeDataError :: BackfillErrorCode
pattern InvalidPartitionTypeDataError = BackfillErrorCode' "INVALID_PARTITION_TYPE_DATA_ERROR"

pattern MissingPartitionValueError :: BackfillErrorCode
pattern MissingPartitionValueError = BackfillErrorCode' "MISSING_PARTITION_VALUE_ERROR"

pattern UnsupportedPartitionCharacterError :: BackfillErrorCode
pattern UnsupportedPartitionCharacterError = BackfillErrorCode' "UNSUPPORTED_PARTITION_CHARACTER_ERROR"

{-# COMPLETE
  EncryptedPartitionError,
  InternalError,
  InvalidPartitionTypeDataError,
  MissingPartitionValueError,
  UnsupportedPartitionCharacterError,
  BackfillErrorCode'
  #-}

instance FromText BackfillErrorCode where
  parser = (BackfillErrorCode' . mk) <$> takeText

instance ToText BackfillErrorCode where
  toText (BackfillErrorCode' ci) = original ci

instance Hashable BackfillErrorCode

instance NFData BackfillErrorCode

instance ToByteString BackfillErrorCode

instance ToQuery BackfillErrorCode

instance ToHeader BackfillErrorCode

instance FromJSON BackfillErrorCode where
  parseJSON = parseJSONText "BackfillErrorCode"
