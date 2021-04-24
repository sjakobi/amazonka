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
-- Module      : Network.AWS.CognitoIdentity.SetPrincipalTagAttributeMap
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- You can use this operation to use default (username and clientID) attribute or custom attribute mappings.
module Network.AWS.CognitoIdentity.SetPrincipalTagAttributeMap
  ( -- * Creating a Request
    setPrincipalTagAttributeMap,
    SetPrincipalTagAttributeMap,

    -- * Request Lenses
    sptamPrincipalTags,
    sptamUseDefaults,
    sptamIdentityPoolId,
    sptamIdentityProviderName,

    -- * Destructuring the Response
    setPrincipalTagAttributeMapResponse,
    SetPrincipalTagAttributeMapResponse,

    -- * Response Lenses
    sptamrrsIdentityPoolId,
    sptamrrsIdentityProviderName,
    sptamrrsPrincipalTags,
    sptamrrsUseDefaults,
    sptamrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setPrincipalTagAttributeMap' smart constructor.
data SetPrincipalTagAttributeMap = SetPrincipalTagAttributeMap'
  { _sptamPrincipalTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _sptamUseDefaults ::
      !(Maybe Bool),
    _sptamIdentityPoolId ::
      !Text,
    _sptamIdentityProviderName ::
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

-- | Creates a value of 'SetPrincipalTagAttributeMap' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sptamPrincipalTags' - You can use this operation to add principal tags.
--
-- * 'sptamUseDefaults' - You can use this operation to use default (username and clientID) attribute mappings.
--
-- * 'sptamIdentityPoolId' - The ID of the Identity Pool you want to set attribute mappings for.
--
-- * 'sptamIdentityProviderName' - The provider name you want to use for attribute mappings.
setPrincipalTagAttributeMap ::
  -- | 'sptamIdentityPoolId'
  Text ->
  -- | 'sptamIdentityProviderName'
  Text ->
  SetPrincipalTagAttributeMap
setPrincipalTagAttributeMap
  pIdentityPoolId_
  pIdentityProviderName_ =
    SetPrincipalTagAttributeMap'
      { _sptamPrincipalTags =
          Nothing,
        _sptamUseDefaults = Nothing,
        _sptamIdentityPoolId = pIdentityPoolId_,
        _sptamIdentityProviderName =
          pIdentityProviderName_
      }

-- | You can use this operation to add principal tags.
sptamPrincipalTags :: Lens' SetPrincipalTagAttributeMap (HashMap Text Text)
sptamPrincipalTags = lens _sptamPrincipalTags (\s a -> s {_sptamPrincipalTags = a}) . _Default . _Map

-- | You can use this operation to use default (username and clientID) attribute mappings.
sptamUseDefaults :: Lens' SetPrincipalTagAttributeMap (Maybe Bool)
sptamUseDefaults = lens _sptamUseDefaults (\s a -> s {_sptamUseDefaults = a})

-- | The ID of the Identity Pool you want to set attribute mappings for.
sptamIdentityPoolId :: Lens' SetPrincipalTagAttributeMap Text
sptamIdentityPoolId = lens _sptamIdentityPoolId (\s a -> s {_sptamIdentityPoolId = a})

-- | The provider name you want to use for attribute mappings.
sptamIdentityProviderName :: Lens' SetPrincipalTagAttributeMap Text
sptamIdentityProviderName = lens _sptamIdentityProviderName (\s a -> s {_sptamIdentityProviderName = a})

instance AWSRequest SetPrincipalTagAttributeMap where
  type
    Rs SetPrincipalTagAttributeMap =
      SetPrincipalTagAttributeMapResponse
  request = postJSON cognitoIdentity
  response =
    receiveJSON
      ( \s h x ->
          SetPrincipalTagAttributeMapResponse'
            <$> (x .?> "IdentityPoolId")
            <*> (x .?> "IdentityProviderName")
            <*> (x .?> "PrincipalTags" .!@ mempty)
            <*> (x .?> "UseDefaults")
            <*> (pure (fromEnum s))
      )

instance Hashable SetPrincipalTagAttributeMap

instance NFData SetPrincipalTagAttributeMap

instance ToHeaders SetPrincipalTagAttributeMap where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityService.SetPrincipalTagAttributeMap" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SetPrincipalTagAttributeMap where
  toJSON SetPrincipalTagAttributeMap' {..} =
    object
      ( catMaybes
          [ ("PrincipalTags" .=) <$> _sptamPrincipalTags,
            ("UseDefaults" .=) <$> _sptamUseDefaults,
            Just ("IdentityPoolId" .= _sptamIdentityPoolId),
            Just
              ( "IdentityProviderName"
                  .= _sptamIdentityProviderName
              )
          ]
      )

instance ToPath SetPrincipalTagAttributeMap where
  toPath = const "/"

instance ToQuery SetPrincipalTagAttributeMap where
  toQuery = const mempty

-- | /See:/ 'setPrincipalTagAttributeMapResponse' smart constructor.
data SetPrincipalTagAttributeMapResponse = SetPrincipalTagAttributeMapResponse'
  { _sptamrrsIdentityPoolId ::
      !( Maybe
           Text
       ),
    _sptamrrsIdentityProviderName ::
      !( Maybe
           Text
       ),
    _sptamrrsPrincipalTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _sptamrrsUseDefaults ::
      !( Maybe
           Bool
       ),
    _sptamrrsResponseStatus ::
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

-- | Creates a value of 'SetPrincipalTagAttributeMapResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sptamrrsIdentityPoolId' - The ID of the Identity Pool you want to set attribute mappings for.
--
-- * 'sptamrrsIdentityProviderName' - The provider name you want to use for attribute mappings.
--
-- * 'sptamrrsPrincipalTags' - You can use this operation to add principal tags. The @PrincipalTags@ operation enables you to reference user attributes in your IAM permissions policy.
--
-- * 'sptamrrsUseDefaults' - You can use this operation to select default (username and clientID) attribute mappings.
--
-- * 'sptamrrsResponseStatus' - -- | The response status code.
setPrincipalTagAttributeMapResponse ::
  -- | 'sptamrrsResponseStatus'
  Int ->
  SetPrincipalTagAttributeMapResponse
setPrincipalTagAttributeMapResponse pResponseStatus_ =
  SetPrincipalTagAttributeMapResponse'
    { _sptamrrsIdentityPoolId =
        Nothing,
      _sptamrrsIdentityProviderName =
        Nothing,
      _sptamrrsPrincipalTags = Nothing,
      _sptamrrsUseDefaults = Nothing,
      _sptamrrsResponseStatus =
        pResponseStatus_
    }

-- | The ID of the Identity Pool you want to set attribute mappings for.
sptamrrsIdentityPoolId :: Lens' SetPrincipalTagAttributeMapResponse (Maybe Text)
sptamrrsIdentityPoolId = lens _sptamrrsIdentityPoolId (\s a -> s {_sptamrrsIdentityPoolId = a})

-- | The provider name you want to use for attribute mappings.
sptamrrsIdentityProviderName :: Lens' SetPrincipalTagAttributeMapResponse (Maybe Text)
sptamrrsIdentityProviderName = lens _sptamrrsIdentityProviderName (\s a -> s {_sptamrrsIdentityProviderName = a})

-- | You can use this operation to add principal tags. The @PrincipalTags@ operation enables you to reference user attributes in your IAM permissions policy.
sptamrrsPrincipalTags :: Lens' SetPrincipalTagAttributeMapResponse (HashMap Text Text)
sptamrrsPrincipalTags = lens _sptamrrsPrincipalTags (\s a -> s {_sptamrrsPrincipalTags = a}) . _Default . _Map

-- | You can use this operation to select default (username and clientID) attribute mappings.
sptamrrsUseDefaults :: Lens' SetPrincipalTagAttributeMapResponse (Maybe Bool)
sptamrrsUseDefaults = lens _sptamrrsUseDefaults (\s a -> s {_sptamrrsUseDefaults = a})

-- | -- | The response status code.
sptamrrsResponseStatus :: Lens' SetPrincipalTagAttributeMapResponse Int
sptamrrsResponseStatus = lens _sptamrrsResponseStatus (\s a -> s {_sptamrrsResponseStatus = a})

instance NFData SetPrincipalTagAttributeMapResponse
