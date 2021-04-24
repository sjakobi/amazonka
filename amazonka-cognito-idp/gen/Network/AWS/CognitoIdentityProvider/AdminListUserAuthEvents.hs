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
-- Module      : Network.AWS.CognitoIdentityProvider.AdminListUserAuthEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CognitoIdentityProvider.AdminListUserAuthEvents
  ( -- * Creating a Request
    adminListUserAuthEvents,
    AdminListUserAuthEvents,

    -- * Request Lenses
    aluaeNextToken,
    aluaeMaxResults,
    aluaeUserPoolId,
    aluaeUsername,

    -- * Destructuring the Response
    adminListUserAuthEventsResponse,
    AdminListUserAuthEventsResponse,

    -- * Response Lenses
    aluaerrsNextToken,
    aluaerrsAuthEvents,
    aluaerrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'adminListUserAuthEvents' smart constructor.
data AdminListUserAuthEvents = AdminListUserAuthEvents'
  { _aluaeNextToken ::
      !(Maybe Text),
    _aluaeMaxResults ::
      !(Maybe Nat),
    _aluaeUserPoolId ::
      !Text,
    _aluaeUsername ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AdminListUserAuthEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aluaeNextToken' - A pagination token.
--
-- * 'aluaeMaxResults' - The maximum number of authentication events to return.
--
-- * 'aluaeUserPoolId' - The user pool ID.
--
-- * 'aluaeUsername' - The user pool username or an alias.
adminListUserAuthEvents ::
  -- | 'aluaeUserPoolId'
  Text ->
  -- | 'aluaeUsername'
  Text ->
  AdminListUserAuthEvents
adminListUserAuthEvents pUserPoolId_ pUsername_ =
  AdminListUserAuthEvents'
    { _aluaeNextToken = Nothing,
      _aluaeMaxResults = Nothing,
      _aluaeUserPoolId = pUserPoolId_,
      _aluaeUsername = _Sensitive # pUsername_
    }

-- | A pagination token.
aluaeNextToken :: Lens' AdminListUserAuthEvents (Maybe Text)
aluaeNextToken = lens _aluaeNextToken (\s a -> s {_aluaeNextToken = a})

-- | The maximum number of authentication events to return.
aluaeMaxResults :: Lens' AdminListUserAuthEvents (Maybe Natural)
aluaeMaxResults = lens _aluaeMaxResults (\s a -> s {_aluaeMaxResults = a}) . mapping _Nat

-- | The user pool ID.
aluaeUserPoolId :: Lens' AdminListUserAuthEvents Text
aluaeUserPoolId = lens _aluaeUserPoolId (\s a -> s {_aluaeUserPoolId = a})

-- | The user pool username or an alias.
aluaeUsername :: Lens' AdminListUserAuthEvents Text
aluaeUsername = lens _aluaeUsername (\s a -> s {_aluaeUsername = a}) . _Sensitive

instance AWSPager AdminListUserAuthEvents where
  page rq rs
    | stop (rs ^. aluaerrsNextToken) = Nothing
    | stop (rs ^. aluaerrsAuthEvents) = Nothing
    | otherwise =
      Just $ rq & aluaeNextToken .~ rs ^. aluaerrsNextToken

instance AWSRequest AdminListUserAuthEvents where
  type
    Rs AdminListUserAuthEvents =
      AdminListUserAuthEventsResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          AdminListUserAuthEventsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AuthEvents" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable AdminListUserAuthEvents

instance NFData AdminListUserAuthEvents

instance ToHeaders AdminListUserAuthEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.AdminListUserAuthEvents" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AdminListUserAuthEvents where
  toJSON AdminListUserAuthEvents' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _aluaeNextToken,
            ("MaxResults" .=) <$> _aluaeMaxResults,
            Just ("UserPoolId" .= _aluaeUserPoolId),
            Just ("Username" .= _aluaeUsername)
          ]
      )

instance ToPath AdminListUserAuthEvents where
  toPath = const "/"

instance ToQuery AdminListUserAuthEvents where
  toQuery = const mempty

-- | /See:/ 'adminListUserAuthEventsResponse' smart constructor.
data AdminListUserAuthEventsResponse = AdminListUserAuthEventsResponse'
  { _aluaerrsNextToken ::
      !( Maybe
           Text
       ),
    _aluaerrsAuthEvents ::
      !( Maybe
           [AuthEventType]
       ),
    _aluaerrsResponseStatus ::
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

-- | Creates a value of 'AdminListUserAuthEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aluaerrsNextToken' - A pagination token.
--
-- * 'aluaerrsAuthEvents' - The response object. It includes the @EventID@ , @EventType@ , @CreationDate@ , @EventRisk@ , and @EventResponse@ .
--
-- * 'aluaerrsResponseStatus' - -- | The response status code.
adminListUserAuthEventsResponse ::
  -- | 'aluaerrsResponseStatus'
  Int ->
  AdminListUserAuthEventsResponse
adminListUserAuthEventsResponse pResponseStatus_ =
  AdminListUserAuthEventsResponse'
    { _aluaerrsNextToken =
        Nothing,
      _aluaerrsAuthEvents = Nothing,
      _aluaerrsResponseStatus = pResponseStatus_
    }

-- | A pagination token.
aluaerrsNextToken :: Lens' AdminListUserAuthEventsResponse (Maybe Text)
aluaerrsNextToken = lens _aluaerrsNextToken (\s a -> s {_aluaerrsNextToken = a})

-- | The response object. It includes the @EventID@ , @EventType@ , @CreationDate@ , @EventRisk@ , and @EventResponse@ .
aluaerrsAuthEvents :: Lens' AdminListUserAuthEventsResponse [AuthEventType]
aluaerrsAuthEvents = lens _aluaerrsAuthEvents (\s a -> s {_aluaerrsAuthEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
aluaerrsResponseStatus :: Lens' AdminListUserAuthEventsResponse Int
aluaerrsResponseStatus = lens _aluaerrsResponseStatus (\s a -> s {_aluaerrsResponseStatus = a})

instance NFData AdminListUserAuthEventsResponse
