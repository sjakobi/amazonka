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
-- Module      : Network.AWS.CognitoIdentity.GetIdentityPoolRoles
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the roles for an identity pool.
--
--
-- You must use AWS Developer credentials to call this API.
module Network.AWS.CognitoIdentity.GetIdentityPoolRoles
  ( -- * Creating a Request
    getIdentityPoolRoles,
    GetIdentityPoolRoles,

    -- * Request Lenses
    giprIdentityPoolId,

    -- * Destructuring the Response
    getIdentityPoolRolesResponse,
    GetIdentityPoolRolesResponse,

    -- * Response Lenses
    giprrrsIdentityPoolId,
    giprrrsRoles,
    giprrrsRoleMappings,
    giprrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input to the @GetIdentityPoolRoles@ action.
--
--
--
-- /See:/ 'getIdentityPoolRoles' smart constructor.
newtype GetIdentityPoolRoles = GetIdentityPoolRoles'
  { _giprIdentityPoolId ::
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

-- | Creates a value of 'GetIdentityPoolRoles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giprIdentityPoolId' - An identity pool ID in the format REGION:GUID.
getIdentityPoolRoles ::
  -- | 'giprIdentityPoolId'
  Text ->
  GetIdentityPoolRoles
getIdentityPoolRoles pIdentityPoolId_ =
  GetIdentityPoolRoles'
    { _giprIdentityPoolId =
        pIdentityPoolId_
    }

-- | An identity pool ID in the format REGION:GUID.
giprIdentityPoolId :: Lens' GetIdentityPoolRoles Text
giprIdentityPoolId = lens _giprIdentityPoolId (\s a -> s {_giprIdentityPoolId = a})

instance AWSRequest GetIdentityPoolRoles where
  type
    Rs GetIdentityPoolRoles =
      GetIdentityPoolRolesResponse
  request = postJSON cognitoIdentity
  response =
    receiveJSON
      ( \s h x ->
          GetIdentityPoolRolesResponse'
            <$> (x .?> "IdentityPoolId")
            <*> (x .?> "Roles" .!@ mempty)
            <*> (x .?> "RoleMappings" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetIdentityPoolRoles

instance NFData GetIdentityPoolRoles

instance ToHeaders GetIdentityPoolRoles where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityService.GetIdentityPoolRoles" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetIdentityPoolRoles where
  toJSON GetIdentityPoolRoles' {..} =
    object
      ( catMaybes
          [Just ("IdentityPoolId" .= _giprIdentityPoolId)]
      )

instance ToPath GetIdentityPoolRoles where
  toPath = const "/"

instance ToQuery GetIdentityPoolRoles where
  toQuery = const mempty

-- | Returned in response to a successful @GetIdentityPoolRoles@ operation.
--
--
--
-- /See:/ 'getIdentityPoolRolesResponse' smart constructor.
data GetIdentityPoolRolesResponse = GetIdentityPoolRolesResponse'
  { _giprrrsIdentityPoolId ::
      !(Maybe Text),
    _giprrrsRoles ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _giprrrsRoleMappings ::
      !( Maybe
           ( Map
               Text
               RoleMapping
           )
       ),
    _giprrrsResponseStatus ::
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

-- | Creates a value of 'GetIdentityPoolRolesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giprrrsIdentityPoolId' - An identity pool ID in the format REGION:GUID.
--
-- * 'giprrrsRoles' - The map of roles associated with this pool. Currently only authenticated and unauthenticated roles are supported.
--
-- * 'giprrrsRoleMappings' - How users for a specific identity provider are to mapped to roles. This is a String-to-'RoleMapping' object map. The string identifies the identity provider, for example, "graph.facebook.com" or "cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".
--
-- * 'giprrrsResponseStatus' - -- | The response status code.
getIdentityPoolRolesResponse ::
  -- | 'giprrrsResponseStatus'
  Int ->
  GetIdentityPoolRolesResponse
getIdentityPoolRolesResponse pResponseStatus_ =
  GetIdentityPoolRolesResponse'
    { _giprrrsIdentityPoolId =
        Nothing,
      _giprrrsRoles = Nothing,
      _giprrrsRoleMappings = Nothing,
      _giprrrsResponseStatus = pResponseStatus_
    }

-- | An identity pool ID in the format REGION:GUID.
giprrrsIdentityPoolId :: Lens' GetIdentityPoolRolesResponse (Maybe Text)
giprrrsIdentityPoolId = lens _giprrrsIdentityPoolId (\s a -> s {_giprrrsIdentityPoolId = a})

-- | The map of roles associated with this pool. Currently only authenticated and unauthenticated roles are supported.
giprrrsRoles :: Lens' GetIdentityPoolRolesResponse (HashMap Text Text)
giprrrsRoles = lens _giprrrsRoles (\s a -> s {_giprrrsRoles = a}) . _Default . _Map

-- | How users for a specific identity provider are to mapped to roles. This is a String-to-'RoleMapping' object map. The string identifies the identity provider, for example, "graph.facebook.com" or "cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".
giprrrsRoleMappings :: Lens' GetIdentityPoolRolesResponse (HashMap Text RoleMapping)
giprrrsRoleMappings = lens _giprrrsRoleMappings (\s a -> s {_giprrrsRoleMappings = a}) . _Default . _Map

-- | -- | The response status code.
giprrrsResponseStatus :: Lens' GetIdentityPoolRolesResponse Int
giprrrsResponseStatus = lens _giprrrsResponseStatus (\s a -> s {_giprrrsResponseStatus = a})

instance NFData GetIdentityPoolRolesResponse
