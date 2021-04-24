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
-- Module      : Network.AWS.WorkMail.DescribeUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information regarding the user.
module Network.AWS.WorkMail.DescribeUser
  ( -- * Creating a Request
    describeUser,
    DescribeUser,

    -- * Request Lenses
    duOrganizationId,
    duUserId,

    -- * Destructuring the Response
    describeUserResponse,
    DescribeUserResponse,

    -- * Response Lenses
    durrsEnabledDate,
    durrsUserRole,
    durrsState,
    durrsName,
    durrsEmail,
    durrsUserId,
    durrsDisabledDate,
    durrsDisplayName,
    durrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'describeUser' smart constructor.
data DescribeUser = DescribeUser'
  { _duOrganizationId ::
      !Text,
    _duUserId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duOrganizationId' - The identifier for the organization under which the user exists.
--
-- * 'duUserId' - The identifier for the user to be described.
describeUser ::
  -- | 'duOrganizationId'
  Text ->
  -- | 'duUserId'
  Text ->
  DescribeUser
describeUser pOrganizationId_ pUserId_ =
  DescribeUser'
    { _duOrganizationId = pOrganizationId_,
      _duUserId = pUserId_
    }

-- | The identifier for the organization under which the user exists.
duOrganizationId :: Lens' DescribeUser Text
duOrganizationId = lens _duOrganizationId (\s a -> s {_duOrganizationId = a})

-- | The identifier for the user to be described.
duUserId :: Lens' DescribeUser Text
duUserId = lens _duUserId (\s a -> s {_duUserId = a})

instance AWSRequest DescribeUser where
  type Rs DescribeUser = DescribeUserResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          DescribeUserResponse'
            <$> (x .?> "EnabledDate")
            <*> (x .?> "UserRole")
            <*> (x .?> "State")
            <*> (x .?> "Name")
            <*> (x .?> "Email")
            <*> (x .?> "UserId")
            <*> (x .?> "DisabledDate")
            <*> (x .?> "DisplayName")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeUser

instance NFData DescribeUser

instance ToHeaders DescribeUser where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.DescribeUser" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeUser where
  toJSON DescribeUser' {..} =
    object
      ( catMaybes
          [ Just ("OrganizationId" .= _duOrganizationId),
            Just ("UserId" .= _duUserId)
          ]
      )

instance ToPath DescribeUser where
  toPath = const "/"

instance ToQuery DescribeUser where
  toQuery = const mempty

-- | /See:/ 'describeUserResponse' smart constructor.
data DescribeUserResponse = DescribeUserResponse'
  { _durrsEnabledDate ::
      !(Maybe POSIX),
    _durrsUserRole ::
      !(Maybe UserRole),
    _durrsState ::
      !(Maybe EntityState),
    _durrsName :: !(Maybe Text),
    _durrsEmail :: !(Maybe Text),
    _durrsUserId :: !(Maybe Text),
    _durrsDisabledDate ::
      !(Maybe POSIX),
    _durrsDisplayName ::
      !(Maybe Text),
    _durrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'durrsEnabledDate' - The date and time at which the user was enabled for Amazon WorkMail usage, in UNIX epoch time format.
--
-- * 'durrsUserRole' - In certain cases, other entities are modeled as users. If interoperability is enabled, resources are imported into Amazon WorkMail as users. Because different WorkMail organizations rely on different directory types, administrators can distinguish between an unregistered user (account is disabled and has a user role) and the directory administrators. The values are USER, RESOURCE, and SYSTEM_USER.
--
-- * 'durrsState' - The state of a user: enabled (registered to Amazon WorkMail) or disabled (deregistered or never registered to WorkMail).
--
-- * 'durrsName' - The name for the user.
--
-- * 'durrsEmail' - The email of the user.
--
-- * 'durrsUserId' - The identifier for the described user.
--
-- * 'durrsDisabledDate' - The date and time at which the user was disabled for Amazon WorkMail usage, in UNIX epoch time format.
--
-- * 'durrsDisplayName' - The display name of the user.
--
-- * 'durrsResponseStatus' - -- | The response status code.
describeUserResponse ::
  -- | 'durrsResponseStatus'
  Int ->
  DescribeUserResponse
describeUserResponse pResponseStatus_ =
  DescribeUserResponse'
    { _durrsEnabledDate = Nothing,
      _durrsUserRole = Nothing,
      _durrsState = Nothing,
      _durrsName = Nothing,
      _durrsEmail = Nothing,
      _durrsUserId = Nothing,
      _durrsDisabledDate = Nothing,
      _durrsDisplayName = Nothing,
      _durrsResponseStatus = pResponseStatus_
    }

-- | The date and time at which the user was enabled for Amazon WorkMail usage, in UNIX epoch time format.
durrsEnabledDate :: Lens' DescribeUserResponse (Maybe UTCTime)
durrsEnabledDate = lens _durrsEnabledDate (\s a -> s {_durrsEnabledDate = a}) . mapping _Time

-- | In certain cases, other entities are modeled as users. If interoperability is enabled, resources are imported into Amazon WorkMail as users. Because different WorkMail organizations rely on different directory types, administrators can distinguish between an unregistered user (account is disabled and has a user role) and the directory administrators. The values are USER, RESOURCE, and SYSTEM_USER.
durrsUserRole :: Lens' DescribeUserResponse (Maybe UserRole)
durrsUserRole = lens _durrsUserRole (\s a -> s {_durrsUserRole = a})

-- | The state of a user: enabled (registered to Amazon WorkMail) or disabled (deregistered or never registered to WorkMail).
durrsState :: Lens' DescribeUserResponse (Maybe EntityState)
durrsState = lens _durrsState (\s a -> s {_durrsState = a})

-- | The name for the user.
durrsName :: Lens' DescribeUserResponse (Maybe Text)
durrsName = lens _durrsName (\s a -> s {_durrsName = a})

-- | The email of the user.
durrsEmail :: Lens' DescribeUserResponse (Maybe Text)
durrsEmail = lens _durrsEmail (\s a -> s {_durrsEmail = a})

-- | The identifier for the described user.
durrsUserId :: Lens' DescribeUserResponse (Maybe Text)
durrsUserId = lens _durrsUserId (\s a -> s {_durrsUserId = a})

-- | The date and time at which the user was disabled for Amazon WorkMail usage, in UNIX epoch time format.
durrsDisabledDate :: Lens' DescribeUserResponse (Maybe UTCTime)
durrsDisabledDate = lens _durrsDisabledDate (\s a -> s {_durrsDisabledDate = a}) . mapping _Time

-- | The display name of the user.
durrsDisplayName :: Lens' DescribeUserResponse (Maybe Text)
durrsDisplayName = lens _durrsDisplayName (\s a -> s {_durrsDisplayName = a})

-- | -- | The response status code.
durrsResponseStatus :: Lens' DescribeUserResponse Int
durrsResponseStatus = lens _durrsResponseStatus (\s a -> s {_durrsResponseStatus = a})

instance NFData DescribeUserResponse
