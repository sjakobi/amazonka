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
-- Module      : Network.AWS.WorkMail.DescribeGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the data available for the group.
module Network.AWS.WorkMail.DescribeGroup
  ( -- * Creating a Request
    describeGroup,
    DescribeGroup,

    -- * Request Lenses
    desOrganizationId,
    desGroupId,

    -- * Destructuring the Response
    describeGroupResponse,
    DescribeGroupResponse,

    -- * Response Lenses
    desrsEnabledDate,
    desrsGroupId,
    desrsState,
    desrsName,
    desrsEmail,
    desrsDisabledDate,
    desrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'describeGroup' smart constructor.
data DescribeGroup = DescribeGroup'
  { _desOrganizationId ::
      !Text,
    _desGroupId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desOrganizationId' - The identifier for the organization under which the group exists.
--
-- * 'desGroupId' - The identifier for the group to be described.
describeGroup ::
  -- | 'desOrganizationId'
  Text ->
  -- | 'desGroupId'
  Text ->
  DescribeGroup
describeGroup pOrganizationId_ pGroupId_ =
  DescribeGroup'
    { _desOrganizationId =
        pOrganizationId_,
      _desGroupId = pGroupId_
    }

-- | The identifier for the organization under which the group exists.
desOrganizationId :: Lens' DescribeGroup Text
desOrganizationId = lens _desOrganizationId (\s a -> s {_desOrganizationId = a})

-- | The identifier for the group to be described.
desGroupId :: Lens' DescribeGroup Text
desGroupId = lens _desGroupId (\s a -> s {_desGroupId = a})

instance AWSRequest DescribeGroup where
  type Rs DescribeGroup = DescribeGroupResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          DescribeGroupResponse'
            <$> (x .?> "EnabledDate")
            <*> (x .?> "GroupId")
            <*> (x .?> "State")
            <*> (x .?> "Name")
            <*> (x .?> "Email")
            <*> (x .?> "DisabledDate")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeGroup

instance NFData DescribeGroup

instance ToHeaders DescribeGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.DescribeGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeGroup where
  toJSON DescribeGroup' {..} =
    object
      ( catMaybes
          [ Just ("OrganizationId" .= _desOrganizationId),
            Just ("GroupId" .= _desGroupId)
          ]
      )

instance ToPath DescribeGroup where
  toPath = const "/"

instance ToQuery DescribeGroup where
  toQuery = const mempty

-- | /See:/ 'describeGroupResponse' smart constructor.
data DescribeGroupResponse = DescribeGroupResponse'
  { _desrsEnabledDate ::
      !(Maybe POSIX),
    _desrsGroupId ::
      !(Maybe Text),
    _desrsState ::
      !(Maybe EntityState),
    _desrsName :: !(Maybe Text),
    _desrsEmail ::
      !(Maybe Text),
    _desrsDisabledDate ::
      !(Maybe POSIX),
    _desrsResponseStatus ::
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

-- | Creates a value of 'DescribeGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsEnabledDate' - The date and time when a user was registered to WorkMail, in UNIX epoch time format.
--
-- * 'desrsGroupId' - The identifier of the described group.
--
-- * 'desrsState' - The state of the user: enabled (registered to Amazon WorkMail) or disabled (deregistered or never registered to WorkMail).
--
-- * 'desrsName' - The name of the described group.
--
-- * 'desrsEmail' - The email of the described group.
--
-- * 'desrsDisabledDate' - The date and time when a user was deregistered from WorkMail, in UNIX epoch time format.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeGroupResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeGroupResponse
describeGroupResponse pResponseStatus_ =
  DescribeGroupResponse'
    { _desrsEnabledDate = Nothing,
      _desrsGroupId = Nothing,
      _desrsState = Nothing,
      _desrsName = Nothing,
      _desrsEmail = Nothing,
      _desrsDisabledDate = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The date and time when a user was registered to WorkMail, in UNIX epoch time format.
desrsEnabledDate :: Lens' DescribeGroupResponse (Maybe UTCTime)
desrsEnabledDate = lens _desrsEnabledDate (\s a -> s {_desrsEnabledDate = a}) . mapping _Time

-- | The identifier of the described group.
desrsGroupId :: Lens' DescribeGroupResponse (Maybe Text)
desrsGroupId = lens _desrsGroupId (\s a -> s {_desrsGroupId = a})

-- | The state of the user: enabled (registered to Amazon WorkMail) or disabled (deregistered or never registered to WorkMail).
desrsState :: Lens' DescribeGroupResponse (Maybe EntityState)
desrsState = lens _desrsState (\s a -> s {_desrsState = a})

-- | The name of the described group.
desrsName :: Lens' DescribeGroupResponse (Maybe Text)
desrsName = lens _desrsName (\s a -> s {_desrsName = a})

-- | The email of the described group.
desrsEmail :: Lens' DescribeGroupResponse (Maybe Text)
desrsEmail = lens _desrsEmail (\s a -> s {_desrsEmail = a})

-- | The date and time when a user was deregistered from WorkMail, in UNIX epoch time format.
desrsDisabledDate :: Lens' DescribeGroupResponse (Maybe UTCTime)
desrsDisabledDate = lens _desrsDisabledDate (\s a -> s {_desrsDisabledDate = a}) . mapping _Time

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeGroupResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeGroupResponse
