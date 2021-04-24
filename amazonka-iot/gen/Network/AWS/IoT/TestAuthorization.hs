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
-- Module      : Network.AWS.IoT.TestAuthorization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests if a specified principal is authorized to perform an AWS IoT action on a specified resource. Use this to test and debug the authorization behavior of devices that connect to the AWS IoT device gateway.
module Network.AWS.IoT.TestAuthorization
  ( -- * Creating a Request
    testAuthorization,
    TestAuthorization,

    -- * Request Lenses
    taClientId,
    taCognitoIdentityPoolId,
    taPrincipal,
    taPolicyNamesToSkip,
    taPolicyNamesToAdd,
    taAuthInfos,

    -- * Destructuring the Response
    testAuthorizationResponse,
    TestAuthorizationResponse,

    -- * Response Lenses
    tarrsAuthResults,
    tarrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'testAuthorization' smart constructor.
data TestAuthorization = TestAuthorization'
  { _taClientId ::
      !(Maybe Text),
    _taCognitoIdentityPoolId ::
      !(Maybe Text),
    _taPrincipal :: !(Maybe Text),
    _taPolicyNamesToSkip ::
      !(Maybe [Text]),
    _taPolicyNamesToAdd ::
      !(Maybe [Text]),
    _taAuthInfos :: !(List1 AuthInfo)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestAuthorization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'taClientId' - The MQTT client ID.
--
-- * 'taCognitoIdentityPoolId' - The Cognito identity pool ID.
--
-- * 'taPrincipal' - The principal. Valid principals are CertificateArn (arn:aws:iot:/region/ :/accountId/ :cert//certificateId/ ), thingGroupArn (arn:aws:iot:/region/ :/accountId/ :thinggroup//groupName/ ) and CognitoId (/region/ :/id/ ).
--
-- * 'taPolicyNamesToSkip' - When testing custom authorization, the policies specified here are treated as if they are not attached to the principal being authorized.
--
-- * 'taPolicyNamesToAdd' - When testing custom authorization, the policies specified here are treated as if they are attached to the principal being authorized.
--
-- * 'taAuthInfos' - A list of authorization info objects. Simulating authorization will create a response for each @authInfo@ object in the list.
testAuthorization ::
  -- | 'taAuthInfos'
  NonEmpty AuthInfo ->
  TestAuthorization
testAuthorization pAuthInfos_ =
  TestAuthorization'
    { _taClientId = Nothing,
      _taCognitoIdentityPoolId = Nothing,
      _taPrincipal = Nothing,
      _taPolicyNamesToSkip = Nothing,
      _taPolicyNamesToAdd = Nothing,
      _taAuthInfos = _List1 # pAuthInfos_
    }

-- | The MQTT client ID.
taClientId :: Lens' TestAuthorization (Maybe Text)
taClientId = lens _taClientId (\s a -> s {_taClientId = a})

-- | The Cognito identity pool ID.
taCognitoIdentityPoolId :: Lens' TestAuthorization (Maybe Text)
taCognitoIdentityPoolId = lens _taCognitoIdentityPoolId (\s a -> s {_taCognitoIdentityPoolId = a})

-- | The principal. Valid principals are CertificateArn (arn:aws:iot:/region/ :/accountId/ :cert//certificateId/ ), thingGroupArn (arn:aws:iot:/region/ :/accountId/ :thinggroup//groupName/ ) and CognitoId (/region/ :/id/ ).
taPrincipal :: Lens' TestAuthorization (Maybe Text)
taPrincipal = lens _taPrincipal (\s a -> s {_taPrincipal = a})

-- | When testing custom authorization, the policies specified here are treated as if they are not attached to the principal being authorized.
taPolicyNamesToSkip :: Lens' TestAuthorization [Text]
taPolicyNamesToSkip = lens _taPolicyNamesToSkip (\s a -> s {_taPolicyNamesToSkip = a}) . _Default . _Coerce

-- | When testing custom authorization, the policies specified here are treated as if they are attached to the principal being authorized.
taPolicyNamesToAdd :: Lens' TestAuthorization [Text]
taPolicyNamesToAdd = lens _taPolicyNamesToAdd (\s a -> s {_taPolicyNamesToAdd = a}) . _Default . _Coerce

-- | A list of authorization info objects. Simulating authorization will create a response for each @authInfo@ object in the list.
taAuthInfos :: Lens' TestAuthorization (NonEmpty AuthInfo)
taAuthInfos = lens _taAuthInfos (\s a -> s {_taAuthInfos = a}) . _List1

instance AWSRequest TestAuthorization where
  type Rs TestAuthorization = TestAuthorizationResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          TestAuthorizationResponse'
            <$> (x .?> "authResults" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable TestAuthorization

instance NFData TestAuthorization

instance ToHeaders TestAuthorization where
  toHeaders = const mempty

instance ToJSON TestAuthorization where
  toJSON TestAuthorization' {..} =
    object
      ( catMaybes
          [ ("cognitoIdentityPoolId" .=)
              <$> _taCognitoIdentityPoolId,
            ("principal" .=) <$> _taPrincipal,
            ("policyNamesToSkip" .=) <$> _taPolicyNamesToSkip,
            ("policyNamesToAdd" .=) <$> _taPolicyNamesToAdd,
            Just ("authInfos" .= _taAuthInfos)
          ]
      )

instance ToPath TestAuthorization where
  toPath = const "/test-authorization"

instance ToQuery TestAuthorization where
  toQuery TestAuthorization' {..} =
    mconcat ["clientId" =: _taClientId]

-- | /See:/ 'testAuthorizationResponse' smart constructor.
data TestAuthorizationResponse = TestAuthorizationResponse'
  { _tarrsAuthResults ::
      !( Maybe
           [AuthResult]
       ),
    _tarrsResponseStatus ::
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

-- | Creates a value of 'TestAuthorizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tarrsAuthResults' - The authentication results.
--
-- * 'tarrsResponseStatus' - -- | The response status code.
testAuthorizationResponse ::
  -- | 'tarrsResponseStatus'
  Int ->
  TestAuthorizationResponse
testAuthorizationResponse pResponseStatus_ =
  TestAuthorizationResponse'
    { _tarrsAuthResults =
        Nothing,
      _tarrsResponseStatus = pResponseStatus_
    }

-- | The authentication results.
tarrsAuthResults :: Lens' TestAuthorizationResponse [AuthResult]
tarrsAuthResults = lens _tarrsAuthResults (\s a -> s {_tarrsAuthResults = a}) . _Default . _Coerce

-- | -- | The response status code.
tarrsResponseStatus :: Lens' TestAuthorizationResponse Int
tarrsResponseStatus = lens _tarrsResponseStatus (\s a -> s {_tarrsResponseStatus = a})

instance NFData TestAuthorizationResponse
