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
-- Module      : Network.AWS.DirectoryService.EnableClientAuthentication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables alternative client authentication methods for the specified directory.
module Network.AWS.DirectoryService.EnableClientAuthentication
  ( -- * Creating a Request
    enableClientAuthentication,
    EnableClientAuthentication,

    -- * Request Lenses
    ecaDirectoryId,
    ecaType,

    -- * Destructuring the Response
    enableClientAuthenticationResponse,
    EnableClientAuthenticationResponse,

    -- * Response Lenses
    ecarrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'enableClientAuthentication' smart constructor.
data EnableClientAuthentication = EnableClientAuthentication'
  { _ecaDirectoryId ::
      !Text,
    _ecaType ::
      !ClientAuthenticationType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'EnableClientAuthentication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecaDirectoryId' - The identifier of the specified directory.
--
-- * 'ecaType' - The type of client authentication to enable. Currently only the value @SmartCard@ is supported. Smart card authentication in AD Connector requires that you enable Kerberos Constrained Delegation for the Service User to the LDAP service in the on-premises AD.
enableClientAuthentication ::
  -- | 'ecaDirectoryId'
  Text ->
  -- | 'ecaType'
  ClientAuthenticationType ->
  EnableClientAuthentication
enableClientAuthentication pDirectoryId_ pType_ =
  EnableClientAuthentication'
    { _ecaDirectoryId =
        pDirectoryId_,
      _ecaType = pType_
    }

-- | The identifier of the specified directory.
ecaDirectoryId :: Lens' EnableClientAuthentication Text
ecaDirectoryId = lens _ecaDirectoryId (\s a -> s {_ecaDirectoryId = a})

-- | The type of client authentication to enable. Currently only the value @SmartCard@ is supported. Smart card authentication in AD Connector requires that you enable Kerberos Constrained Delegation for the Service User to the LDAP service in the on-premises AD.
ecaType :: Lens' EnableClientAuthentication ClientAuthenticationType
ecaType = lens _ecaType (\s a -> s {_ecaType = a})

instance AWSRequest EnableClientAuthentication where
  type
    Rs EnableClientAuthentication =
      EnableClientAuthenticationResponse
  request = postJSON directoryService
  response =
    receiveEmpty
      ( \s h x ->
          EnableClientAuthenticationResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable EnableClientAuthentication

instance NFData EnableClientAuthentication

instance ToHeaders EnableClientAuthentication where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.EnableClientAuthentication" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON EnableClientAuthentication where
  toJSON EnableClientAuthentication' {..} =
    object
      ( catMaybes
          [ Just ("DirectoryId" .= _ecaDirectoryId),
            Just ("Type" .= _ecaType)
          ]
      )

instance ToPath EnableClientAuthentication where
  toPath = const "/"

instance ToQuery EnableClientAuthentication where
  toQuery = const mempty

-- | /See:/ 'enableClientAuthenticationResponse' smart constructor.
newtype EnableClientAuthenticationResponse = EnableClientAuthenticationResponse'
  { _ecarrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'EnableClientAuthenticationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecarrsResponseStatus' - -- | The response status code.
enableClientAuthenticationResponse ::
  -- | 'ecarrsResponseStatus'
  Int ->
  EnableClientAuthenticationResponse
enableClientAuthenticationResponse pResponseStatus_ =
  EnableClientAuthenticationResponse'
    { _ecarrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ecarrsResponseStatus :: Lens' EnableClientAuthenticationResponse Int
ecarrsResponseStatus = lens _ecarrsResponseStatus (\s a -> s {_ecarrsResponseStatus = a})

instance NFData EnableClientAuthenticationResponse
