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
-- Module      : Network.AWS.DynamoDB.Types.BatchStatementErrorCodeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BatchStatementErrorCodeEnum
  ( BatchStatementErrorCodeEnum
      ( ..,
        BatchStatementErrorCodeEnumAccessDenied,
        BatchStatementErrorCodeEnumConditionalCheckFailed,
        BatchStatementErrorCodeEnumDuplicateItem,
        BatchStatementErrorCodeEnumInternalServerError,
        BatchStatementErrorCodeEnumItemCollectionSizeLimitExceeded,
        BatchStatementErrorCodeEnumProvisionedThroughputExceeded,
        BatchStatementErrorCodeEnumRequestLimitExceeded,
        BatchStatementErrorCodeEnumResourceNotFound,
        BatchStatementErrorCodeEnumThrottlingError,
        BatchStatementErrorCodeEnumTransactionConflict,
        BatchStatementErrorCodeEnumValidationError
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BatchStatementErrorCodeEnum = BatchStatementErrorCodeEnum'
  { fromBatchStatementErrorCodeEnum ::
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

pattern BatchStatementErrorCodeEnumAccessDenied :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumAccessDenied = BatchStatementErrorCodeEnum' "AccessDenied"

pattern BatchStatementErrorCodeEnumConditionalCheckFailed :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumConditionalCheckFailed = BatchStatementErrorCodeEnum' "ConditionalCheckFailed"

pattern BatchStatementErrorCodeEnumDuplicateItem :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumDuplicateItem = BatchStatementErrorCodeEnum' "DuplicateItem"

pattern BatchStatementErrorCodeEnumInternalServerError :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumInternalServerError = BatchStatementErrorCodeEnum' "InternalServerError"

pattern BatchStatementErrorCodeEnumItemCollectionSizeLimitExceeded :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumItemCollectionSizeLimitExceeded = BatchStatementErrorCodeEnum' "ItemCollectionSizeLimitExceeded"

pattern BatchStatementErrorCodeEnumProvisionedThroughputExceeded :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumProvisionedThroughputExceeded = BatchStatementErrorCodeEnum' "ProvisionedThroughputExceeded"

pattern BatchStatementErrorCodeEnumRequestLimitExceeded :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumRequestLimitExceeded = BatchStatementErrorCodeEnum' "RequestLimitExceeded"

pattern BatchStatementErrorCodeEnumResourceNotFound :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumResourceNotFound = BatchStatementErrorCodeEnum' "ResourceNotFound"

pattern BatchStatementErrorCodeEnumThrottlingError :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumThrottlingError = BatchStatementErrorCodeEnum' "ThrottlingError"

pattern BatchStatementErrorCodeEnumTransactionConflict :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumTransactionConflict = BatchStatementErrorCodeEnum' "TransactionConflict"

pattern BatchStatementErrorCodeEnumValidationError :: BatchStatementErrorCodeEnum
pattern BatchStatementErrorCodeEnumValidationError = BatchStatementErrorCodeEnum' "ValidationError"

{-# COMPLETE
  BatchStatementErrorCodeEnumAccessDenied,
  BatchStatementErrorCodeEnumConditionalCheckFailed,
  BatchStatementErrorCodeEnumDuplicateItem,
  BatchStatementErrorCodeEnumInternalServerError,
  BatchStatementErrorCodeEnumItemCollectionSizeLimitExceeded,
  BatchStatementErrorCodeEnumProvisionedThroughputExceeded,
  BatchStatementErrorCodeEnumRequestLimitExceeded,
  BatchStatementErrorCodeEnumResourceNotFound,
  BatchStatementErrorCodeEnumThrottlingError,
  BatchStatementErrorCodeEnumTransactionConflict,
  BatchStatementErrorCodeEnumValidationError,
  BatchStatementErrorCodeEnum'
  #-}

instance Prelude.FromText BatchStatementErrorCodeEnum where
  parser = BatchStatementErrorCodeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText BatchStatementErrorCodeEnum where
  toText (BatchStatementErrorCodeEnum' x) = x

instance Prelude.Hashable BatchStatementErrorCodeEnum

instance Prelude.NFData BatchStatementErrorCodeEnum

instance Prelude.ToByteString BatchStatementErrorCodeEnum

instance Prelude.ToQuery BatchStatementErrorCodeEnum

instance Prelude.ToHeader BatchStatementErrorCodeEnum

instance Prelude.FromJSON BatchStatementErrorCodeEnum where
  parseJSON = Prelude.parseJSONText "BatchStatementErrorCodeEnum"
