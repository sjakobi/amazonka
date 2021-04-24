{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.AuditNotificationTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditNotificationTarget where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the targets to which audit notifications are sent.
--
--
--
-- /See:/ 'auditNotificationTarget' smart constructor.
data AuditNotificationTarget = AuditNotificationTarget'
  { _antRoleARN ::
      !(Maybe Text),
    _antEnabled ::
      !(Maybe Bool),
    _antTargetARN ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AuditNotificationTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'antRoleARN' - The ARN of the role that grants permission to send notifications to the target.
--
-- * 'antEnabled' - True if notifications to the target are enabled.
--
-- * 'antTargetARN' - The ARN of the target (SNS topic) to which audit notifications are sent.
auditNotificationTarget ::
  AuditNotificationTarget
auditNotificationTarget =
  AuditNotificationTarget'
    { _antRoleARN = Nothing,
      _antEnabled = Nothing,
      _antTargetARN = Nothing
    }

-- | The ARN of the role that grants permission to send notifications to the target.
antRoleARN :: Lens' AuditNotificationTarget (Maybe Text)
antRoleARN = lens _antRoleARN (\s a -> s {_antRoleARN = a})

-- | True if notifications to the target are enabled.
antEnabled :: Lens' AuditNotificationTarget (Maybe Bool)
antEnabled = lens _antEnabled (\s a -> s {_antEnabled = a})

-- | The ARN of the target (SNS topic) to which audit notifications are sent.
antTargetARN :: Lens' AuditNotificationTarget (Maybe Text)
antTargetARN = lens _antTargetARN (\s a -> s {_antTargetARN = a})

instance FromJSON AuditNotificationTarget where
  parseJSON =
    withObject
      "AuditNotificationTarget"
      ( \x ->
          AuditNotificationTarget'
            <$> (x .:? "roleArn")
            <*> (x .:? "enabled")
            <*> (x .:? "targetArn")
      )

instance Hashable AuditNotificationTarget

instance NFData AuditNotificationTarget

instance ToJSON AuditNotificationTarget where
  toJSON AuditNotificationTarget' {..} =
    object
      ( catMaybes
          [ ("roleArn" .=) <$> _antRoleARN,
            ("enabled" .=) <$> _antEnabled,
            ("targetArn" .=) <$> _antTargetARN
          ]
      )
