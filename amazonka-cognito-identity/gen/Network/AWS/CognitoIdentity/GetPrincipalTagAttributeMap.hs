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
-- Module      : Network.AWS.CognitoIdentity.GetPrincipalTagAttributeMap
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Use @GetPrincipalTagAttributeMap@ to list all mappings between @PrincipalTags@ and user attributes.
module Network.AWS.CognitoIdentity.GetPrincipalTagAttributeMap
  ( -- * Creating a Request
    getPrincipalTagAttributeMap,
    GetPrincipalTagAttributeMap,

    -- * Request Lenses
    gptamIdentityPoolId,
    gptamIdentityProviderName,

    -- * Destructuring the Response
    getPrincipalTagAttributeMapResponse,
    GetPrincipalTagAttributeMapResponse,

    -- * Response Lenses
    gptamrrsIdentityPoolId,
    gptamrrsIdentityProviderName,
    gptamrrsPrincipalTags,
    gptamrrsUseDefaults,
    gptamrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getPrincipalTagAttributeMap' smart constructor.
data GetPrincipalTagAttributeMap = GetPrincipalTagAttributeMap'
  { _gptamIdentityPoolId ::
      !Text,
    _gptamIdentityProviderName ::
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

-- | Creates a value of 'GetPrincipalTagAttributeMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gptamIdentityPoolId' - You can use this operation to get the ID of the Identity Pool you setup attribute mappings for.
--
-- * 'gptamIdentityProviderName' - You can use this operation to get the provider name.
getPrincipalTagAttributeMap ::
  -- | 'gptamIdentityPoolId'
  Text ->
  -- | 'gptamIdentityProviderName'
  Text ->
  GetPrincipalTagAttributeMap
getPrincipalTagAttributeMap
  pIdentityPoolId_
  pIdentityProviderName_ =
    GetPrincipalTagAttributeMap'
      { _gptamIdentityPoolId =
          pIdentityPoolId_,
        _gptamIdentityProviderName =
          pIdentityProviderName_
      }

-- | You can use this operation to get the ID of the Identity Pool you setup attribute mappings for.
gptamIdentityPoolId :: Lens' GetPrincipalTagAttributeMap Text
gptamIdentityPoolId = lens _gptamIdentityPoolId (\s a -> s {_gptamIdentityPoolId = a})

-- | You can use this operation to get the provider name.
gptamIdentityProviderName :: Lens' GetPrincipalTagAttributeMap Text
gptamIdentityProviderName = lens _gptamIdentityProviderName (\s a -> s {_gptamIdentityProviderName = a})

instance AWSRequest GetPrincipalTagAttributeMap where
  type
    Rs GetPrincipalTagAttributeMap =
      GetPrincipalTagAttributeMapResponse
  request = postJSON cognitoIdentity
  response =
    receiveJSON
      ( \s h x ->
          GetPrincipalTagAttributeMapResponse'
            <$> (x .?> "IdentityPoolId")
            <*> (x .?> "IdentityProviderName")
            <*> (x .?> "PrincipalTags" .!@ mempty)
            <*> (x .?> "UseDefaults")
            <*> (pure (fromEnum s))
      )

instance Hashable GetPrincipalTagAttributeMap

instance NFData GetPrincipalTagAttributeMap

instance ToHeaders GetPrincipalTagAttributeMap where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityService.GetPrincipalTagAttributeMap" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetPrincipalTagAttributeMap where
  toJSON GetPrincipalTagAttributeMap' {..} =
    object
      ( catMaybes
          [ Just ("IdentityPoolId" .= _gptamIdentityPoolId),
            Just
              ( "IdentityProviderName"
                  .= _gptamIdentityProviderName
              )
          ]
      )

instance ToPath GetPrincipalTagAttributeMap where
  toPath = const "/"

instance ToQuery GetPrincipalTagAttributeMap where
  toQuery = const mempty

-- | /See:/ 'getPrincipalTagAttributeMapResponse' smart constructor.
data GetPrincipalTagAttributeMapResponse = GetPrincipalTagAttributeMapResponse'
  { _gptamrrsIdentityPoolId ::
      !( Maybe
           Text
       ),
    _gptamrrsIdentityProviderName ::
      !( Maybe
           Text
       ),
    _gptamrrsPrincipalTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _gptamrrsUseDefaults ::
      !( Maybe
           Bool
       ),
    _gptamrrsResponseStatus ::
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

-- | Creates a value of 'GetPrincipalTagAttributeMapResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gptamrrsIdentityPoolId' - You can use this operation to get the ID of the Identity Pool you setup attribute mappings for.
--
-- * 'gptamrrsIdentityProviderName' - You can use this operation to get the provider name.
--
-- * 'gptamrrsPrincipalTags' - You can use this operation to add principal tags. The @PrincipalTags@ operation enables you to reference user attributes in your IAM permissions policy.
--
-- * 'gptamrrsUseDefaults' - You can use this operation to list
--
-- * 'gptamrrsResponseStatus' - -- | The response status code.
getPrincipalTagAttributeMapResponse ::
  -- | 'gptamrrsResponseStatus'
  Int ->
  GetPrincipalTagAttributeMapResponse
getPrincipalTagAttributeMapResponse pResponseStatus_ =
  GetPrincipalTagAttributeMapResponse'
    { _gptamrrsIdentityPoolId =
        Nothing,
      _gptamrrsIdentityProviderName =
        Nothing,
      _gptamrrsPrincipalTags = Nothing,
      _gptamrrsUseDefaults = Nothing,
      _gptamrrsResponseStatus =
        pResponseStatus_
    }

-- | You can use this operation to get the ID of the Identity Pool you setup attribute mappings for.
gptamrrsIdentityPoolId :: Lens' GetPrincipalTagAttributeMapResponse (Maybe Text)
gptamrrsIdentityPoolId = lens _gptamrrsIdentityPoolId (\s a -> s {_gptamrrsIdentityPoolId = a})

-- | You can use this operation to get the provider name.
gptamrrsIdentityProviderName :: Lens' GetPrincipalTagAttributeMapResponse (Maybe Text)
gptamrrsIdentityProviderName = lens _gptamrrsIdentityProviderName (\s a -> s {_gptamrrsIdentityProviderName = a})

-- | You can use this operation to add principal tags. The @PrincipalTags@ operation enables you to reference user attributes in your IAM permissions policy.
gptamrrsPrincipalTags :: Lens' GetPrincipalTagAttributeMapResponse (HashMap Text Text)
gptamrrsPrincipalTags = lens _gptamrrsPrincipalTags (\s a -> s {_gptamrrsPrincipalTags = a}) . _Default . _Map

-- | You can use this operation to list
gptamrrsUseDefaults :: Lens' GetPrincipalTagAttributeMapResponse (Maybe Bool)
gptamrrsUseDefaults = lens _gptamrrsUseDefaults (\s a -> s {_gptamrrsUseDefaults = a})

-- | -- | The response status code.
gptamrrsResponseStatus :: Lens' GetPrincipalTagAttributeMapResponse Int
gptamrrsResponseStatus = lens _gptamrrsResponseStatus (\s a -> s {_gptamrrsResponseStatus = a})

instance NFData GetPrincipalTagAttributeMapResponse
