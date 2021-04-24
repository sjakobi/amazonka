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
-- Module      : Network.AWS.OpsWorks.DescribeStackProvisioningParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests a description of a stack's provisioning parameters.
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.DescribeStackProvisioningParameters
  ( -- * Creating a Request
    describeStackProvisioningParameters,
    DescribeStackProvisioningParameters,

    -- * Request Lenses
    dsppStackId,

    -- * Destructuring the Response
    describeStackProvisioningParametersResponse,
    DescribeStackProvisioningParametersResponse,

    -- * Response Lenses
    dspprrsAgentInstallerURL,
    dspprrsParameters,
    dspprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeStackProvisioningParameters' smart constructor.
newtype DescribeStackProvisioningParameters = DescribeStackProvisioningParameters'
  { _dsppStackId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeStackProvisioningParameters' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsppStackId' - The stack ID.
describeStackProvisioningParameters ::
  -- | 'dsppStackId'
  Text ->
  DescribeStackProvisioningParameters
describeStackProvisioningParameters pStackId_ =
  DescribeStackProvisioningParameters'
    { _dsppStackId =
        pStackId_
    }

-- | The stack ID.
dsppStackId :: Lens' DescribeStackProvisioningParameters Text
dsppStackId = lens _dsppStackId (\s a -> s {_dsppStackId = a})

instance
  AWSRequest
    DescribeStackProvisioningParameters
  where
  type
    Rs DescribeStackProvisioningParameters =
      DescribeStackProvisioningParametersResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          DescribeStackProvisioningParametersResponse'
            <$> (x .?> "AgentInstallerUrl")
            <*> (x .?> "Parameters" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeStackProvisioningParameters

instance NFData DescribeStackProvisioningParameters

instance
  ToHeaders
    DescribeStackProvisioningParameters
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OpsWorks_20130218.DescribeStackProvisioningParameters" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeStackProvisioningParameters where
  toJSON DescribeStackProvisioningParameters' {..} =
    object
      (catMaybes [Just ("StackId" .= _dsppStackId)])

instance ToPath DescribeStackProvisioningParameters where
  toPath = const "/"

instance ToQuery DescribeStackProvisioningParameters where
  toQuery = const mempty

-- | Contains the response to a @DescribeStackProvisioningParameters@ request.
--
--
--
-- /See:/ 'describeStackProvisioningParametersResponse' smart constructor.
data DescribeStackProvisioningParametersResponse = DescribeStackProvisioningParametersResponse'
  { _dspprrsAgentInstallerURL ::
      !( Maybe
           Text
       ),
    _dspprrsParameters ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _dspprrsResponseStatus ::
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

-- | Creates a value of 'DescribeStackProvisioningParametersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dspprrsAgentInstallerURL' - The AWS OpsWorks Stacks agent installer's URL.
--
-- * 'dspprrsParameters' - An embedded object that contains the provisioning parameters.
--
-- * 'dspprrsResponseStatus' - -- | The response status code.
describeStackProvisioningParametersResponse ::
  -- | 'dspprrsResponseStatus'
  Int ->
  DescribeStackProvisioningParametersResponse
describeStackProvisioningParametersResponse
  pResponseStatus_ =
    DescribeStackProvisioningParametersResponse'
      { _dspprrsAgentInstallerURL =
          Nothing,
        _dspprrsParameters = Nothing,
        _dspprrsResponseStatus =
          pResponseStatus_
      }

-- | The AWS OpsWorks Stacks agent installer's URL.
dspprrsAgentInstallerURL :: Lens' DescribeStackProvisioningParametersResponse (Maybe Text)
dspprrsAgentInstallerURL = lens _dspprrsAgentInstallerURL (\s a -> s {_dspprrsAgentInstallerURL = a})

-- | An embedded object that contains the provisioning parameters.
dspprrsParameters :: Lens' DescribeStackProvisioningParametersResponse (HashMap Text Text)
dspprrsParameters = lens _dspprrsParameters (\s a -> s {_dspprrsParameters = a}) . _Default . _Map

-- | -- | The response status code.
dspprrsResponseStatus :: Lens' DescribeStackProvisioningParametersResponse Int
dspprrsResponseStatus = lens _dspprrsResponseStatus (\s a -> s {_dspprrsResponseStatus = a})

instance
  NFData
    DescribeStackProvisioningParametersResponse
