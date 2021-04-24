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
-- Module      : Network.AWS.CognitoIdentityProvider.DescribeUserPoolClient
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Client method for returning the configuration information and metadata of the specified user pool app client.
module Network.AWS.CognitoIdentityProvider.DescribeUserPoolClient
  ( -- * Creating a Request
    describeUserPoolClient,
    DescribeUserPoolClient,

    -- * Request Lenses
    dupcuUserPoolId,
    dupcuClientId,

    -- * Destructuring the Response
    describeUserPoolClientResponse,
    DescribeUserPoolClientResponse,

    -- * Response Lenses
    dupcrrsUserPoolClient,
    dupcrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to describe a user pool client.
--
--
--
-- /See:/ 'describeUserPoolClient' smart constructor.
data DescribeUserPoolClient = DescribeUserPoolClient'
  { _dupcuUserPoolId ::
      !Text,
    _dupcuClientId ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUserPoolClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dupcuUserPoolId' - The user pool ID for the user pool you want to describe.
--
-- * 'dupcuClientId' - The app client ID of the app associated with the user pool.
describeUserPoolClient ::
  -- | 'dupcuUserPoolId'
  Text ->
  -- | 'dupcuClientId'
  Text ->
  DescribeUserPoolClient
describeUserPoolClient pUserPoolId_ pClientId_ =
  DescribeUserPoolClient'
    { _dupcuUserPoolId =
        pUserPoolId_,
      _dupcuClientId = _Sensitive # pClientId_
    }

-- | The user pool ID for the user pool you want to describe.
dupcuUserPoolId :: Lens' DescribeUserPoolClient Text
dupcuUserPoolId = lens _dupcuUserPoolId (\s a -> s {_dupcuUserPoolId = a})

-- | The app client ID of the app associated with the user pool.
dupcuClientId :: Lens' DescribeUserPoolClient Text
dupcuClientId = lens _dupcuClientId (\s a -> s {_dupcuClientId = a}) . _Sensitive

instance AWSRequest DescribeUserPoolClient where
  type
    Rs DescribeUserPoolClient =
      DescribeUserPoolClientResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          DescribeUserPoolClientResponse'
            <$> (x .?> "UserPoolClient") <*> (pure (fromEnum s))
      )

instance Hashable DescribeUserPoolClient

instance NFData DescribeUserPoolClient

instance ToHeaders DescribeUserPoolClient where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.DescribeUserPoolClient" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeUserPoolClient where
  toJSON DescribeUserPoolClient' {..} =
    object
      ( catMaybes
          [ Just ("UserPoolId" .= _dupcuUserPoolId),
            Just ("ClientId" .= _dupcuClientId)
          ]
      )

instance ToPath DescribeUserPoolClient where
  toPath = const "/"

instance ToQuery DescribeUserPoolClient where
  toQuery = const mempty

-- | Represents the response from the server from a request to describe the user pool client.
--
--
--
-- /See:/ 'describeUserPoolClientResponse' smart constructor.
data DescribeUserPoolClientResponse = DescribeUserPoolClientResponse'
  { _dupcrrsUserPoolClient ::
      !( Maybe
           UserPoolClientType
       ),
    _dupcrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeUserPoolClientResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dupcrrsUserPoolClient' - The user pool client from a server response to describe the user pool client.
--
-- * 'dupcrrsResponseStatus' - -- | The response status code.
describeUserPoolClientResponse ::
  -- | 'dupcrrsResponseStatus'
  Int ->
  DescribeUserPoolClientResponse
describeUserPoolClientResponse pResponseStatus_ =
  DescribeUserPoolClientResponse'
    { _dupcrrsUserPoolClient =
        Nothing,
      _dupcrrsResponseStatus = pResponseStatus_
    }

-- | The user pool client from a server response to describe the user pool client.
dupcrrsUserPoolClient :: Lens' DescribeUserPoolClientResponse (Maybe UserPoolClientType)
dupcrrsUserPoolClient = lens _dupcrrsUserPoolClient (\s a -> s {_dupcrrsUserPoolClient = a})

-- | -- | The response status code.
dupcrrsResponseStatus :: Lens' DescribeUserPoolClientResponse Int
dupcrrsResponseStatus = lens _dupcrrsResponseStatus (\s a -> s {_dupcrrsResponseStatus = a})

instance NFData DescribeUserPoolClientResponse
