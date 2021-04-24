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
-- Module      : Network.AWS.Cloud9.CreateEnvironmentEC
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an AWS Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.
module Network.AWS.Cloud9.CreateEnvironmentEC
  ( -- * Creating a Request
    createEnvironmentEC,
    CreateEnvironmentEC,

    -- * Request Lenses
    ceecConnectionType,
    ceecOwnerARN,
    ceecTags,
    ceecSubnetId,
    ceecDescription,
    ceecClientRequestToken,
    ceecAutomaticStopTimeMinutes,
    ceecName,
    ceecInstanceType,

    -- * Destructuring the Response
    createEnvironmentECResponse,
    CreateEnvironmentECResponse,

    -- * Response Lenses
    ceecrrsEnvironmentId,
    ceecrrsResponseStatus,
  )
where

import Network.AWS.Cloud9.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createEnvironmentEC' smart constructor.
data CreateEnvironmentEC = CreateEnvironmentEC'
  { _ceecConnectionType ::
      !(Maybe ConnectionType),
    _ceecOwnerARN :: !(Maybe Text),
    _ceecTags :: !(Maybe [Tag]),
    _ceecSubnetId :: !(Maybe Text),
    _ceecDescription ::
      !(Maybe (Sensitive Text)),
    _ceecClientRequestToken ::
      !(Maybe Text),
    _ceecAutomaticStopTimeMinutes ::
      !(Maybe Int),
    _ceecName :: !Text,
    _ceecInstanceType :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateEnvironmentEC' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceecConnectionType' - The connection type used for connecting to an Amazon EC2 environment.
--
-- * 'ceecOwnerARN' - The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any AWS IAM principal. If this value is not specified, the ARN defaults to this environment's creator.
--
-- * 'ceecTags' - An array of key-value pairs that will be associated with the new AWS Cloud9 development environment.
--
-- * 'ceecSubnetId' - The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.
--
-- * 'ceecDescription' - The description of the environment to create.
--
-- * 'ceecClientRequestToken' - A unique, case-sensitive string that helps AWS Cloud9 to ensure this operation completes no more than one time. For more information, see <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Client Tokens> in the /Amazon EC2 API Reference/ .
--
-- * 'ceecAutomaticStopTimeMinutes' - The number of minutes until the running instance is shut down after the environment has last been used.
--
-- * 'ceecName' - The name of the environment to create. This name is visible to other AWS IAM users in the same AWS account.
--
-- * 'ceecInstanceType' - The type of instance to connect to the environment (for example, @t2.micro@ ).
createEnvironmentEC ::
  -- | 'ceecName'
  Text ->
  -- | 'ceecInstanceType'
  Text ->
  CreateEnvironmentEC
createEnvironmentEC pName_ pInstanceType_ =
  CreateEnvironmentEC'
    { _ceecConnectionType = Nothing,
      _ceecOwnerARN = Nothing,
      _ceecTags = Nothing,
      _ceecSubnetId = Nothing,
      _ceecDescription = Nothing,
      _ceecClientRequestToken = Nothing,
      _ceecAutomaticStopTimeMinutes = Nothing,
      _ceecName = pName_,
      _ceecInstanceType = pInstanceType_
    }

-- | The connection type used for connecting to an Amazon EC2 environment.
ceecConnectionType :: Lens' CreateEnvironmentEC (Maybe ConnectionType)
ceecConnectionType = lens _ceecConnectionType (\s a -> s {_ceecConnectionType = a})

-- | The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any AWS IAM principal. If this value is not specified, the ARN defaults to this environment's creator.
ceecOwnerARN :: Lens' CreateEnvironmentEC (Maybe Text)
ceecOwnerARN = lens _ceecOwnerARN (\s a -> s {_ceecOwnerARN = a})

-- | An array of key-value pairs that will be associated with the new AWS Cloud9 development environment.
ceecTags :: Lens' CreateEnvironmentEC [Tag]
ceecTags = lens _ceecTags (\s a -> s {_ceecTags = a}) . _Default . _Coerce

-- | The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.
ceecSubnetId :: Lens' CreateEnvironmentEC (Maybe Text)
ceecSubnetId = lens _ceecSubnetId (\s a -> s {_ceecSubnetId = a})

-- | The description of the environment to create.
ceecDescription :: Lens' CreateEnvironmentEC (Maybe Text)
ceecDescription = lens _ceecDescription (\s a -> s {_ceecDescription = a}) . mapping _Sensitive

-- | A unique, case-sensitive string that helps AWS Cloud9 to ensure this operation completes no more than one time. For more information, see <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Client Tokens> in the /Amazon EC2 API Reference/ .
ceecClientRequestToken :: Lens' CreateEnvironmentEC (Maybe Text)
ceecClientRequestToken = lens _ceecClientRequestToken (\s a -> s {_ceecClientRequestToken = a})

-- | The number of minutes until the running instance is shut down after the environment has last been used.
ceecAutomaticStopTimeMinutes :: Lens' CreateEnvironmentEC (Maybe Int)
ceecAutomaticStopTimeMinutes = lens _ceecAutomaticStopTimeMinutes (\s a -> s {_ceecAutomaticStopTimeMinutes = a})

-- | The name of the environment to create. This name is visible to other AWS IAM users in the same AWS account.
ceecName :: Lens' CreateEnvironmentEC Text
ceecName = lens _ceecName (\s a -> s {_ceecName = a})

-- | The type of instance to connect to the environment (for example, @t2.micro@ ).
ceecInstanceType :: Lens' CreateEnvironmentEC Text
ceecInstanceType = lens _ceecInstanceType (\s a -> s {_ceecInstanceType = a})

instance AWSRequest CreateEnvironmentEC where
  type
    Rs CreateEnvironmentEC =
      CreateEnvironmentECResponse
  request = postJSON cloud9
  response =
    receiveJSON
      ( \s h x ->
          CreateEnvironmentECResponse'
            <$> (x .?> "environmentId") <*> (pure (fromEnum s))
      )

instance Hashable CreateEnvironmentEC

instance NFData CreateEnvironmentEC

instance ToHeaders CreateEnvironmentEC where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCloud9WorkspaceManagementService.CreateEnvironmentEC" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateEnvironmentEC where
  toJSON CreateEnvironmentEC' {..} =
    object
      ( catMaybes
          [ ("connectionType" .=) <$> _ceecConnectionType,
            ("ownerArn" .=) <$> _ceecOwnerARN,
            ("tags" .=) <$> _ceecTags,
            ("subnetId" .=) <$> _ceecSubnetId,
            ("description" .=) <$> _ceecDescription,
            ("clientRequestToken" .=)
              <$> _ceecClientRequestToken,
            ("automaticStopTimeMinutes" .=)
              <$> _ceecAutomaticStopTimeMinutes,
            Just ("name" .= _ceecName),
            Just ("instanceType" .= _ceecInstanceType)
          ]
      )

instance ToPath CreateEnvironmentEC where
  toPath = const "/"

instance ToQuery CreateEnvironmentEC where
  toQuery = const mempty

-- | /See:/ 'createEnvironmentECResponse' smart constructor.
data CreateEnvironmentECResponse = CreateEnvironmentECResponse'
  { _ceecrrsEnvironmentId ::
      !(Maybe Text),
    _ceecrrsResponseStatus ::
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

-- | Creates a value of 'CreateEnvironmentECResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ceecrrsEnvironmentId' - The ID of the environment that was created.
--
-- * 'ceecrrsResponseStatus' - -- | The response status code.
createEnvironmentECResponse ::
  -- | 'ceecrrsResponseStatus'
  Int ->
  CreateEnvironmentECResponse
createEnvironmentECResponse pResponseStatus_ =
  CreateEnvironmentECResponse'
    { _ceecrrsEnvironmentId =
        Nothing,
      _ceecrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the environment that was created.
ceecrrsEnvironmentId :: Lens' CreateEnvironmentECResponse (Maybe Text)
ceecrrsEnvironmentId = lens _ceecrrsEnvironmentId (\s a -> s {_ceecrrsEnvironmentId = a})

-- | -- | The response status code.
ceecrrsResponseStatus :: Lens' CreateEnvironmentECResponse Int
ceecrrsResponseStatus = lens _ceecrrsResponseStatus (\s a -> s {_ceecrrsResponseStatus = a})

instance NFData CreateEnvironmentECResponse
