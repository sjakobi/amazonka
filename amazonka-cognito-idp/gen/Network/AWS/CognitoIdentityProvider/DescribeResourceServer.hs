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
-- Module      : Network.AWS.CognitoIdentityProvider.DescribeResourceServer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a resource server.
module Network.AWS.CognitoIdentityProvider.DescribeResourceServer
  ( -- * Creating a Request
    describeResourceServer,
    DescribeResourceServer,

    -- * Request Lenses
    drsrUserPoolId,
    drsrIdentifier,

    -- * Destructuring the Response
    describeResourceServerResponse,
    DescribeResourceServerResponse,

    -- * Response Lenses
    drsrrsResponseStatus,
    drsrrsResourceServer,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeResourceServer' smart constructor.
data DescribeResourceServer = DescribeResourceServer'
  { _drsrUserPoolId ::
      !Text,
    _drsrIdentifier :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeResourceServer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsrUserPoolId' - The user pool ID for the user pool that hosts the resource server.
--
-- * 'drsrIdentifier' - The identifier for the resource server
describeResourceServer ::
  -- | 'drsrUserPoolId'
  Text ->
  -- | 'drsrIdentifier'
  Text ->
  DescribeResourceServer
describeResourceServer pUserPoolId_ pIdentifier_ =
  DescribeResourceServer'
    { _drsrUserPoolId =
        pUserPoolId_,
      _drsrIdentifier = pIdentifier_
    }

-- | The user pool ID for the user pool that hosts the resource server.
drsrUserPoolId :: Lens' DescribeResourceServer Text
drsrUserPoolId = lens _drsrUserPoolId (\s a -> s {_drsrUserPoolId = a})

-- | The identifier for the resource server
drsrIdentifier :: Lens' DescribeResourceServer Text
drsrIdentifier = lens _drsrIdentifier (\s a -> s {_drsrIdentifier = a})

instance AWSRequest DescribeResourceServer where
  type
    Rs DescribeResourceServer =
      DescribeResourceServerResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          DescribeResourceServerResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "ResourceServer")
      )

instance Hashable DescribeResourceServer

instance NFData DescribeResourceServer

instance ToHeaders DescribeResourceServer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.DescribeResourceServer" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeResourceServer where
  toJSON DescribeResourceServer' {..} =
    object
      ( catMaybes
          [ Just ("UserPoolId" .= _drsrUserPoolId),
            Just ("Identifier" .= _drsrIdentifier)
          ]
      )

instance ToPath DescribeResourceServer where
  toPath = const "/"

instance ToQuery DescribeResourceServer where
  toQuery = const mempty

-- | /See:/ 'describeResourceServerResponse' smart constructor.
data DescribeResourceServerResponse = DescribeResourceServerResponse'
  { _drsrrsResponseStatus ::
      !Int,
    _drsrrsResourceServer ::
      !ResourceServerType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeResourceServerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsrrsResponseStatus' - -- | The response status code.
--
-- * 'drsrrsResourceServer' - The resource server.
describeResourceServerResponse ::
  -- | 'drsrrsResponseStatus'
  Int ->
  -- | 'drsrrsResourceServer'
  ResourceServerType ->
  DescribeResourceServerResponse
describeResourceServerResponse
  pResponseStatus_
  pResourceServer_ =
    DescribeResourceServerResponse'
      { _drsrrsResponseStatus =
          pResponseStatus_,
        _drsrrsResourceServer = pResourceServer_
      }

-- | -- | The response status code.
drsrrsResponseStatus :: Lens' DescribeResourceServerResponse Int
drsrrsResponseStatus = lens _drsrrsResponseStatus (\s a -> s {_drsrrsResponseStatus = a})

-- | The resource server.
drsrrsResourceServer :: Lens' DescribeResourceServerResponse ResourceServerType
drsrrsResourceServer = lens _drsrrsResourceServer (\s a -> s {_drsrrsResourceServer = a})

instance NFData DescribeResourceServerResponse
