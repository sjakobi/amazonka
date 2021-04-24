{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.StackErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.StackErrorCode
  ( StackErrorCode
      ( ..,
        SECInternalServiceError,
        SECStorageConnectorError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackErrorCode = StackErrorCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SECInternalServiceError :: StackErrorCode
pattern SECInternalServiceError = StackErrorCode' "INTERNAL_SERVICE_ERROR"

pattern SECStorageConnectorError :: StackErrorCode
pattern SECStorageConnectorError = StackErrorCode' "STORAGE_CONNECTOR_ERROR"

{-# COMPLETE
  SECInternalServiceError,
  SECStorageConnectorError,
  StackErrorCode'
  #-}

instance FromText StackErrorCode where
  parser = (StackErrorCode' . mk) <$> takeText

instance ToText StackErrorCode where
  toText (StackErrorCode' ci) = original ci

instance Hashable StackErrorCode

instance NFData StackErrorCode

instance ToByteString StackErrorCode

instance ToQuery StackErrorCode

instance ToHeader StackErrorCode

instance FromJSON StackErrorCode where
  parseJSON = parseJSONText "StackErrorCode"
