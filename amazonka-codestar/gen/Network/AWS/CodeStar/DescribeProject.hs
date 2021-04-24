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
-- Module      : Network.AWS.CodeStar.DescribeProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a project and its resources.
module Network.AWS.CodeStar.DescribeProject
  ( -- * Creating a Request
    describeProject,
    DescribeProject,

    -- * Request Lenses
    dId,

    -- * Destructuring the Response
    describeProjectResponse,
    DescribeProjectResponse,

    -- * Response Lenses
    desrsStatus,
    desrsCreatedTimeStamp,
    desrsStackId,
    desrsId,
    desrsArn,
    desrsName,
    desrsDescription,
    desrsClientRequestToken,
    desrsProjectTemplateId,
    desrsResponseStatus,
  )
where

import Network.AWS.CodeStar.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeProject' smart constructor.
newtype DescribeProject = DescribeProject'
  { _dId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dId' - The ID of the project.
describeProject ::
  -- | 'dId'
  Text ->
  DescribeProject
describeProject pId_ = DescribeProject' {_dId = pId_}

-- | The ID of the project.
dId :: Lens' DescribeProject Text
dId = lens _dId (\s a -> s {_dId = a})

instance AWSRequest DescribeProject where
  type Rs DescribeProject = DescribeProjectResponse
  request = postJSON codeStar
  response =
    receiveJSON
      ( \s h x ->
          DescribeProjectResponse'
            <$> (x .?> "status")
            <*> (x .?> "createdTimeStamp")
            <*> (x .?> "stackId")
            <*> (x .?> "id")
            <*> (x .?> "arn")
            <*> (x .?> "name")
            <*> (x .?> "description")
            <*> (x .?> "clientRequestToken")
            <*> (x .?> "projectTemplateId")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeProject

instance NFData DescribeProject

instance ToHeaders DescribeProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeStar_20170419.DescribeProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeProject where
  toJSON DescribeProject' {..} =
    object (catMaybes [Just ("id" .= _dId)])

instance ToPath DescribeProject where
  toPath = const "/"

instance ToQuery DescribeProject where
  toQuery = const mempty

-- | /See:/ 'describeProjectResponse' smart constructor.
data DescribeProjectResponse = DescribeProjectResponse'
  { _desrsStatus ::
      !(Maybe ProjectStatus),
    _desrsCreatedTimeStamp ::
      !(Maybe POSIX),
    _desrsStackId ::
      !(Maybe Text),
    _desrsId ::
      !(Maybe Text),
    _desrsArn ::
      !(Maybe Text),
    _desrsName ::
      !( Maybe
           (Sensitive Text)
       ),
    _desrsDescription ::
      !( Maybe
           (Sensitive Text)
       ),
    _desrsClientRequestToken ::
      !(Maybe Text),
    _desrsProjectTemplateId ::
      !(Maybe Text),
    _desrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desrsStatus' - The project creation or deletion status.
--
-- * 'desrsCreatedTimeStamp' - The date and time the project was created, in timestamp format.
--
-- * 'desrsStackId' - The ID of the primary stack in AWS CloudFormation used to generate resources for the project.
--
-- * 'desrsId' - The ID of the project.
--
-- * 'desrsArn' - The Amazon Resource Name (ARN) for the project.
--
-- * 'desrsName' - The display name for the project.
--
-- * 'desrsDescription' - The description of the project, if any.
--
-- * 'desrsClientRequestToken' - A user- or system-generated token that identifies the entity that requested project creation.
--
-- * 'desrsProjectTemplateId' - The ID for the AWS CodeStar project template used to create the project.
--
-- * 'desrsResponseStatus' - -- | The response status code.
describeProjectResponse ::
  -- | 'desrsResponseStatus'
  Int ->
  DescribeProjectResponse
describeProjectResponse pResponseStatus_ =
  DescribeProjectResponse'
    { _desrsStatus = Nothing,
      _desrsCreatedTimeStamp = Nothing,
      _desrsStackId = Nothing,
      _desrsId = Nothing,
      _desrsArn = Nothing,
      _desrsName = Nothing,
      _desrsDescription = Nothing,
      _desrsClientRequestToken = Nothing,
      _desrsProjectTemplateId = Nothing,
      _desrsResponseStatus = pResponseStatus_
    }

-- | The project creation or deletion status.
desrsStatus :: Lens' DescribeProjectResponse (Maybe ProjectStatus)
desrsStatus = lens _desrsStatus (\s a -> s {_desrsStatus = a})

-- | The date and time the project was created, in timestamp format.
desrsCreatedTimeStamp :: Lens' DescribeProjectResponse (Maybe UTCTime)
desrsCreatedTimeStamp = lens _desrsCreatedTimeStamp (\s a -> s {_desrsCreatedTimeStamp = a}) . mapping _Time

-- | The ID of the primary stack in AWS CloudFormation used to generate resources for the project.
desrsStackId :: Lens' DescribeProjectResponse (Maybe Text)
desrsStackId = lens _desrsStackId (\s a -> s {_desrsStackId = a})

-- | The ID of the project.
desrsId :: Lens' DescribeProjectResponse (Maybe Text)
desrsId = lens _desrsId (\s a -> s {_desrsId = a})

-- | The Amazon Resource Name (ARN) for the project.
desrsArn :: Lens' DescribeProjectResponse (Maybe Text)
desrsArn = lens _desrsArn (\s a -> s {_desrsArn = a})

-- | The display name for the project.
desrsName :: Lens' DescribeProjectResponse (Maybe Text)
desrsName = lens _desrsName (\s a -> s {_desrsName = a}) . mapping _Sensitive

-- | The description of the project, if any.
desrsDescription :: Lens' DescribeProjectResponse (Maybe Text)
desrsDescription = lens _desrsDescription (\s a -> s {_desrsDescription = a}) . mapping _Sensitive

-- | A user- or system-generated token that identifies the entity that requested project creation.
desrsClientRequestToken :: Lens' DescribeProjectResponse (Maybe Text)
desrsClientRequestToken = lens _desrsClientRequestToken (\s a -> s {_desrsClientRequestToken = a})

-- | The ID for the AWS CodeStar project template used to create the project.
desrsProjectTemplateId :: Lens' DescribeProjectResponse (Maybe Text)
desrsProjectTemplateId = lens _desrsProjectTemplateId (\s a -> s {_desrsProjectTemplateId = a})

-- | -- | The response status code.
desrsResponseStatus :: Lens' DescribeProjectResponse Int
desrsResponseStatus = lens _desrsResponseStatus (\s a -> s {_desrsResponseStatus = a})

instance NFData DescribeProjectResponse
