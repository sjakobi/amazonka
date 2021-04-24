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
-- Module      : Network.AWS.SageMaker.DescribeNotebookInstanceLifecycleConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a description of a notebook instance lifecycle configuration.
--
--
-- For information about notebook instance lifestyle configurations, see <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance> .
module Network.AWS.SageMaker.DescribeNotebookInstanceLifecycleConfig
  ( -- * Creating a Request
    describeNotebookInstanceLifecycleConfig,
    DescribeNotebookInstanceLifecycleConfig,

    -- * Request Lenses
    dNotebookInstanceLifecycleConfigName,

    -- * Destructuring the Response
    describeNotebookInstanceLifecycleConfigResponse,
    DescribeNotebookInstanceLifecycleConfigResponse,

    -- * Response Lenses
    dnilcrrsCreationTime,
    dnilcrrsNotebookInstanceLifecycleConfigARN,
    dnilcrrsNotebookInstanceLifecycleConfigName,
    dnilcrrsOnStart,
    dnilcrrsLastModifiedTime,
    dnilcrrsOnCreate,
    dnilcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeNotebookInstanceLifecycleConfig' smart constructor.
newtype DescribeNotebookInstanceLifecycleConfig = DescribeNotebookInstanceLifecycleConfig'
  { _dNotebookInstanceLifecycleConfigName ::
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

-- | Creates a value of 'DescribeNotebookInstanceLifecycleConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dNotebookInstanceLifecycleConfigName' - The name of the lifecycle configuration to describe.
describeNotebookInstanceLifecycleConfig ::
  -- | 'dNotebookInstanceLifecycleConfigName'
  Text ->
  DescribeNotebookInstanceLifecycleConfig
describeNotebookInstanceLifecycleConfig
  pNotebookInstanceLifecycleConfigName_ =
    DescribeNotebookInstanceLifecycleConfig'
      { _dNotebookInstanceLifecycleConfigName =
          pNotebookInstanceLifecycleConfigName_
      }

-- | The name of the lifecycle configuration to describe.
dNotebookInstanceLifecycleConfigName :: Lens' DescribeNotebookInstanceLifecycleConfig Text
dNotebookInstanceLifecycleConfigName = lens _dNotebookInstanceLifecycleConfigName (\s a -> s {_dNotebookInstanceLifecycleConfigName = a})

instance
  AWSRequest
    DescribeNotebookInstanceLifecycleConfig
  where
  type
    Rs DescribeNotebookInstanceLifecycleConfig =
      DescribeNotebookInstanceLifecycleConfigResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeNotebookInstanceLifecycleConfigResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "NotebookInstanceLifecycleConfigArn")
            <*> (x .?> "NotebookInstanceLifecycleConfigName")
            <*> (x .?> "OnStart" .!@ mempty)
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "OnCreate" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeNotebookInstanceLifecycleConfig

instance
  NFData
    DescribeNotebookInstanceLifecycleConfig

instance
  ToHeaders
    DescribeNotebookInstanceLifecycleConfig
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DescribeNotebookInstanceLifecycleConfig" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeNotebookInstanceLifecycleConfig
  where
  toJSON DescribeNotebookInstanceLifecycleConfig' {..} =
    object
      ( catMaybes
          [ Just
              ( "NotebookInstanceLifecycleConfigName"
                  .= _dNotebookInstanceLifecycleConfigName
              )
          ]
      )

instance
  ToPath
    DescribeNotebookInstanceLifecycleConfig
  where
  toPath = const "/"

instance
  ToQuery
    DescribeNotebookInstanceLifecycleConfig
  where
  toQuery = const mempty

-- | /See:/ 'describeNotebookInstanceLifecycleConfigResponse' smart constructor.
data DescribeNotebookInstanceLifecycleConfigResponse = DescribeNotebookInstanceLifecycleConfigResponse'
  { _dnilcrrsCreationTime ::
      !( Maybe
           POSIX
       ),
    _dnilcrrsNotebookInstanceLifecycleConfigARN ::
      !( Maybe
           Text
       ),
    _dnilcrrsNotebookInstanceLifecycleConfigName ::
      !( Maybe
           Text
       ),
    _dnilcrrsOnStart ::
      !( Maybe
           [NotebookInstanceLifecycleHook]
       ),
    _dnilcrrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _dnilcrrsOnCreate ::
      !( Maybe
           [NotebookInstanceLifecycleHook]
       ),
    _dnilcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeNotebookInstanceLifecycleConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnilcrrsCreationTime' - A timestamp that tells when the lifecycle configuration was created.
--
-- * 'dnilcrrsNotebookInstanceLifecycleConfigARN' - The Amazon Resource Name (ARN) of the lifecycle configuration.
--
-- * 'dnilcrrsNotebookInstanceLifecycleConfigName' - The name of the lifecycle configuration.
--
-- * 'dnilcrrsOnStart' - The shell script that runs every time you start a notebook instance, including when you create the notebook instance.
--
-- * 'dnilcrrsLastModifiedTime' - A timestamp that tells when the lifecycle configuration was last modified.
--
-- * 'dnilcrrsOnCreate' - The shell script that runs only once, when you create a notebook instance.
--
-- * 'dnilcrrsResponseStatus' - -- | The response status code.
describeNotebookInstanceLifecycleConfigResponse ::
  -- | 'dnilcrrsResponseStatus'
  Int ->
  DescribeNotebookInstanceLifecycleConfigResponse
describeNotebookInstanceLifecycleConfigResponse
  pResponseStatus_ =
    DescribeNotebookInstanceLifecycleConfigResponse'
      { _dnilcrrsCreationTime =
          Nothing,
        _dnilcrrsNotebookInstanceLifecycleConfigARN =
          Nothing,
        _dnilcrrsNotebookInstanceLifecycleConfigName =
          Nothing,
        _dnilcrrsOnStart = Nothing,
        _dnilcrrsLastModifiedTime =
          Nothing,
        _dnilcrrsOnCreate =
          Nothing,
        _dnilcrrsResponseStatus =
          pResponseStatus_
      }

-- | A timestamp that tells when the lifecycle configuration was created.
dnilcrrsCreationTime :: Lens' DescribeNotebookInstanceLifecycleConfigResponse (Maybe UTCTime)
dnilcrrsCreationTime = lens _dnilcrrsCreationTime (\s a -> s {_dnilcrrsCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the lifecycle configuration.
dnilcrrsNotebookInstanceLifecycleConfigARN :: Lens' DescribeNotebookInstanceLifecycleConfigResponse (Maybe Text)
dnilcrrsNotebookInstanceLifecycleConfigARN = lens _dnilcrrsNotebookInstanceLifecycleConfigARN (\s a -> s {_dnilcrrsNotebookInstanceLifecycleConfigARN = a})

-- | The name of the lifecycle configuration.
dnilcrrsNotebookInstanceLifecycleConfigName :: Lens' DescribeNotebookInstanceLifecycleConfigResponse (Maybe Text)
dnilcrrsNotebookInstanceLifecycleConfigName = lens _dnilcrrsNotebookInstanceLifecycleConfigName (\s a -> s {_dnilcrrsNotebookInstanceLifecycleConfigName = a})

-- | The shell script that runs every time you start a notebook instance, including when you create the notebook instance.
dnilcrrsOnStart :: Lens' DescribeNotebookInstanceLifecycleConfigResponse [NotebookInstanceLifecycleHook]
dnilcrrsOnStart = lens _dnilcrrsOnStart (\s a -> s {_dnilcrrsOnStart = a}) . _Default . _Coerce

-- | A timestamp that tells when the lifecycle configuration was last modified.
dnilcrrsLastModifiedTime :: Lens' DescribeNotebookInstanceLifecycleConfigResponse (Maybe UTCTime)
dnilcrrsLastModifiedTime = lens _dnilcrrsLastModifiedTime (\s a -> s {_dnilcrrsLastModifiedTime = a}) . mapping _Time

-- | The shell script that runs only once, when you create a notebook instance.
dnilcrrsOnCreate :: Lens' DescribeNotebookInstanceLifecycleConfigResponse [NotebookInstanceLifecycleHook]
dnilcrrsOnCreate = lens _dnilcrrsOnCreate (\s a -> s {_dnilcrrsOnCreate = a}) . _Default . _Coerce

-- | -- | The response status code.
dnilcrrsResponseStatus :: Lens' DescribeNotebookInstanceLifecycleConfigResponse Int
dnilcrrsResponseStatus = lens _dnilcrrsResponseStatus (\s a -> s {_dnilcrrsResponseStatus = a})

instance
  NFData
    DescribeNotebookInstanceLifecycleConfigResponse
