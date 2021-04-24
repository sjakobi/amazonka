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
-- Module      : Network.AWS.SageMaker.DescribeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an action.
module Network.AWS.SageMaker.DescribeAction
  ( -- * Creating a Request
    describeAction,
    DescribeAction,

    -- * Request Lenses
    dActionName,

    -- * Destructuring the Response
    describeActionResponse,
    DescribeActionResponse,

    -- * Response Lenses
    ddrsStatus,
    ddrsMetadataProperties,
    ddrsCreationTime,
    ddrsActionName,
    ddrsActionType,
    ddrsActionARN,
    ddrsSource,
    ddrsProperties,
    ddrsLastModifiedTime,
    ddrsDescription,
    ddrsCreatedBy,
    ddrsLastModifiedBy,
    ddrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeAction' smart constructor.
newtype DescribeAction = DescribeAction'
  { _dActionName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dActionName' - The name of the action to describe.
describeAction ::
  -- | 'dActionName'
  Text ->
  DescribeAction
describeAction pActionName_ =
  DescribeAction' {_dActionName = pActionName_}

-- | The name of the action to describe.
dActionName :: Lens' DescribeAction Text
dActionName = lens _dActionName (\s a -> s {_dActionName = a})

instance AWSRequest DescribeAction where
  type Rs DescribeAction = DescribeActionResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeActionResponse'
            <$> (x .?> "Status")
            <*> (x .?> "MetadataProperties")
            <*> (x .?> "CreationTime")
            <*> (x .?> "ActionName")
            <*> (x .?> "ActionType")
            <*> (x .?> "ActionArn")
            <*> (x .?> "Source")
            <*> (x .?> "Properties" .!@ mempty)
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "Description")
            <*> (x .?> "CreatedBy")
            <*> (x .?> "LastModifiedBy")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAction

instance NFData DescribeAction

instance ToHeaders DescribeAction where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeAction" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAction where
  toJSON DescribeAction' {..} =
    object
      (catMaybes [Just ("ActionName" .= _dActionName)])

instance ToPath DescribeAction where
  toPath = const "/"

instance ToQuery DescribeAction where
  toQuery = const mempty

-- | /See:/ 'describeActionResponse' smart constructor.
data DescribeActionResponse = DescribeActionResponse'
  { _ddrsStatus ::
      !(Maybe ActionStatus),
    _ddrsMetadataProperties ::
      !( Maybe
           MetadataProperties
       ),
    _ddrsCreationTime ::
      !(Maybe POSIX),
    _ddrsActionName ::
      !(Maybe Text),
    _ddrsActionType ::
      !(Maybe Text),
    _ddrsActionARN ::
      !(Maybe Text),
    _ddrsSource ::
      !(Maybe ActionSource),
    _ddrsProperties ::
      !(Maybe (Map Text Text)),
    _ddrsLastModifiedTime ::
      !(Maybe POSIX),
    _ddrsDescription ::
      !(Maybe Text),
    _ddrsCreatedBy ::
      !(Maybe UserContext),
    _ddrsLastModifiedBy ::
      !(Maybe UserContext),
    _ddrsResponseStatus ::
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

-- | Creates a value of 'DescribeActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrsStatus' - The status of the action.
--
-- * 'ddrsMetadataProperties' - Undocumented member.
--
-- * 'ddrsCreationTime' - When the action was created.
--
-- * 'ddrsActionName' - The name of the action.
--
-- * 'ddrsActionType' - The type of the action.
--
-- * 'ddrsActionARN' - The Amazon Resource Name (ARN) of the action.
--
-- * 'ddrsSource' - The source of the action.
--
-- * 'ddrsProperties' - A list of the action's properties.
--
-- * 'ddrsLastModifiedTime' - When the action was last modified.
--
-- * 'ddrsDescription' - The description of the action.
--
-- * 'ddrsCreatedBy' - Undocumented member.
--
-- * 'ddrsLastModifiedBy' - Undocumented member.
--
-- * 'ddrsResponseStatus' - -- | The response status code.
describeActionResponse ::
  -- | 'ddrsResponseStatus'
  Int ->
  DescribeActionResponse
describeActionResponse pResponseStatus_ =
  DescribeActionResponse'
    { _ddrsStatus = Nothing,
      _ddrsMetadataProperties = Nothing,
      _ddrsCreationTime = Nothing,
      _ddrsActionName = Nothing,
      _ddrsActionType = Nothing,
      _ddrsActionARN = Nothing,
      _ddrsSource = Nothing,
      _ddrsProperties = Nothing,
      _ddrsLastModifiedTime = Nothing,
      _ddrsDescription = Nothing,
      _ddrsCreatedBy = Nothing,
      _ddrsLastModifiedBy = Nothing,
      _ddrsResponseStatus = pResponseStatus_
    }

-- | The status of the action.
ddrsStatus :: Lens' DescribeActionResponse (Maybe ActionStatus)
ddrsStatus = lens _ddrsStatus (\s a -> s {_ddrsStatus = a})

-- | Undocumented member.
ddrsMetadataProperties :: Lens' DescribeActionResponse (Maybe MetadataProperties)
ddrsMetadataProperties = lens _ddrsMetadataProperties (\s a -> s {_ddrsMetadataProperties = a})

-- | When the action was created.
ddrsCreationTime :: Lens' DescribeActionResponse (Maybe UTCTime)
ddrsCreationTime = lens _ddrsCreationTime (\s a -> s {_ddrsCreationTime = a}) . mapping _Time

-- | The name of the action.
ddrsActionName :: Lens' DescribeActionResponse (Maybe Text)
ddrsActionName = lens _ddrsActionName (\s a -> s {_ddrsActionName = a})

-- | The type of the action.
ddrsActionType :: Lens' DescribeActionResponse (Maybe Text)
ddrsActionType = lens _ddrsActionType (\s a -> s {_ddrsActionType = a})

-- | The Amazon Resource Name (ARN) of the action.
ddrsActionARN :: Lens' DescribeActionResponse (Maybe Text)
ddrsActionARN = lens _ddrsActionARN (\s a -> s {_ddrsActionARN = a})

-- | The source of the action.
ddrsSource :: Lens' DescribeActionResponse (Maybe ActionSource)
ddrsSource = lens _ddrsSource (\s a -> s {_ddrsSource = a})

-- | A list of the action's properties.
ddrsProperties :: Lens' DescribeActionResponse (HashMap Text Text)
ddrsProperties = lens _ddrsProperties (\s a -> s {_ddrsProperties = a}) . _Default . _Map

-- | When the action was last modified.
ddrsLastModifiedTime :: Lens' DescribeActionResponse (Maybe UTCTime)
ddrsLastModifiedTime = lens _ddrsLastModifiedTime (\s a -> s {_ddrsLastModifiedTime = a}) . mapping _Time

-- | The description of the action.
ddrsDescription :: Lens' DescribeActionResponse (Maybe Text)
ddrsDescription = lens _ddrsDescription (\s a -> s {_ddrsDescription = a})

-- | Undocumented member.
ddrsCreatedBy :: Lens' DescribeActionResponse (Maybe UserContext)
ddrsCreatedBy = lens _ddrsCreatedBy (\s a -> s {_ddrsCreatedBy = a})

-- | Undocumented member.
ddrsLastModifiedBy :: Lens' DescribeActionResponse (Maybe UserContext)
ddrsLastModifiedBy = lens _ddrsLastModifiedBy (\s a -> s {_ddrsLastModifiedBy = a})

-- | -- | The response status code.
ddrsResponseStatus :: Lens' DescribeActionResponse Int
ddrsResponseStatus = lens _ddrsResponseStatus (\s a -> s {_ddrsResponseStatus = a})

instance NFData DescribeActionResponse
