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
-- Module      : Network.AWS.CognitoIdentityProvider.DescribeIdentityProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specific identity provider.
module Network.AWS.CognitoIdentityProvider.DescribeIdentityProvider
  ( -- * Creating a Request
    describeIdentityProvider,
    DescribeIdentityProvider,

    -- * Request Lenses
    desUserPoolId,
    desProviderName,

    -- * Destructuring the Response
    describeIdentityProviderResponse,
    DescribeIdentityProviderResponse,

    -- * Response Lenses
    diprrsResponseStatus,
    diprrsIdentityProvider,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeIdentityProvider' smart constructor.
data DescribeIdentityProvider = DescribeIdentityProvider'
  { _desUserPoolId ::
      !Text,
    _desProviderName ::
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

-- | Creates a value of 'DescribeIdentityProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desUserPoolId' - The user pool ID.
--
-- * 'desProviderName' - The identity provider name.
describeIdentityProvider ::
  -- | 'desUserPoolId'
  Text ->
  -- | 'desProviderName'
  Text ->
  DescribeIdentityProvider
describeIdentityProvider pUserPoolId_ pProviderName_ =
  DescribeIdentityProvider'
    { _desUserPoolId =
        pUserPoolId_,
      _desProviderName = pProviderName_
    }

-- | The user pool ID.
desUserPoolId :: Lens' DescribeIdentityProvider Text
desUserPoolId = lens _desUserPoolId (\s a -> s {_desUserPoolId = a})

-- | The identity provider name.
desProviderName :: Lens' DescribeIdentityProvider Text
desProviderName = lens _desProviderName (\s a -> s {_desProviderName = a})

instance AWSRequest DescribeIdentityProvider where
  type
    Rs DescribeIdentityProvider =
      DescribeIdentityProviderResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          DescribeIdentityProviderResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "IdentityProvider")
      )

instance Hashable DescribeIdentityProvider

instance NFData DescribeIdentityProvider

instance ToHeaders DescribeIdentityProvider where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.DescribeIdentityProvider" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeIdentityProvider where
  toJSON DescribeIdentityProvider' {..} =
    object
      ( catMaybes
          [ Just ("UserPoolId" .= _desUserPoolId),
            Just ("ProviderName" .= _desProviderName)
          ]
      )

instance ToPath DescribeIdentityProvider where
  toPath = const "/"

instance ToQuery DescribeIdentityProvider where
  toQuery = const mempty

-- | /See:/ 'describeIdentityProviderResponse' smart constructor.
data DescribeIdentityProviderResponse = DescribeIdentityProviderResponse'
  { _diprrsResponseStatus ::
      !Int,
    _diprrsIdentityProvider ::
      !IdentityProviderType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeIdentityProviderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diprrsResponseStatus' - -- | The response status code.
--
-- * 'diprrsIdentityProvider' - The identity provider that was deleted.
describeIdentityProviderResponse ::
  -- | 'diprrsResponseStatus'
  Int ->
  -- | 'diprrsIdentityProvider'
  IdentityProviderType ->
  DescribeIdentityProviderResponse
describeIdentityProviderResponse
  pResponseStatus_
  pIdentityProvider_ =
    DescribeIdentityProviderResponse'
      { _diprrsResponseStatus =
          pResponseStatus_,
        _diprrsIdentityProvider =
          pIdentityProvider_
      }

-- | -- | The response status code.
diprrsResponseStatus :: Lens' DescribeIdentityProviderResponse Int
diprrsResponseStatus = lens _diprrsResponseStatus (\s a -> s {_diprrsResponseStatus = a})

-- | The identity provider that was deleted.
diprrsIdentityProvider :: Lens' DescribeIdentityProviderResponse IdentityProviderType
diprrsIdentityProvider = lens _diprrsIdentityProvider (\s a -> s {_diprrsIdentityProvider = a})

instance NFData DescribeIdentityProviderResponse
