{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.FailedItemErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.FailedItemErrorCode
  ( FailedItemErrorCode
      ( ..,
        AccessDenied,
        DuplicateARN,
        InternalError,
        InvalidARN,
        ItemDoesNotExist,
        LimitExceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FailedItemErrorCode
  = FailedItemErrorCode'
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

pattern AccessDenied :: FailedItemErrorCode
pattern AccessDenied = FailedItemErrorCode' "ACCESS_DENIED"

pattern DuplicateARN :: FailedItemErrorCode
pattern DuplicateARN = FailedItemErrorCode' "DUPLICATE_ARN"

pattern InternalError :: FailedItemErrorCode
pattern InternalError = FailedItemErrorCode' "INTERNAL_ERROR"

pattern InvalidARN :: FailedItemErrorCode
pattern InvalidARN = FailedItemErrorCode' "INVALID_ARN"

pattern ItemDoesNotExist :: FailedItemErrorCode
pattern ItemDoesNotExist = FailedItemErrorCode' "ITEM_DOES_NOT_EXIST"

pattern LimitExceeded :: FailedItemErrorCode
pattern LimitExceeded = FailedItemErrorCode' "LIMIT_EXCEEDED"

{-# COMPLETE
  AccessDenied,
  DuplicateARN,
  InternalError,
  InvalidARN,
  ItemDoesNotExist,
  LimitExceeded,
  FailedItemErrorCode'
  #-}

instance FromText FailedItemErrorCode where
  parser = (FailedItemErrorCode' . mk) <$> takeText

instance ToText FailedItemErrorCode where
  toText (FailedItemErrorCode' ci) = original ci

instance Hashable FailedItemErrorCode

instance NFData FailedItemErrorCode

instance ToByteString FailedItemErrorCode

instance ToQuery FailedItemErrorCode

instance ToHeader FailedItemErrorCode

instance FromJSON FailedItemErrorCode where
  parseJSON = parseJSONText "FailedItemErrorCode"
