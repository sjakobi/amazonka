{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MQ.Types.LogsSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.LogsSummary where

import Network.AWS.Lens
import Network.AWS.MQ.Types.PendingLogs
import Network.AWS.Prelude

-- | The list of information about logs currently enabled and pending to be deployed for the specified broker.
--
-- /See:/ 'logsSummary' smart constructor.
data LogsSummary = LogsSummary'
  { _lsGeneral ::
      !(Maybe Bool),
    _lsAudit :: !(Maybe Bool),
    _lsPending :: !(Maybe PendingLogs),
    _lsAuditLogGroup :: !(Maybe Text),
    _lsGeneralLogGroup :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LogsSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsGeneral' - Enables general logging.
--
-- * 'lsAudit' - Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.
--
-- * 'lsPending' - The list of information about logs pending to be deployed for the specified broker.
--
-- * 'lsAuditLogGroup' - The location of the CloudWatch Logs log group where audit logs are sent.
--
-- * 'lsGeneralLogGroup' - The location of the CloudWatch Logs log group where general logs are sent.
logsSummary ::
  LogsSummary
logsSummary =
  LogsSummary'
    { _lsGeneral = Nothing,
      _lsAudit = Nothing,
      _lsPending = Nothing,
      _lsAuditLogGroup = Nothing,
      _lsGeneralLogGroup = Nothing
    }

-- | Enables general logging.
lsGeneral :: Lens' LogsSummary (Maybe Bool)
lsGeneral = lens _lsGeneral (\s a -> s {_lsGeneral = a})

-- | Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.
lsAudit :: Lens' LogsSummary (Maybe Bool)
lsAudit = lens _lsAudit (\s a -> s {_lsAudit = a})

-- | The list of information about logs pending to be deployed for the specified broker.
lsPending :: Lens' LogsSummary (Maybe PendingLogs)
lsPending = lens _lsPending (\s a -> s {_lsPending = a})

-- | The location of the CloudWatch Logs log group where audit logs are sent.
lsAuditLogGroup :: Lens' LogsSummary (Maybe Text)
lsAuditLogGroup = lens _lsAuditLogGroup (\s a -> s {_lsAuditLogGroup = a})

-- | The location of the CloudWatch Logs log group where general logs are sent.
lsGeneralLogGroup :: Lens' LogsSummary (Maybe Text)
lsGeneralLogGroup = lens _lsGeneralLogGroup (\s a -> s {_lsGeneralLogGroup = a})

instance FromJSON LogsSummary where
  parseJSON =
    withObject
      "LogsSummary"
      ( \x ->
          LogsSummary'
            <$> (x .:? "general")
            <*> (x .:? "audit")
            <*> (x .:? "pending")
            <*> (x .:? "auditLogGroup")
            <*> (x .:? "generalLogGroup")
      )

instance Hashable LogsSummary

instance NFData LogsSummary
