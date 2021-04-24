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
-- Module      : Network.AWS.SageMaker.DescribeAppImageConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an AppImageConfig.
module Network.AWS.SageMaker.DescribeAppImageConfig
  ( -- * Creating a Request
    describeAppImageConfig,
    DescribeAppImageConfig,

    -- * Request Lenses
    daicAppImageConfigName,

    -- * Destructuring the Response
    describeAppImageConfigResponse,
    DescribeAppImageConfigResponse,

    -- * Response Lenses
    daicrrsCreationTime,
    daicrrsAppImageConfigARN,
    daicrrsKernelGatewayImageConfig,
    daicrrsAppImageConfigName,
    daicrrsLastModifiedTime,
    daicrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeAppImageConfig' smart constructor.
newtype DescribeAppImageConfig = DescribeAppImageConfig'
  { _daicAppImageConfigName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAppImageConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daicAppImageConfigName' - The name of the AppImageConfig to describe.
describeAppImageConfig ::
  -- | 'daicAppImageConfigName'
  Text ->
  DescribeAppImageConfig
describeAppImageConfig pAppImageConfigName_ =
  DescribeAppImageConfig'
    { _daicAppImageConfigName =
        pAppImageConfigName_
    }

-- | The name of the AppImageConfig to describe.
daicAppImageConfigName :: Lens' DescribeAppImageConfig Text
daicAppImageConfigName = lens _daicAppImageConfigName (\s a -> s {_daicAppImageConfigName = a})

instance AWSRequest DescribeAppImageConfig where
  type
    Rs DescribeAppImageConfig =
      DescribeAppImageConfigResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeAppImageConfigResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "AppImageConfigArn")
            <*> (x .?> "KernelGatewayImageConfig")
            <*> (x .?> "AppImageConfigName")
            <*> (x .?> "LastModifiedTime")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAppImageConfig

instance NFData DescribeAppImageConfig

instance ToHeaders DescribeAppImageConfig where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DescribeAppImageConfig" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAppImageConfig where
  toJSON DescribeAppImageConfig' {..} =
    object
      ( catMaybes
          [ Just
              ("AppImageConfigName" .= _daicAppImageConfigName)
          ]
      )

instance ToPath DescribeAppImageConfig where
  toPath = const "/"

instance ToQuery DescribeAppImageConfig where
  toQuery = const mempty

-- | /See:/ 'describeAppImageConfigResponse' smart constructor.
data DescribeAppImageConfigResponse = DescribeAppImageConfigResponse'
  { _daicrrsCreationTime ::
      !( Maybe
           POSIX
       ),
    _daicrrsAppImageConfigARN ::
      !( Maybe
           Text
       ),
    _daicrrsKernelGatewayImageConfig ::
      !( Maybe
           KernelGatewayImageConfig
       ),
    _daicrrsAppImageConfigName ::
      !( Maybe
           Text
       ),
    _daicrrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _daicrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAppImageConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daicrrsCreationTime' - When the AppImageConfig was created.
--
-- * 'daicrrsAppImageConfigARN' - The Amazon Resource Name (ARN) of the AppImageConfig.
--
-- * 'daicrrsKernelGatewayImageConfig' - The configuration of a KernelGateway app.
--
-- * 'daicrrsAppImageConfigName' - The name of the AppImageConfig.
--
-- * 'daicrrsLastModifiedTime' - When the AppImageConfig was last modified.
--
-- * 'daicrrsResponseStatus' - -- | The response status code.
describeAppImageConfigResponse ::
  -- | 'daicrrsResponseStatus'
  Int ->
  DescribeAppImageConfigResponse
describeAppImageConfigResponse pResponseStatus_ =
  DescribeAppImageConfigResponse'
    { _daicrrsCreationTime =
        Nothing,
      _daicrrsAppImageConfigARN = Nothing,
      _daicrrsKernelGatewayImageConfig = Nothing,
      _daicrrsAppImageConfigName = Nothing,
      _daicrrsLastModifiedTime = Nothing,
      _daicrrsResponseStatus = pResponseStatus_
    }

-- | When the AppImageConfig was created.
daicrrsCreationTime :: Lens' DescribeAppImageConfigResponse (Maybe UTCTime)
daicrrsCreationTime = lens _daicrrsCreationTime (\s a -> s {_daicrrsCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the AppImageConfig.
daicrrsAppImageConfigARN :: Lens' DescribeAppImageConfigResponse (Maybe Text)
daicrrsAppImageConfigARN = lens _daicrrsAppImageConfigARN (\s a -> s {_daicrrsAppImageConfigARN = a})

-- | The configuration of a KernelGateway app.
daicrrsKernelGatewayImageConfig :: Lens' DescribeAppImageConfigResponse (Maybe KernelGatewayImageConfig)
daicrrsKernelGatewayImageConfig = lens _daicrrsKernelGatewayImageConfig (\s a -> s {_daicrrsKernelGatewayImageConfig = a})

-- | The name of the AppImageConfig.
daicrrsAppImageConfigName :: Lens' DescribeAppImageConfigResponse (Maybe Text)
daicrrsAppImageConfigName = lens _daicrrsAppImageConfigName (\s a -> s {_daicrrsAppImageConfigName = a})

-- | When the AppImageConfig was last modified.
daicrrsLastModifiedTime :: Lens' DescribeAppImageConfigResponse (Maybe UTCTime)
daicrrsLastModifiedTime = lens _daicrrsLastModifiedTime (\s a -> s {_daicrrsLastModifiedTime = a}) . mapping _Time

-- | -- | The response status code.
daicrrsResponseStatus :: Lens' DescribeAppImageConfigResponse Int
daicrrsResponseStatus = lens _daicrrsResponseStatus (\s a -> s {_daicrrsResponseStatus = a})

instance NFData DescribeAppImageConfigResponse
