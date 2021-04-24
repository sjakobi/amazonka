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
-- Module      : Network.AWS.CloudHSM.CreateHSM
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__ . For more information, see <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs> , the <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference> .
--
--
-- __For information about the current version of AWS CloudHSM__ , see <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> , the <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide> , and the <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference> .
--
-- Creates an uninitialized HSM instance.
--
-- There is an upfront fee charged for each HSM instance that you create with the @CreateHsm@ operation. If you accidentally provision an HSM and want to request a refund, delete the instance using the 'DeleteHsm' operation, go to the <https://console.aws.amazon.com/support/home AWS Support Center> , create a new case, and select __Account and Billing Support__ .
--
-- /Important:/ It can take up to 20 minutes to create and provision an HSM. You can monitor the status of the HSM with the 'DescribeHsm' operation. The HSM is ready to be initialized when the status changes to @RUNNING@ .
module Network.AWS.CloudHSM.CreateHSM
  ( -- * Creating a Request
    createHSM,
    CreateHSM,

    -- * Request Lenses
    chEniIP,
    chSyslogIP,
    chExternalId,
    chClientToken,
    chSubnetId,
    chSSHKey,
    chIAMRoleARN,
    chSubscriptionType,

    -- * Destructuring the Response
    createHSMResponse,
    CreateHSMResponse,

    -- * Response Lenses
    chsmrrsHSMARN,
    chsmrrsResponseStatus,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the @CreateHsm@ operation.
--
--
--
-- /See:/ 'createHSM' smart constructor.
data CreateHSM = CreateHSM'
  { _chEniIP ::
      !(Maybe Text),
    _chSyslogIP :: !(Maybe Text),
    _chExternalId :: !(Maybe Text),
    _chClientToken :: !(Maybe Text),
    _chSubnetId :: !Text,
    _chSSHKey :: !Text,
    _chIAMRoleARN :: !Text,
    _chSubscriptionType :: !SubscriptionType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateHSM' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chEniIP' - The IP address to assign to the HSM's ENI. If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.
--
-- * 'chSyslogIP' - The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.
--
-- * 'chExternalId' - The external ID from @IamRoleArn@ , if present.
--
-- * 'chClientToken' - A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.
--
-- * 'chSubnetId' - The identifier of the subnet in your VPC in which to place the HSM.
--
-- * 'chSSHKey' - The SSH public key to install on the HSM.
--
-- * 'chIAMRoleARN' - The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.
--
-- * 'chSubscriptionType' - Undocumented member.
createHSM ::
  -- | 'chSubnetId'
  Text ->
  -- | 'chSSHKey'
  Text ->
  -- | 'chIAMRoleARN'
  Text ->
  -- | 'chSubscriptionType'
  SubscriptionType ->
  CreateHSM
createHSM
  pSubnetId_
  pSSHKey_
  pIAMRoleARN_
  pSubscriptionType_ =
    CreateHSM'
      { _chEniIP = Nothing,
        _chSyslogIP = Nothing,
        _chExternalId = Nothing,
        _chClientToken = Nothing,
        _chSubnetId = pSubnetId_,
        _chSSHKey = pSSHKey_,
        _chIAMRoleARN = pIAMRoleARN_,
        _chSubscriptionType = pSubscriptionType_
      }

-- | The IP address to assign to the HSM's ENI. If an IP address is not specified, an IP address will be randomly chosen from the CIDR range of the subnet.
chEniIP :: Lens' CreateHSM (Maybe Text)
chEniIP = lens _chEniIP (\s a -> s {_chEniIP = a})

-- | The IP address for the syslog monitoring server. The AWS CloudHSM service only supports one syslog monitoring server.
chSyslogIP :: Lens' CreateHSM (Maybe Text)
chSyslogIP = lens _chSyslogIP (\s a -> s {_chSyslogIP = a})

-- | The external ID from @IamRoleArn@ , if present.
chExternalId :: Lens' CreateHSM (Maybe Text)
chExternalId = lens _chExternalId (\s a -> s {_chExternalId = a})

-- | A user-defined token to ensure idempotence. Subsequent calls to this operation with the same token will be ignored.
chClientToken :: Lens' CreateHSM (Maybe Text)
chClientToken = lens _chClientToken (\s a -> s {_chClientToken = a})

-- | The identifier of the subnet in your VPC in which to place the HSM.
chSubnetId :: Lens' CreateHSM Text
chSubnetId = lens _chSubnetId (\s a -> s {_chSubnetId = a})

-- | The SSH public key to install on the HSM.
chSSHKey :: Lens' CreateHSM Text
chSSHKey = lens _chSSHKey (\s a -> s {_chSSHKey = a})

-- | The ARN of an IAM role to enable the AWS CloudHSM service to allocate an ENI on your behalf.
chIAMRoleARN :: Lens' CreateHSM Text
chIAMRoleARN = lens _chIAMRoleARN (\s a -> s {_chIAMRoleARN = a})

-- | Undocumented member.
chSubscriptionType :: Lens' CreateHSM SubscriptionType
chSubscriptionType = lens _chSubscriptionType (\s a -> s {_chSubscriptionType = a})

instance AWSRequest CreateHSM where
  type Rs CreateHSM = CreateHSMResponse
  request = postJSON cloudHSM
  response =
    receiveJSON
      ( \s h x ->
          CreateHSMResponse'
            <$> (x .?> "HsmArn") <*> (pure (fromEnum s))
      )

instance Hashable CreateHSM

instance NFData CreateHSM

instance ToHeaders CreateHSM where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CloudHsmFrontendService.CreateHsm" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateHSM where
  toJSON CreateHSM' {..} =
    object
      ( catMaybes
          [ ("EniIp" .=) <$> _chEniIP,
            ("SyslogIp" .=) <$> _chSyslogIP,
            ("ExternalId" .=) <$> _chExternalId,
            ("ClientToken" .=) <$> _chClientToken,
            Just ("SubnetId" .= _chSubnetId),
            Just ("SshKey" .= _chSSHKey),
            Just ("IamRoleArn" .= _chIAMRoleARN),
            Just ("SubscriptionType" .= _chSubscriptionType)
          ]
      )

instance ToPath CreateHSM where
  toPath = const "/"

instance ToQuery CreateHSM where
  toQuery = const mempty

-- | Contains the output of the @CreateHsm@ operation.
--
--
--
-- /See:/ 'createHSMResponse' smart constructor.
data CreateHSMResponse = CreateHSMResponse'
  { _chsmrrsHSMARN ::
      !(Maybe Text),
    _chsmrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateHSMResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chsmrrsHSMARN' - The ARN of the HSM.
--
-- * 'chsmrrsResponseStatus' - -- | The response status code.
createHSMResponse ::
  -- | 'chsmrrsResponseStatus'
  Int ->
  CreateHSMResponse
createHSMResponse pResponseStatus_ =
  CreateHSMResponse'
    { _chsmrrsHSMARN = Nothing,
      _chsmrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the HSM.
chsmrrsHSMARN :: Lens' CreateHSMResponse (Maybe Text)
chsmrrsHSMARN = lens _chsmrrsHSMARN (\s a -> s {_chsmrrsHSMARN = a})

-- | -- | The response status code.
chsmrrsResponseStatus :: Lens' CreateHSMResponse Int
chsmrrsResponseStatus = lens _chsmrrsResponseStatus (\s a -> s {_chsmrrsResponseStatus = a})

instance NFData CreateHSMResponse
