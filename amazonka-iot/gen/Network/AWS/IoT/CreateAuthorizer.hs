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
-- Module      : Network.AWS.IoT.CreateAuthorizer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an authorizer.
module Network.AWS.IoT.CreateAuthorizer
  ( -- * Creating a Request
    createAuthorizer,
    CreateAuthorizer,

    -- * Request Lenses
    caStatus,
    caTokenSigningPublicKeys,
    caTags,
    caSigningDisabled,
    caTokenKeyName,
    caAuthorizerName,
    caAuthorizerFunctionARN,

    -- * Destructuring the Response
    createAuthorizerResponse,
    CreateAuthorizerResponse,

    -- * Response Lenses
    carrsAuthorizerARN,
    carrsAuthorizerName,
    carrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createAuthorizer' smart constructor.
data CreateAuthorizer = CreateAuthorizer'
  { _caStatus ::
      !(Maybe AuthorizerStatus),
    _caTokenSigningPublicKeys ::
      !(Maybe (Map Text Text)),
    _caTags :: !(Maybe [Tag]),
    _caSigningDisabled :: !(Maybe Bool),
    _caTokenKeyName :: !(Maybe Text),
    _caAuthorizerName :: !Text,
    _caAuthorizerFunctionARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAuthorizer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caStatus' - The status of the create authorizer request.
--
-- * 'caTokenSigningPublicKeys' - The public keys used to verify the digital signature returned by your custom authentication service.
--
-- * 'caTags' - Metadata which can be used to manage the custom authorizer.
--
-- * 'caSigningDisabled' - Specifies whether AWS IoT validates the token signature in an authorization request.
--
-- * 'caTokenKeyName' - The name of the token key used to extract the token from the HTTP headers.
--
-- * 'caAuthorizerName' - The authorizer name.
--
-- * 'caAuthorizerFunctionARN' - The ARN of the authorizer's Lambda function.
createAuthorizer ::
  -- | 'caAuthorizerName'
  Text ->
  -- | 'caAuthorizerFunctionARN'
  Text ->
  CreateAuthorizer
createAuthorizer
  pAuthorizerName_
  pAuthorizerFunctionARN_ =
    CreateAuthorizer'
      { _caStatus = Nothing,
        _caTokenSigningPublicKeys = Nothing,
        _caTags = Nothing,
        _caSigningDisabled = Nothing,
        _caTokenKeyName = Nothing,
        _caAuthorizerName = pAuthorizerName_,
        _caAuthorizerFunctionARN = pAuthorizerFunctionARN_
      }

-- | The status of the create authorizer request.
caStatus :: Lens' CreateAuthorizer (Maybe AuthorizerStatus)
caStatus = lens _caStatus (\s a -> s {_caStatus = a})

-- | The public keys used to verify the digital signature returned by your custom authentication service.
caTokenSigningPublicKeys :: Lens' CreateAuthorizer (HashMap Text Text)
caTokenSigningPublicKeys = lens _caTokenSigningPublicKeys (\s a -> s {_caTokenSigningPublicKeys = a}) . _Default . _Map

-- | Metadata which can be used to manage the custom authorizer.
caTags :: Lens' CreateAuthorizer [Tag]
caTags = lens _caTags (\s a -> s {_caTags = a}) . _Default . _Coerce

-- | Specifies whether AWS IoT validates the token signature in an authorization request.
caSigningDisabled :: Lens' CreateAuthorizer (Maybe Bool)
caSigningDisabled = lens _caSigningDisabled (\s a -> s {_caSigningDisabled = a})

-- | The name of the token key used to extract the token from the HTTP headers.
caTokenKeyName :: Lens' CreateAuthorizer (Maybe Text)
caTokenKeyName = lens _caTokenKeyName (\s a -> s {_caTokenKeyName = a})

-- | The authorizer name.
caAuthorizerName :: Lens' CreateAuthorizer Text
caAuthorizerName = lens _caAuthorizerName (\s a -> s {_caAuthorizerName = a})

-- | The ARN of the authorizer's Lambda function.
caAuthorizerFunctionARN :: Lens' CreateAuthorizer Text
caAuthorizerFunctionARN = lens _caAuthorizerFunctionARN (\s a -> s {_caAuthorizerFunctionARN = a})

instance AWSRequest CreateAuthorizer where
  type Rs CreateAuthorizer = CreateAuthorizerResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateAuthorizerResponse'
            <$> (x .?> "authorizerArn")
            <*> (x .?> "authorizerName")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateAuthorizer

instance NFData CreateAuthorizer

instance ToHeaders CreateAuthorizer where
  toHeaders = const mempty

instance ToJSON CreateAuthorizer where
  toJSON CreateAuthorizer' {..} =
    object
      ( catMaybes
          [ ("status" .=) <$> _caStatus,
            ("tokenSigningPublicKeys" .=)
              <$> _caTokenSigningPublicKeys,
            ("tags" .=) <$> _caTags,
            ("signingDisabled" .=) <$> _caSigningDisabled,
            ("tokenKeyName" .=) <$> _caTokenKeyName,
            Just
              ( "authorizerFunctionArn"
                  .= _caAuthorizerFunctionARN
              )
          ]
      )

instance ToPath CreateAuthorizer where
  toPath CreateAuthorizer' {..} =
    mconcat ["/authorizer/", toBS _caAuthorizerName]

instance ToQuery CreateAuthorizer where
  toQuery = const mempty

-- | /See:/ 'createAuthorizerResponse' smart constructor.
data CreateAuthorizerResponse = CreateAuthorizerResponse'
  { _carrsAuthorizerARN ::
      !(Maybe Text),
    _carrsAuthorizerName ::
      !(Maybe Text),
    _carrsResponseStatus ::
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

-- | Creates a value of 'CreateAuthorizerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carrsAuthorizerARN' - The authorizer ARN.
--
-- * 'carrsAuthorizerName' - The authorizer's name.
--
-- * 'carrsResponseStatus' - -- | The response status code.
createAuthorizerResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  CreateAuthorizerResponse
createAuthorizerResponse pResponseStatus_ =
  CreateAuthorizerResponse'
    { _carrsAuthorizerARN =
        Nothing,
      _carrsAuthorizerName = Nothing,
      _carrsResponseStatus = pResponseStatus_
    }

-- | The authorizer ARN.
carrsAuthorizerARN :: Lens' CreateAuthorizerResponse (Maybe Text)
carrsAuthorizerARN = lens _carrsAuthorizerARN (\s a -> s {_carrsAuthorizerARN = a})

-- | The authorizer's name.
carrsAuthorizerName :: Lens' CreateAuthorizerResponse (Maybe Text)
carrsAuthorizerName = lens _carrsAuthorizerName (\s a -> s {_carrsAuthorizerName = a})

-- | -- | The response status code.
carrsResponseStatus :: Lens' CreateAuthorizerResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

instance NFData CreateAuthorizerResponse
