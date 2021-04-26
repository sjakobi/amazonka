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
-- Module      : Network.AWS.SES.Types.BulkEmailStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.BulkEmailStatus
  ( BulkEmailStatus
      ( ..,
        BulkEmailStatusAccountDailyQuotaExceeded,
        BulkEmailStatusAccountSendingPaused,
        BulkEmailStatusAccountSuspended,
        BulkEmailStatusAccountThrottled,
        BulkEmailStatusConfigurationSetDoesNotExist,
        BulkEmailStatusConfigurationSetSendingPaused,
        BulkEmailStatusFailed,
        BulkEmailStatusInvalidParameterValue,
        BulkEmailStatusInvalidSendingPoolName,
        BulkEmailStatusMailFromDomainNotVerified,
        BulkEmailStatusMessageRejected,
        BulkEmailStatusSuccess,
        BulkEmailStatusTemplateDoesNotExist,
        BulkEmailStatusTransientFailure
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BulkEmailStatus = BulkEmailStatus'
  { fromBulkEmailStatus ::
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

pattern BulkEmailStatusAccountDailyQuotaExceeded :: BulkEmailStatus
pattern BulkEmailStatusAccountDailyQuotaExceeded = BulkEmailStatus' "AccountDailyQuotaExceeded"

pattern BulkEmailStatusAccountSendingPaused :: BulkEmailStatus
pattern BulkEmailStatusAccountSendingPaused = BulkEmailStatus' "AccountSendingPaused"

pattern BulkEmailStatusAccountSuspended :: BulkEmailStatus
pattern BulkEmailStatusAccountSuspended = BulkEmailStatus' "AccountSuspended"

pattern BulkEmailStatusAccountThrottled :: BulkEmailStatus
pattern BulkEmailStatusAccountThrottled = BulkEmailStatus' "AccountThrottled"

pattern BulkEmailStatusConfigurationSetDoesNotExist :: BulkEmailStatus
pattern BulkEmailStatusConfigurationSetDoesNotExist = BulkEmailStatus' "ConfigurationSetDoesNotExist"

pattern BulkEmailStatusConfigurationSetSendingPaused :: BulkEmailStatus
pattern BulkEmailStatusConfigurationSetSendingPaused = BulkEmailStatus' "ConfigurationSetSendingPaused"

pattern BulkEmailStatusFailed :: BulkEmailStatus
pattern BulkEmailStatusFailed = BulkEmailStatus' "Failed"

pattern BulkEmailStatusInvalidParameterValue :: BulkEmailStatus
pattern BulkEmailStatusInvalidParameterValue = BulkEmailStatus' "InvalidParameterValue"

pattern BulkEmailStatusInvalidSendingPoolName :: BulkEmailStatus
pattern BulkEmailStatusInvalidSendingPoolName = BulkEmailStatus' "InvalidSendingPoolName"

pattern BulkEmailStatusMailFromDomainNotVerified :: BulkEmailStatus
pattern BulkEmailStatusMailFromDomainNotVerified = BulkEmailStatus' "MailFromDomainNotVerified"

pattern BulkEmailStatusMessageRejected :: BulkEmailStatus
pattern BulkEmailStatusMessageRejected = BulkEmailStatus' "MessageRejected"

pattern BulkEmailStatusSuccess :: BulkEmailStatus
pattern BulkEmailStatusSuccess = BulkEmailStatus' "Success"

pattern BulkEmailStatusTemplateDoesNotExist :: BulkEmailStatus
pattern BulkEmailStatusTemplateDoesNotExist = BulkEmailStatus' "TemplateDoesNotExist"

pattern BulkEmailStatusTransientFailure :: BulkEmailStatus
pattern BulkEmailStatusTransientFailure = BulkEmailStatus' "TransientFailure"

{-# COMPLETE
  BulkEmailStatusAccountDailyQuotaExceeded,
  BulkEmailStatusAccountSendingPaused,
  BulkEmailStatusAccountSuspended,
  BulkEmailStatusAccountThrottled,
  BulkEmailStatusConfigurationSetDoesNotExist,
  BulkEmailStatusConfigurationSetSendingPaused,
  BulkEmailStatusFailed,
  BulkEmailStatusInvalidParameterValue,
  BulkEmailStatusInvalidSendingPoolName,
  BulkEmailStatusMailFromDomainNotVerified,
  BulkEmailStatusMessageRejected,
  BulkEmailStatusSuccess,
  BulkEmailStatusTemplateDoesNotExist,
  BulkEmailStatusTransientFailure,
  BulkEmailStatus'
  #-}

instance Prelude.FromText BulkEmailStatus where
  parser = BulkEmailStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText BulkEmailStatus where
  toText (BulkEmailStatus' x) = x

instance Prelude.Hashable BulkEmailStatus

instance Prelude.NFData BulkEmailStatus

instance Prelude.ToByteString BulkEmailStatus

instance Prelude.ToQuery BulkEmailStatus

instance Prelude.ToHeader BulkEmailStatus

instance Prelude.FromXML BulkEmailStatus where
  parseXML = Prelude.parseXMLText "BulkEmailStatus"
