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
-- Module      : Network.AWS.SageMaker.DescribeContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a context.
module Network.AWS.SageMaker.DescribeContext
  ( -- * Creating a Request
    describeContext,
    DescribeContext,

    -- * Request Lenses
    dContextName,

    -- * Destructuring the Response
    describeContextResponse,
    DescribeContextResponse,

    -- * Response Lenses
    dcrcrsContextType,
    dcrcrsCreationTime,
    dcrcrsContextName,
    dcrcrsSource,
    dcrcrsProperties,
    dcrcrsLastModifiedTime,
    dcrcrsDescription,
    dcrcrsCreatedBy,
    dcrcrsLastModifiedBy,
    dcrcrsContextARN,
    dcrcrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeContext' smart constructor.
newtype DescribeContext = DescribeContext'
  { _dContextName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeContext' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dContextName' - The name of the context to describe.
describeContext ::
  -- | 'dContextName'
  Text ->
  DescribeContext
describeContext pContextName_ =
  DescribeContext' {_dContextName = pContextName_}

-- | The name of the context to describe.
dContextName :: Lens' DescribeContext Text
dContextName = lens _dContextName (\s a -> s {_dContextName = a})

instance AWSRequest DescribeContext where
  type Rs DescribeContext = DescribeContextResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeContextResponse'
            <$> (x .?> "ContextType")
            <*> (x .?> "CreationTime")
            <*> (x .?> "ContextName")
            <*> (x .?> "Source")
            <*> (x .?> "Properties" .!@ mempty)
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "Description")
            <*> (x .?> "CreatedBy")
            <*> (x .?> "LastModifiedBy")
            <*> (x .?> "ContextArn")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeContext

instance NFData DescribeContext

instance ToHeaders DescribeContext where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeContext" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeContext where
  toJSON DescribeContext' {..} =
    object
      (catMaybes [Just ("ContextName" .= _dContextName)])

instance ToPath DescribeContext where
  toPath = const "/"

instance ToQuery DescribeContext where
  toQuery = const mempty

-- | /See:/ 'describeContextResponse' smart constructor.
data DescribeContextResponse = DescribeContextResponse'
  { _dcrcrsContextType ::
      !(Maybe Text),
    _dcrcrsCreationTime ::
      !(Maybe POSIX),
    _dcrcrsContextName ::
      !(Maybe Text),
    _dcrcrsSource ::
      !(Maybe ContextSource),
    _dcrcrsProperties ::
      !( Maybe
           (Map Text Text)
       ),
    _dcrcrsLastModifiedTime ::
      !(Maybe POSIX),
    _dcrcrsDescription ::
      !(Maybe Text),
    _dcrcrsCreatedBy ::
      !(Maybe UserContext),
    _dcrcrsLastModifiedBy ::
      !(Maybe UserContext),
    _dcrcrsContextARN ::
      !(Maybe Text),
    _dcrcrsResponseStatus ::
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

-- | Creates a value of 'DescribeContextResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrcrsContextType' - The type of the context.
--
-- * 'dcrcrsCreationTime' - When the context was created.
--
-- * 'dcrcrsContextName' - The name of the context.
--
-- * 'dcrcrsSource' - The source of the context.
--
-- * 'dcrcrsProperties' - A list of the context's properties.
--
-- * 'dcrcrsLastModifiedTime' - When the context was last modified.
--
-- * 'dcrcrsDescription' - The description of the context.
--
-- * 'dcrcrsCreatedBy' - Undocumented member.
--
-- * 'dcrcrsLastModifiedBy' - Undocumented member.
--
-- * 'dcrcrsContextARN' - The Amazon Resource Name (ARN) of the context.
--
-- * 'dcrcrsResponseStatus' - -- | The response status code.
describeContextResponse ::
  -- | 'dcrcrsResponseStatus'
  Int ->
  DescribeContextResponse
describeContextResponse pResponseStatus_ =
  DescribeContextResponse'
    { _dcrcrsContextType =
        Nothing,
      _dcrcrsCreationTime = Nothing,
      _dcrcrsContextName = Nothing,
      _dcrcrsSource = Nothing,
      _dcrcrsProperties = Nothing,
      _dcrcrsLastModifiedTime = Nothing,
      _dcrcrsDescription = Nothing,
      _dcrcrsCreatedBy = Nothing,
      _dcrcrsLastModifiedBy = Nothing,
      _dcrcrsContextARN = Nothing,
      _dcrcrsResponseStatus = pResponseStatus_
    }

-- | The type of the context.
dcrcrsContextType :: Lens' DescribeContextResponse (Maybe Text)
dcrcrsContextType = lens _dcrcrsContextType (\s a -> s {_dcrcrsContextType = a})

-- | When the context was created.
dcrcrsCreationTime :: Lens' DescribeContextResponse (Maybe UTCTime)
dcrcrsCreationTime = lens _dcrcrsCreationTime (\s a -> s {_dcrcrsCreationTime = a}) . mapping _Time

-- | The name of the context.
dcrcrsContextName :: Lens' DescribeContextResponse (Maybe Text)
dcrcrsContextName = lens _dcrcrsContextName (\s a -> s {_dcrcrsContextName = a})

-- | The source of the context.
dcrcrsSource :: Lens' DescribeContextResponse (Maybe ContextSource)
dcrcrsSource = lens _dcrcrsSource (\s a -> s {_dcrcrsSource = a})

-- | A list of the context's properties.
dcrcrsProperties :: Lens' DescribeContextResponse (HashMap Text Text)
dcrcrsProperties = lens _dcrcrsProperties (\s a -> s {_dcrcrsProperties = a}) . _Default . _Map

-- | When the context was last modified.
dcrcrsLastModifiedTime :: Lens' DescribeContextResponse (Maybe UTCTime)
dcrcrsLastModifiedTime = lens _dcrcrsLastModifiedTime (\s a -> s {_dcrcrsLastModifiedTime = a}) . mapping _Time

-- | The description of the context.
dcrcrsDescription :: Lens' DescribeContextResponse (Maybe Text)
dcrcrsDescription = lens _dcrcrsDescription (\s a -> s {_dcrcrsDescription = a})

-- | Undocumented member.
dcrcrsCreatedBy :: Lens' DescribeContextResponse (Maybe UserContext)
dcrcrsCreatedBy = lens _dcrcrsCreatedBy (\s a -> s {_dcrcrsCreatedBy = a})

-- | Undocumented member.
dcrcrsLastModifiedBy :: Lens' DescribeContextResponse (Maybe UserContext)
dcrcrsLastModifiedBy = lens _dcrcrsLastModifiedBy (\s a -> s {_dcrcrsLastModifiedBy = a})

-- | The Amazon Resource Name (ARN) of the context.
dcrcrsContextARN :: Lens' DescribeContextResponse (Maybe Text)
dcrcrsContextARN = lens _dcrcrsContextARN (\s a -> s {_dcrcrsContextARN = a})

-- | -- | The response status code.
dcrcrsResponseStatus :: Lens' DescribeContextResponse Int
dcrcrsResponseStatus = lens _dcrcrsResponseStatus (\s a -> s {_dcrcrsResponseStatus = a})

instance NFData DescribeContextResponse
