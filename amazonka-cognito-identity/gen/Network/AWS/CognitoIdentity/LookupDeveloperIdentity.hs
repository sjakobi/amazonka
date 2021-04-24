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
-- Module      : Network.AWS.CognitoIdentity.LookupDeveloperIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the @IdentityID@ associated with a @DeveloperUserIdentifier@ or the list of @DeveloperUserIdentifier@ values associated with an @IdentityId@ for an existing identity. Either @IdentityID@ or @DeveloperUserIdentifier@ must not be null. If you supply only one of these values, the other value will be searched in the database and returned as a part of the response. If you supply both, @DeveloperUserIdentifier@ will be matched against @IdentityID@ . If the values are verified against the database, the response returns both values and is the same as the request. Otherwise a @ResourceConflictException@ is thrown.
--
--
-- @LookupDeveloperIdentity@ is intended for low-throughput control plane operations: for example, to enable customer service to locate an identity ID by username. If you are using it for higher-volume operations such as user authentication, your requests are likely to be throttled. 'GetOpenIdTokenForDeveloperIdentity' is a better option for higher-volume operations for user authentication.
--
-- You must use AWS Developer credentials to call this API.
module Network.AWS.CognitoIdentity.LookupDeveloperIdentity
  ( -- * Creating a Request
    lookupDeveloperIdentity,
    LookupDeveloperIdentity,

    -- * Request Lenses
    ldiNextToken,
    ldiMaxResults,
    ldiDeveloperUserIdentifier,
    ldiIdentityId,
    ldiIdentityPoolId,

    -- * Destructuring the Response
    lookupDeveloperIdentityResponse,
    LookupDeveloperIdentityResponse,

    -- * Response Lenses
    ldirrsNextToken,
    ldirrsDeveloperUserIdentifierList,
    ldirrsIdentityId,
    ldirrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Input to the @LookupDeveloperIdentityInput@ action.
--
--
--
-- /See:/ 'lookupDeveloperIdentity' smart constructor.
data LookupDeveloperIdentity = LookupDeveloperIdentity'
  { _ldiNextToken ::
      !(Maybe Text),
    _ldiMaxResults ::
      !(Maybe Nat),
    _ldiDeveloperUserIdentifier ::
      !(Maybe Text),
    _ldiIdentityId ::
      !(Maybe Text),
    _ldiIdentityPoolId ::
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

-- | Creates a value of 'LookupDeveloperIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldiNextToken' - A pagination token. The first call you make will have @NextToken@ set to null. After that the service will return @NextToken@ values as needed. For example, let's say you make a request with @MaxResults@ set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.
--
-- * 'ldiMaxResults' - The maximum number of identities to return.
--
-- * 'ldiDeveloperUserIdentifier' - A unique ID used by your backend authentication process to identify a user. Typically, a developer identity provider would issue many developer user identifiers, in keeping with the number of users.
--
-- * 'ldiIdentityId' - A unique identifier in the format REGION:GUID.
--
-- * 'ldiIdentityPoolId' - An identity pool ID in the format REGION:GUID.
lookupDeveloperIdentity ::
  -- | 'ldiIdentityPoolId'
  Text ->
  LookupDeveloperIdentity
lookupDeveloperIdentity pIdentityPoolId_ =
  LookupDeveloperIdentity'
    { _ldiNextToken = Nothing,
      _ldiMaxResults = Nothing,
      _ldiDeveloperUserIdentifier = Nothing,
      _ldiIdentityId = Nothing,
      _ldiIdentityPoolId = pIdentityPoolId_
    }

-- | A pagination token. The first call you make will have @NextToken@ set to null. After that the service will return @NextToken@ values as needed. For example, let's say you make a request with @MaxResults@ set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.
ldiNextToken :: Lens' LookupDeveloperIdentity (Maybe Text)
ldiNextToken = lens _ldiNextToken (\s a -> s {_ldiNextToken = a})

-- | The maximum number of identities to return.
ldiMaxResults :: Lens' LookupDeveloperIdentity (Maybe Natural)
ldiMaxResults = lens _ldiMaxResults (\s a -> s {_ldiMaxResults = a}) . mapping _Nat

-- | A unique ID used by your backend authentication process to identify a user. Typically, a developer identity provider would issue many developer user identifiers, in keeping with the number of users.
ldiDeveloperUserIdentifier :: Lens' LookupDeveloperIdentity (Maybe Text)
ldiDeveloperUserIdentifier = lens _ldiDeveloperUserIdentifier (\s a -> s {_ldiDeveloperUserIdentifier = a})

-- | A unique identifier in the format REGION:GUID.
ldiIdentityId :: Lens' LookupDeveloperIdentity (Maybe Text)
ldiIdentityId = lens _ldiIdentityId (\s a -> s {_ldiIdentityId = a})

-- | An identity pool ID in the format REGION:GUID.
ldiIdentityPoolId :: Lens' LookupDeveloperIdentity Text
ldiIdentityPoolId = lens _ldiIdentityPoolId (\s a -> s {_ldiIdentityPoolId = a})

instance AWSRequest LookupDeveloperIdentity where
  type
    Rs LookupDeveloperIdentity =
      LookupDeveloperIdentityResponse
  request = postJSON cognitoIdentity
  response =
    receiveJSON
      ( \s h x ->
          LookupDeveloperIdentityResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "DeveloperUserIdentifierList" .!@ mempty)
            <*> (x .?> "IdentityId")
            <*> (pure (fromEnum s))
      )

instance Hashable LookupDeveloperIdentity

instance NFData LookupDeveloperIdentity

instance ToHeaders LookupDeveloperIdentity where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityService.LookupDeveloperIdentity" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON LookupDeveloperIdentity where
  toJSON LookupDeveloperIdentity' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ldiNextToken,
            ("MaxResults" .=) <$> _ldiMaxResults,
            ("DeveloperUserIdentifier" .=)
              <$> _ldiDeveloperUserIdentifier,
            ("IdentityId" .=) <$> _ldiIdentityId,
            Just ("IdentityPoolId" .= _ldiIdentityPoolId)
          ]
      )

instance ToPath LookupDeveloperIdentity where
  toPath = const "/"

instance ToQuery LookupDeveloperIdentity where
  toQuery = const mempty

-- | Returned in response to a successful @LookupDeveloperIdentity@ action.
--
--
--
-- /See:/ 'lookupDeveloperIdentityResponse' smart constructor.
data LookupDeveloperIdentityResponse = LookupDeveloperIdentityResponse'
  { _ldirrsNextToken ::
      !( Maybe
           Text
       ),
    _ldirrsDeveloperUserIdentifierList ::
      !( Maybe
           [Text]
       ),
    _ldirrsIdentityId ::
      !( Maybe
           Text
       ),
    _ldirrsResponseStatus ::
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

-- | Creates a value of 'LookupDeveloperIdentityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldirrsNextToken' - A pagination token. The first call you make will have @NextToken@ set to null. After that the service will return @NextToken@ values as needed. For example, let's say you make a request with @MaxResults@ set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.
--
-- * 'ldirrsDeveloperUserIdentifierList' - This is the list of developer user identifiers associated with an identity ID. Cognito supports the association of multiple developer user identifiers with an identity ID.
--
-- * 'ldirrsIdentityId' - A unique identifier in the format REGION:GUID.
--
-- * 'ldirrsResponseStatus' - -- | The response status code.
lookupDeveloperIdentityResponse ::
  -- | 'ldirrsResponseStatus'
  Int ->
  LookupDeveloperIdentityResponse
lookupDeveloperIdentityResponse pResponseStatus_ =
  LookupDeveloperIdentityResponse'
    { _ldirrsNextToken =
        Nothing,
      _ldirrsDeveloperUserIdentifierList =
        Nothing,
      _ldirrsIdentityId = Nothing,
      _ldirrsResponseStatus = pResponseStatus_
    }

-- | A pagination token. The first call you make will have @NextToken@ set to null. After that the service will return @NextToken@ values as needed. For example, let's say you make a request with @MaxResults@ set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.
ldirrsNextToken :: Lens' LookupDeveloperIdentityResponse (Maybe Text)
ldirrsNextToken = lens _ldirrsNextToken (\s a -> s {_ldirrsNextToken = a})

-- | This is the list of developer user identifiers associated with an identity ID. Cognito supports the association of multiple developer user identifiers with an identity ID.
ldirrsDeveloperUserIdentifierList :: Lens' LookupDeveloperIdentityResponse [Text]
ldirrsDeveloperUserIdentifierList = lens _ldirrsDeveloperUserIdentifierList (\s a -> s {_ldirrsDeveloperUserIdentifierList = a}) . _Default . _Coerce

-- | A unique identifier in the format REGION:GUID.
ldirrsIdentityId :: Lens' LookupDeveloperIdentityResponse (Maybe Text)
ldirrsIdentityId = lens _ldirrsIdentityId (\s a -> s {_ldirrsIdentityId = a})

-- | -- | The response status code.
ldirrsResponseStatus :: Lens' LookupDeveloperIdentityResponse Int
ldirrsResponseStatus = lens _ldirrsResponseStatus (\s a -> s {_ldirrsResponseStatus = a})

instance NFData LookupDeveloperIdentityResponse
