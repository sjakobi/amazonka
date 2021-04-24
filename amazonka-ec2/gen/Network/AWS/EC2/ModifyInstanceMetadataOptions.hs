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
-- Module      : Network.AWS.EC2.ModifyInstanceMetadataOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify the instance metadata parameters on a running or stopped instance. When you modify the parameters on a stopped instance, they are applied when the instance is started. When you modify the parameters on a running instance, the API responds with a state of “pending”. After the parameter modifications are successfully applied to the instance, the state of the modifications changes from “pending” to “applied” in subsequent describe-instances API calls. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html Instance metadata and user data> in the /Amazon EC2 User Guide/ .
module Network.AWS.EC2.ModifyInstanceMetadataOptions
  ( -- * Creating a Request
    modifyInstanceMetadataOptions,
    ModifyInstanceMetadataOptions,

    -- * Request Lenses
    mimoDryRun,
    mimoHTTPEndpoint,
    mimoHTTPPutResponseHopLimit,
    mimoHTTPTokens,
    mimoInstanceId,

    -- * Destructuring the Response
    modifyInstanceMetadataOptionsResponse,
    ModifyInstanceMetadataOptionsResponse,

    -- * Response Lenses
    mimorrsInstanceMetadataOptions,
    mimorrsInstanceId,
    mimorrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyInstanceMetadataOptions' smart constructor.
data ModifyInstanceMetadataOptions = ModifyInstanceMetadataOptions'
  { _mimoDryRun ::
      !( Maybe
           Bool
       ),
    _mimoHTTPEndpoint ::
      !( Maybe
           InstanceMetadataEndpointState
       ),
    _mimoHTTPPutResponseHopLimit ::
      !( Maybe
           Int
       ),
    _mimoHTTPTokens ::
      !( Maybe
           HTTPTokensState
       ),
    _mimoInstanceId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyInstanceMetadataOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mimoDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mimoHTTPEndpoint' - This parameter enables or disables the HTTP metadata endpoint on your instances. If the parameter is not specified, the existing state is maintained.
--
-- * 'mimoHTTPPutResponseHopLimit' - The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. If no parameter is specified, the existing state is maintained. Possible values: Integers from 1 to 64
--
-- * 'mimoHTTPTokens' - The state of token usage for your instance metadata requests. If the parameter is not specified in the request, the default state is @optional@ . If the state is @optional@ , you can choose to retrieve instance metadata with or without a signed token header on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned. If the state is @required@ , you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credential always returns the version 2.0 credentials; the version 1.0 credentials are not available.
--
-- * 'mimoInstanceId' - The ID of the instance.
modifyInstanceMetadataOptions ::
  -- | 'mimoInstanceId'
  Text ->
  ModifyInstanceMetadataOptions
modifyInstanceMetadataOptions pInstanceId_ =
  ModifyInstanceMetadataOptions'
    { _mimoDryRun =
        Nothing,
      _mimoHTTPEndpoint = Nothing,
      _mimoHTTPPutResponseHopLimit = Nothing,
      _mimoHTTPTokens = Nothing,
      _mimoInstanceId = pInstanceId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mimoDryRun :: Lens' ModifyInstanceMetadataOptions (Maybe Bool)
mimoDryRun = lens _mimoDryRun (\s a -> s {_mimoDryRun = a})

-- | This parameter enables or disables the HTTP metadata endpoint on your instances. If the parameter is not specified, the existing state is maintained.
mimoHTTPEndpoint :: Lens' ModifyInstanceMetadataOptions (Maybe InstanceMetadataEndpointState)
mimoHTTPEndpoint = lens _mimoHTTPEndpoint (\s a -> s {_mimoHTTPEndpoint = a})

-- | The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. If no parameter is specified, the existing state is maintained. Possible values: Integers from 1 to 64
mimoHTTPPutResponseHopLimit :: Lens' ModifyInstanceMetadataOptions (Maybe Int)
mimoHTTPPutResponseHopLimit = lens _mimoHTTPPutResponseHopLimit (\s a -> s {_mimoHTTPPutResponseHopLimit = a})

-- | The state of token usage for your instance metadata requests. If the parameter is not specified in the request, the default state is @optional@ . If the state is @optional@ , you can choose to retrieve instance metadata with or without a signed token header on your request. If you retrieve the IAM role credentials without a token, the version 1.0 role credentials are returned. If you retrieve the IAM role credentials using a valid signed token, the version 2.0 role credentials are returned. If the state is @required@ , you must send a signed token header with any instance metadata retrieval requests. In this state, retrieving the IAM role credential always returns the version 2.0 credentials; the version 1.0 credentials are not available.
mimoHTTPTokens :: Lens' ModifyInstanceMetadataOptions (Maybe HTTPTokensState)
mimoHTTPTokens = lens _mimoHTTPTokens (\s a -> s {_mimoHTTPTokens = a})

-- | The ID of the instance.
mimoInstanceId :: Lens' ModifyInstanceMetadataOptions Text
mimoInstanceId = lens _mimoInstanceId (\s a -> s {_mimoInstanceId = a})

instance AWSRequest ModifyInstanceMetadataOptions where
  type
    Rs ModifyInstanceMetadataOptions =
      ModifyInstanceMetadataOptionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyInstanceMetadataOptionsResponse'
            <$> (x .@? "instanceMetadataOptions")
            <*> (x .@? "instanceId")
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyInstanceMetadataOptions

instance NFData ModifyInstanceMetadataOptions

instance ToHeaders ModifyInstanceMetadataOptions where
  toHeaders = const mempty

instance ToPath ModifyInstanceMetadataOptions where
  toPath = const "/"

instance ToQuery ModifyInstanceMetadataOptions where
  toQuery ModifyInstanceMetadataOptions' {..} =
    mconcat
      [ "Action"
          =: ("ModifyInstanceMetadataOptions" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _mimoDryRun,
        "HttpEndpoint" =: _mimoHTTPEndpoint,
        "HttpPutResponseHopLimit"
          =: _mimoHTTPPutResponseHopLimit,
        "HttpTokens" =: _mimoHTTPTokens,
        "InstanceId" =: _mimoInstanceId
      ]

-- | /See:/ 'modifyInstanceMetadataOptionsResponse' smart constructor.
data ModifyInstanceMetadataOptionsResponse = ModifyInstanceMetadataOptionsResponse'
  { _mimorrsInstanceMetadataOptions ::
      !( Maybe
           InstanceMetadataOptionsResponse
       ),
    _mimorrsInstanceId ::
      !( Maybe
           Text
       ),
    _mimorrsResponseStatus ::
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

-- | Creates a value of 'ModifyInstanceMetadataOptionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mimorrsInstanceMetadataOptions' - The metadata options for the instance.
--
-- * 'mimorrsInstanceId' - The ID of the instance.
--
-- * 'mimorrsResponseStatus' - -- | The response status code.
modifyInstanceMetadataOptionsResponse ::
  -- | 'mimorrsResponseStatus'
  Int ->
  ModifyInstanceMetadataOptionsResponse
modifyInstanceMetadataOptionsResponse
  pResponseStatus_ =
    ModifyInstanceMetadataOptionsResponse'
      { _mimorrsInstanceMetadataOptions =
          Nothing,
        _mimorrsInstanceId = Nothing,
        _mimorrsResponseStatus =
          pResponseStatus_
      }

-- | The metadata options for the instance.
mimorrsInstanceMetadataOptions :: Lens' ModifyInstanceMetadataOptionsResponse (Maybe InstanceMetadataOptionsResponse)
mimorrsInstanceMetadataOptions = lens _mimorrsInstanceMetadataOptions (\s a -> s {_mimorrsInstanceMetadataOptions = a})

-- | The ID of the instance.
mimorrsInstanceId :: Lens' ModifyInstanceMetadataOptionsResponse (Maybe Text)
mimorrsInstanceId = lens _mimorrsInstanceId (\s a -> s {_mimorrsInstanceId = a})

-- | -- | The response status code.
mimorrsResponseStatus :: Lens' ModifyInstanceMetadataOptionsResponse Int
mimorrsResponseStatus = lens _mimorrsResponseStatus (\s a -> s {_mimorrsResponseStatus = a})

instance NFData ModifyInstanceMetadataOptionsResponse
