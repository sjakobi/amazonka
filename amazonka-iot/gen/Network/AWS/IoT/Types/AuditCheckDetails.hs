{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuditCheckDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditCheckDetails where

import Network.AWS.IoT.Types.AuditCheckRunStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the audit check.
--
--
--
-- /See:/ 'auditCheckDetails' smart constructor.
data AuditCheckDetails = AuditCheckDetails'
  { _acdCheckCompliant ::
      !(Maybe Bool),
    _acdMessage :: !(Maybe Text),
    _acdSuppressedNonCompliantResourcesCount ::
      !(Maybe Integer),
    _acdCheckRunStatus ::
      !(Maybe AuditCheckRunStatus),
    _acdTotalResourcesCount ::
      !(Maybe Integer),
    _acdErrorCode :: !(Maybe Text),
    _acdNonCompliantResourcesCount ::
      !(Maybe Integer)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AuditCheckDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acdCheckCompliant' - True if the check is complete and found all resources compliant.
--
-- * 'acdMessage' - The message associated with any error encountered when this check is performed during this audit.
--
-- * 'acdSuppressedNonCompliantResourcesCount' - Describes how many of the non-compliant resources created during the evaluation of an audit check were marked as suppressed.
--
-- * 'acdCheckRunStatus' - The completion status of this check. One of "IN_PROGRESS", "WAITING_FOR_DATA_COLLECTION", "CANCELED", "COMPLETED_COMPLIANT", "COMPLETED_NON_COMPLIANT", or "FAILED".
--
-- * 'acdTotalResourcesCount' - The number of resources on which the check was performed.
--
-- * 'acdErrorCode' - The code of any error encountered when this check is performed during this audit. One of "INSUFFICIENT_PERMISSIONS" or "AUDIT_CHECK_DISABLED".
--
-- * 'acdNonCompliantResourcesCount' - The number of resources that were found noncompliant during the check.
auditCheckDetails ::
  AuditCheckDetails
auditCheckDetails =
  AuditCheckDetails'
    { _acdCheckCompliant = Nothing,
      _acdMessage = Nothing,
      _acdSuppressedNonCompliantResourcesCount = Nothing,
      _acdCheckRunStatus = Nothing,
      _acdTotalResourcesCount = Nothing,
      _acdErrorCode = Nothing,
      _acdNonCompliantResourcesCount = Nothing
    }

-- | True if the check is complete and found all resources compliant.
acdCheckCompliant :: Lens' AuditCheckDetails (Maybe Bool)
acdCheckCompliant = lens _acdCheckCompliant (\s a -> s {_acdCheckCompliant = a})

-- | The message associated with any error encountered when this check is performed during this audit.
acdMessage :: Lens' AuditCheckDetails (Maybe Text)
acdMessage = lens _acdMessage (\s a -> s {_acdMessage = a})

-- | Describes how many of the non-compliant resources created during the evaluation of an audit check were marked as suppressed.
acdSuppressedNonCompliantResourcesCount :: Lens' AuditCheckDetails (Maybe Integer)
acdSuppressedNonCompliantResourcesCount = lens _acdSuppressedNonCompliantResourcesCount (\s a -> s {_acdSuppressedNonCompliantResourcesCount = a})

-- | The completion status of this check. One of "IN_PROGRESS", "WAITING_FOR_DATA_COLLECTION", "CANCELED", "COMPLETED_COMPLIANT", "COMPLETED_NON_COMPLIANT", or "FAILED".
acdCheckRunStatus :: Lens' AuditCheckDetails (Maybe AuditCheckRunStatus)
acdCheckRunStatus = lens _acdCheckRunStatus (\s a -> s {_acdCheckRunStatus = a})

-- | The number of resources on which the check was performed.
acdTotalResourcesCount :: Lens' AuditCheckDetails (Maybe Integer)
acdTotalResourcesCount = lens _acdTotalResourcesCount (\s a -> s {_acdTotalResourcesCount = a})

-- | The code of any error encountered when this check is performed during this audit. One of "INSUFFICIENT_PERMISSIONS" or "AUDIT_CHECK_DISABLED".
acdErrorCode :: Lens' AuditCheckDetails (Maybe Text)
acdErrorCode = lens _acdErrorCode (\s a -> s {_acdErrorCode = a})

-- | The number of resources that were found noncompliant during the check.
acdNonCompliantResourcesCount :: Lens' AuditCheckDetails (Maybe Integer)
acdNonCompliantResourcesCount = lens _acdNonCompliantResourcesCount (\s a -> s {_acdNonCompliantResourcesCount = a})

instance FromJSON AuditCheckDetails where
  parseJSON =
    withObject
      "AuditCheckDetails"
      ( \x ->
          AuditCheckDetails'
            <$> (x .:? "checkCompliant")
            <*> (x .:? "message")
            <*> (x .:? "suppressedNonCompliantResourcesCount")
            <*> (x .:? "checkRunStatus")
            <*> (x .:? "totalResourcesCount")
            <*> (x .:? "errorCode")
            <*> (x .:? "nonCompliantResourcesCount")
      )

instance Hashable AuditCheckDetails

instance NFData AuditCheckDetails
