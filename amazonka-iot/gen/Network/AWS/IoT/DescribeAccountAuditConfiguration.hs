{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.DescribeAccountAuditConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the Device Defender audit settings for this account. Settings include how audit notifications are sent and which audit checks are enabled or disabled.
module Network.AWS.IoT.DescribeAccountAuditConfiguration
  ( -- * Creating a Request
    describeAccountAuditConfiguration,
    DescribeAccountAuditConfiguration,

    -- * Destructuring the Response
    describeAccountAuditConfigurationResponse,
    DescribeAccountAuditConfigurationResponse,

    -- * Response Lenses
    daacrarsRoleARN,
    daacrarsAuditCheckConfigurations,
    daacrarsAuditNotificationTargetConfigurations,
    daacrarsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAccountAuditConfiguration' smart constructor.
data DescribeAccountAuditConfiguration = DescribeAccountAuditConfiguration'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAccountAuditConfiguration' with the minimum fields required to make a request.
describeAccountAuditConfiguration ::
  DescribeAccountAuditConfiguration
describeAccountAuditConfiguration =
  DescribeAccountAuditConfiguration'

instance AWSRequest DescribeAccountAuditConfiguration where
  type
    Rs DescribeAccountAuditConfiguration =
      DescribeAccountAuditConfigurationResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeAccountAuditConfigurationResponse'
            <$> (x .?> "roleArn")
            <*> (x .?> "auditCheckConfigurations" .!@ mempty)
            <*> ( x .?> "auditNotificationTargetConfigurations"
                    .!@ mempty
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAccountAuditConfiguration

instance NFData DescribeAccountAuditConfiguration

instance ToHeaders DescribeAccountAuditConfiguration where
  toHeaders = const mempty

instance ToPath DescribeAccountAuditConfiguration where
  toPath = const "/audit/configuration"

instance ToQuery DescribeAccountAuditConfiguration where
  toQuery = const mempty

-- | /See:/ 'describeAccountAuditConfigurationResponse' smart constructor.
data DescribeAccountAuditConfigurationResponse = DescribeAccountAuditConfigurationResponse'
  { _daacrarsRoleARN ::
      !( Maybe
           Text
       ),
    _daacrarsAuditCheckConfigurations ::
      !( Maybe
           ( Map
               Text
               AuditCheckConfiguration
           )
       ),
    _daacrarsAuditNotificationTargetConfigurations ::
      !( Maybe
           ( Map
               AuditNotificationType
               AuditNotificationTarget
           )
       ),
    _daacrarsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAccountAuditConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daacrarsRoleARN' - The ARN of the role that grants permission to AWS IoT to access information about your devices, policies, certificates, and other items as required when performing an audit. On the first call to @UpdateAccountAuditConfiguration@ , this parameter is required.
--
-- * 'daacrarsAuditCheckConfigurations' - Which audit checks are enabled and disabled for this account.
--
-- * 'daacrarsAuditNotificationTargetConfigurations' - Information about the targets to which audit notifications are sent for this account.
--
-- * 'daacrarsResponseStatus' - -- | The response status code.
describeAccountAuditConfigurationResponse ::
  -- | 'daacrarsResponseStatus'
  Int ->
  DescribeAccountAuditConfigurationResponse
describeAccountAuditConfigurationResponse
  pResponseStatus_ =
    DescribeAccountAuditConfigurationResponse'
      { _daacrarsRoleARN =
          Nothing,
        _daacrarsAuditCheckConfigurations =
          Nothing,
        _daacrarsAuditNotificationTargetConfigurations =
          Nothing,
        _daacrarsResponseStatus =
          pResponseStatus_
      }

-- | The ARN of the role that grants permission to AWS IoT to access information about your devices, policies, certificates, and other items as required when performing an audit. On the first call to @UpdateAccountAuditConfiguration@ , this parameter is required.
daacrarsRoleARN :: Lens' DescribeAccountAuditConfigurationResponse (Maybe Text)
daacrarsRoleARN = lens _daacrarsRoleARN (\s a -> s {_daacrarsRoleARN = a})

-- | Which audit checks are enabled and disabled for this account.
daacrarsAuditCheckConfigurations :: Lens' DescribeAccountAuditConfigurationResponse (HashMap Text AuditCheckConfiguration)
daacrarsAuditCheckConfigurations = lens _daacrarsAuditCheckConfigurations (\s a -> s {_daacrarsAuditCheckConfigurations = a}) . _Default . _Map

-- | Information about the targets to which audit notifications are sent for this account.
daacrarsAuditNotificationTargetConfigurations :: Lens' DescribeAccountAuditConfigurationResponse (HashMap AuditNotificationType AuditNotificationTarget)
daacrarsAuditNotificationTargetConfigurations = lens _daacrarsAuditNotificationTargetConfigurations (\s a -> s {_daacrarsAuditNotificationTargetConfigurations = a}) . _Default . _Map

-- | -- | The response status code.
daacrarsResponseStatus :: Lens' DescribeAccountAuditConfigurationResponse Int
daacrarsResponseStatus = lens _daacrarsResponseStatus (\s a -> s {_daacrarsResponseStatus = a})

instance
  NFData
    DescribeAccountAuditConfigurationResponse
