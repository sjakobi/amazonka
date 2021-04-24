{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.UsageReportExecutionErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.UsageReportExecutionErrorCode
  ( UsageReportExecutionErrorCode
      ( ..,
        UREECAccessDenied,
        UREECInternalServiceError,
        UREECResourceNotFound
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UsageReportExecutionErrorCode
  = UsageReportExecutionErrorCode'
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

pattern UREECAccessDenied :: UsageReportExecutionErrorCode
pattern UREECAccessDenied = UsageReportExecutionErrorCode' "ACCESS_DENIED"

pattern UREECInternalServiceError :: UsageReportExecutionErrorCode
pattern UREECInternalServiceError = UsageReportExecutionErrorCode' "INTERNAL_SERVICE_ERROR"

pattern UREECResourceNotFound :: UsageReportExecutionErrorCode
pattern UREECResourceNotFound = UsageReportExecutionErrorCode' "RESOURCE_NOT_FOUND"

{-# COMPLETE
  UREECAccessDenied,
  UREECInternalServiceError,
  UREECResourceNotFound,
  UsageReportExecutionErrorCode'
  #-}

instance FromText UsageReportExecutionErrorCode where
  parser = (UsageReportExecutionErrorCode' . mk) <$> takeText

instance ToText UsageReportExecutionErrorCode where
  toText (UsageReportExecutionErrorCode' ci) = original ci

instance Hashable UsageReportExecutionErrorCode

instance NFData UsageReportExecutionErrorCode

instance ToByteString UsageReportExecutionErrorCode

instance ToQuery UsageReportExecutionErrorCode

instance ToHeader UsageReportExecutionErrorCode

instance FromJSON UsageReportExecutionErrorCode where
  parseJSON = parseJSONText "UsageReportExecutionErrorCode"
