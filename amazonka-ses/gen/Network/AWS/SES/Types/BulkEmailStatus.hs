{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.BulkEmailStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.BulkEmailStatus
  ( BulkEmailStatus
      ( ..,
        BESAccountDailyQuotaExceeded,
        BESAccountSendingPaused,
        BESAccountSuspended,
        BESAccountThrottled,
        BESConfigurationSetDoesNotExist,
        BESConfigurationSetSendingPaused,
        BESFailed,
        BESInvalidParameterValue,
        BESInvalidSendingPoolName,
        BESMailFromDomainNotVerified,
        BESMessageRejected,
        BESSuccess,
        BESTemplateDoesNotExist,
        BESTransientFailure
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BulkEmailStatus = BulkEmailStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BESAccountDailyQuotaExceeded :: BulkEmailStatus
pattern BESAccountDailyQuotaExceeded = BulkEmailStatus' "AccountDailyQuotaExceeded"

pattern BESAccountSendingPaused :: BulkEmailStatus
pattern BESAccountSendingPaused = BulkEmailStatus' "AccountSendingPaused"

pattern BESAccountSuspended :: BulkEmailStatus
pattern BESAccountSuspended = BulkEmailStatus' "AccountSuspended"

pattern BESAccountThrottled :: BulkEmailStatus
pattern BESAccountThrottled = BulkEmailStatus' "AccountThrottled"

pattern BESConfigurationSetDoesNotExist :: BulkEmailStatus
pattern BESConfigurationSetDoesNotExist = BulkEmailStatus' "ConfigurationSetDoesNotExist"

pattern BESConfigurationSetSendingPaused :: BulkEmailStatus
pattern BESConfigurationSetSendingPaused = BulkEmailStatus' "ConfigurationSetSendingPaused"

pattern BESFailed :: BulkEmailStatus
pattern BESFailed = BulkEmailStatus' "Failed"

pattern BESInvalidParameterValue :: BulkEmailStatus
pattern BESInvalidParameterValue = BulkEmailStatus' "InvalidParameterValue"

pattern BESInvalidSendingPoolName :: BulkEmailStatus
pattern BESInvalidSendingPoolName = BulkEmailStatus' "InvalidSendingPoolName"

pattern BESMailFromDomainNotVerified :: BulkEmailStatus
pattern BESMailFromDomainNotVerified = BulkEmailStatus' "MailFromDomainNotVerified"

pattern BESMessageRejected :: BulkEmailStatus
pattern BESMessageRejected = BulkEmailStatus' "MessageRejected"

pattern BESSuccess :: BulkEmailStatus
pattern BESSuccess = BulkEmailStatus' "Success"

pattern BESTemplateDoesNotExist :: BulkEmailStatus
pattern BESTemplateDoesNotExist = BulkEmailStatus' "TemplateDoesNotExist"

pattern BESTransientFailure :: BulkEmailStatus
pattern BESTransientFailure = BulkEmailStatus' "TransientFailure"

{-# COMPLETE
  BESAccountDailyQuotaExceeded,
  BESAccountSendingPaused,
  BESAccountSuspended,
  BESAccountThrottled,
  BESConfigurationSetDoesNotExist,
  BESConfigurationSetSendingPaused,
  BESFailed,
  BESInvalidParameterValue,
  BESInvalidSendingPoolName,
  BESMailFromDomainNotVerified,
  BESMessageRejected,
  BESSuccess,
  BESTemplateDoesNotExist,
  BESTransientFailure,
  BulkEmailStatus'
  #-}

instance FromText BulkEmailStatus where
  parser = (BulkEmailStatus' . mk) <$> takeText

instance ToText BulkEmailStatus where
  toText (BulkEmailStatus' ci) = original ci

instance Hashable BulkEmailStatus

instance NFData BulkEmailStatus

instance ToByteString BulkEmailStatus

instance ToQuery BulkEmailStatus

instance ToHeader BulkEmailStatus

instance FromXML BulkEmailStatus where
  parseXML = parseXMLText "BulkEmailStatus"
