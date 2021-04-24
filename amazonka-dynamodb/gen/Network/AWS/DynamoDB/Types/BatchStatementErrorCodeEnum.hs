{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.BatchStatementErrorCodeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BatchStatementErrorCodeEnum
  ( BatchStatementErrorCodeEnum
      ( ..,
        AccessDenied,
        ConditionalCheckFailed,
        DuplicateItem,
        InternalServerError,
        ItemCollectionSizeLimitExceeded,
        ProvisionedThroughputExceeded,
        RequestLimitExceeded,
        ResourceNotFound,
        ThrottlingError,
        TransactionConflict,
        ValidationError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BatchStatementErrorCodeEnum
  = BatchStatementErrorCodeEnum'
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

pattern AccessDenied :: BatchStatementErrorCodeEnum
pattern AccessDenied = BatchStatementErrorCodeEnum' "AccessDenied"

pattern ConditionalCheckFailed :: BatchStatementErrorCodeEnum
pattern ConditionalCheckFailed = BatchStatementErrorCodeEnum' "ConditionalCheckFailed"

pattern DuplicateItem :: BatchStatementErrorCodeEnum
pattern DuplicateItem = BatchStatementErrorCodeEnum' "DuplicateItem"

pattern InternalServerError :: BatchStatementErrorCodeEnum
pattern InternalServerError = BatchStatementErrorCodeEnum' "InternalServerError"

pattern ItemCollectionSizeLimitExceeded :: BatchStatementErrorCodeEnum
pattern ItemCollectionSizeLimitExceeded = BatchStatementErrorCodeEnum' "ItemCollectionSizeLimitExceeded"

pattern ProvisionedThroughputExceeded :: BatchStatementErrorCodeEnum
pattern ProvisionedThroughputExceeded = BatchStatementErrorCodeEnum' "ProvisionedThroughputExceeded"

pattern RequestLimitExceeded :: BatchStatementErrorCodeEnum
pattern RequestLimitExceeded = BatchStatementErrorCodeEnum' "RequestLimitExceeded"

pattern ResourceNotFound :: BatchStatementErrorCodeEnum
pattern ResourceNotFound = BatchStatementErrorCodeEnum' "ResourceNotFound"

pattern ThrottlingError :: BatchStatementErrorCodeEnum
pattern ThrottlingError = BatchStatementErrorCodeEnum' "ThrottlingError"

pattern TransactionConflict :: BatchStatementErrorCodeEnum
pattern TransactionConflict = BatchStatementErrorCodeEnum' "TransactionConflict"

pattern ValidationError :: BatchStatementErrorCodeEnum
pattern ValidationError = BatchStatementErrorCodeEnum' "ValidationError"

{-# COMPLETE
  AccessDenied,
  ConditionalCheckFailed,
  DuplicateItem,
  InternalServerError,
  ItemCollectionSizeLimitExceeded,
  ProvisionedThroughputExceeded,
  RequestLimitExceeded,
  ResourceNotFound,
  ThrottlingError,
  TransactionConflict,
  ValidationError,
  BatchStatementErrorCodeEnum'
  #-}

instance FromText BatchStatementErrorCodeEnum where
  parser = (BatchStatementErrorCodeEnum' . mk) <$> takeText

instance ToText BatchStatementErrorCodeEnum where
  toText (BatchStatementErrorCodeEnum' ci) = original ci

instance Hashable BatchStatementErrorCodeEnum

instance NFData BatchStatementErrorCodeEnum

instance ToByteString BatchStatementErrorCodeEnum

instance ToQuery BatchStatementErrorCodeEnum

instance ToHeader BatchStatementErrorCodeEnum

instance FromJSON BatchStatementErrorCodeEnum where
  parseJSON = parseJSONText "BatchStatementErrorCodeEnum"
