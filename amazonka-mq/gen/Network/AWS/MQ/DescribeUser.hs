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
-- Module      : Network.AWS.MQ.DescribeUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about an ActiveMQ user.
module Network.AWS.MQ.DescribeUser
  ( -- * Creating a Request
    describeUser,
    DescribeUser,

    -- * Request Lenses
    duUsername,
    duBrokerId,

    -- * Destructuring the Response
    describeUserResponse,
    DescribeUserResponse,

    -- * Response Lenses
    durrsGroups,
    durrsBrokerId,
    durrsPending,
    durrsUsername,
    durrsConsoleAccess,
    durrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeUser' smart constructor.
data DescribeUser = DescribeUser'
  { _duUsername ::
      !Text,
    _duBrokerId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duUsername' - The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
--
-- * 'duBrokerId' - The unique ID that Amazon MQ generates for the broker.
describeUser ::
  -- | 'duUsername'
  Text ->
  -- | 'duBrokerId'
  Text ->
  DescribeUser
describeUser pUsername_ pBrokerId_ =
  DescribeUser'
    { _duUsername = pUsername_,
      _duBrokerId = pBrokerId_
    }

-- | The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
duUsername :: Lens' DescribeUser Text
duUsername = lens _duUsername (\s a -> s {_duUsername = a})

-- | The unique ID that Amazon MQ generates for the broker.
duBrokerId :: Lens' DescribeUser Text
duBrokerId = lens _duBrokerId (\s a -> s {_duBrokerId = a})

instance AWSRequest DescribeUser where
  type Rs DescribeUser = DescribeUserResponse
  request = get mq
  response =
    receiveJSON
      ( \s h x ->
          DescribeUserResponse'
            <$> (x .?> "groups" .!@ mempty)
            <*> (x .?> "brokerId")
            <*> (x .?> "pending")
            <*> (x .?> "username")
            <*> (x .?> "consoleAccess")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeUser

instance NFData DescribeUser

instance ToHeaders DescribeUser where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeUser where
  toPath DescribeUser' {..} =
    mconcat
      [ "/v1/brokers/",
        toBS _duBrokerId,
        "/users/",
        toBS _duUsername
      ]

instance ToQuery DescribeUser where
  toQuery = const mempty

-- | /See:/ 'describeUserResponse' smart constructor.
data DescribeUserResponse = DescribeUserResponse'
  { _durrsGroups ::
      !(Maybe [Text]),
    _durrsBrokerId ::
      !(Maybe Text),
    _durrsPending ::
      !(Maybe UserPendingChanges),
    _durrsUsername ::
      !(Maybe Text),
    _durrsConsoleAccess ::
      !(Maybe Bool),
    _durrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeUserResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'durrsGroups' - The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
--
-- * 'durrsBrokerId' - Required. The unique ID that Amazon MQ generates for the broker.
--
-- * 'durrsPending' - The status of the changes pending for the ActiveMQ user.
--
-- * 'durrsUsername' - Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
--
-- * 'durrsConsoleAccess' - Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
--
-- * 'durrsResponseStatus' - -- | The response status code.
describeUserResponse ::
  -- | 'durrsResponseStatus'
  Int ->
  DescribeUserResponse
describeUserResponse pResponseStatus_ =
  DescribeUserResponse'
    { _durrsGroups = Nothing,
      _durrsBrokerId = Nothing,
      _durrsPending = Nothing,
      _durrsUsername = Nothing,
      _durrsConsoleAccess = Nothing,
      _durrsResponseStatus = pResponseStatus_
    }

-- | The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
durrsGroups :: Lens' DescribeUserResponse [Text]
durrsGroups = lens _durrsGroups (\s a -> s {_durrsGroups = a}) . _Default . _Coerce

-- | Required. The unique ID that Amazon MQ generates for the broker.
durrsBrokerId :: Lens' DescribeUserResponse (Maybe Text)
durrsBrokerId = lens _durrsBrokerId (\s a -> s {_durrsBrokerId = a})

-- | The status of the changes pending for the ActiveMQ user.
durrsPending :: Lens' DescribeUserResponse (Maybe UserPendingChanges)
durrsPending = lens _durrsPending (\s a -> s {_durrsPending = a})

-- | Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.
durrsUsername :: Lens' DescribeUserResponse (Maybe Text)
durrsUsername = lens _durrsUsername (\s a -> s {_durrsUsername = a})

-- | Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
durrsConsoleAccess :: Lens' DescribeUserResponse (Maybe Bool)
durrsConsoleAccess = lens _durrsConsoleAccess (\s a -> s {_durrsConsoleAccess = a})

-- | -- | The response status code.
durrsResponseStatus :: Lens' DescribeUserResponse Int
durrsResponseStatus = lens _durrsResponseStatus (\s a -> s {_durrsResponseStatus = a})

instance NFData DescribeUserResponse
