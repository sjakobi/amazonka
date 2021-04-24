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
-- Module      : Network.AWS.CognitoIdentityProvider.DeleteIdentityProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an identity provider for a user pool.
module Network.AWS.CognitoIdentityProvider.DeleteIdentityProvider
  ( -- * Creating a Request
    deleteIdentityProvider,
    DeleteIdentityProvider,

    -- * Request Lenses
    dipUserPoolId,
    dipProviderName,

    -- * Destructuring the Response
    deleteIdentityProviderResponse,
    DeleteIdentityProviderResponse,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteIdentityProvider' smart constructor.
data DeleteIdentityProvider = DeleteIdentityProvider'
  { _dipUserPoolId ::
      !Text,
    _dipProviderName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteIdentityProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dipUserPoolId' - The user pool ID.
--
-- * 'dipProviderName' - The identity provider name.
deleteIdentityProvider ::
  -- | 'dipUserPoolId'
  Text ->
  -- | 'dipProviderName'
  Text ->
  DeleteIdentityProvider
deleteIdentityProvider pUserPoolId_ pProviderName_ =
  DeleteIdentityProvider'
    { _dipUserPoolId =
        pUserPoolId_,
      _dipProviderName = pProviderName_
    }

-- | The user pool ID.
dipUserPoolId :: Lens' DeleteIdentityProvider Text
dipUserPoolId = lens _dipUserPoolId (\s a -> s {_dipUserPoolId = a})

-- | The identity provider name.
dipProviderName :: Lens' DeleteIdentityProvider Text
dipProviderName = lens _dipProviderName (\s a -> s {_dipProviderName = a})

instance AWSRequest DeleteIdentityProvider where
  type
    Rs DeleteIdentityProvider =
      DeleteIdentityProviderResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveNull DeleteIdentityProviderResponse'

instance Hashable DeleteIdentityProvider

instance NFData DeleteIdentityProvider

instance ToHeaders DeleteIdentityProvider where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.DeleteIdentityProvider" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteIdentityProvider where
  toJSON DeleteIdentityProvider' {..} =
    object
      ( catMaybes
          [ Just ("UserPoolId" .= _dipUserPoolId),
            Just ("ProviderName" .= _dipProviderName)
          ]
      )

instance ToPath DeleteIdentityProvider where
  toPath = const "/"

instance ToQuery DeleteIdentityProvider where
  toQuery = const mempty

-- | /See:/ 'deleteIdentityProviderResponse' smart constructor.
data DeleteIdentityProviderResponse = DeleteIdentityProviderResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteIdentityProviderResponse' with the minimum fields required to make a request.
deleteIdentityProviderResponse ::
  DeleteIdentityProviderResponse
deleteIdentityProviderResponse =
  DeleteIdentityProviderResponse'

instance NFData DeleteIdentityProviderResponse
