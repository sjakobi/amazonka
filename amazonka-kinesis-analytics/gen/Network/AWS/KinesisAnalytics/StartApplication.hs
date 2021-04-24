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
-- Module      : Network.AWS.KinesisAnalytics.StartApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the specified Amazon Kinesis Analytics application. After creating an application, you must exclusively call this operation to start your application.
--
--
-- After the application starts, it begins consuming the input data, processes it, and writes the output to the configured destination.
--
-- The application status must be @READY@ for you to start an application. You can get the application status in the console or using the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication> operation.
--
-- After you start the application, you can stop the application from processing the input by calling the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_StopApplication.html StopApplication> operation.
--
-- This operation requires permissions to perform the @kinesisanalytics:StartApplication@ action.
module Network.AWS.KinesisAnalytics.StartApplication
  ( -- * Creating a Request
    startApplication,
    StartApplication,

    -- * Request Lenses
    sApplicationName,
    sInputConfigurations,

    -- * Destructuring the Response
    startApplicationResponse,
    StartApplicationResponse,

    -- * Response Lenses
    srsResponseStatus,
  )
where

import Network.AWS.KinesisAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'startApplication' smart constructor.
data StartApplication = StartApplication'
  { _sApplicationName ::
      !Text,
    _sInputConfigurations ::
      ![InputConfiguration]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StartApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sApplicationName' - Name of the application.
--
-- * 'sInputConfigurations' - Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.
startApplication ::
  -- | 'sApplicationName'
  Text ->
  StartApplication
startApplication pApplicationName_ =
  StartApplication'
    { _sApplicationName =
        pApplicationName_,
      _sInputConfigurations = mempty
    }

-- | Name of the application.
sApplicationName :: Lens' StartApplication Text
sApplicationName = lens _sApplicationName (\s a -> s {_sApplicationName = a})

-- | Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.
sInputConfigurations :: Lens' StartApplication [InputConfiguration]
sInputConfigurations = lens _sInputConfigurations (\s a -> s {_sInputConfigurations = a}) . _Coerce

instance AWSRequest StartApplication where
  type Rs StartApplication = StartApplicationResponse
  request = postJSON kinesisAnalytics
  response =
    receiveEmpty
      ( \s h x ->
          StartApplicationResponse' <$> (pure (fromEnum s))
      )

instance Hashable StartApplication

instance NFData StartApplication

instance ToHeaders StartApplication where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "KinesisAnalytics_20150814.StartApplication" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartApplication where
  toJSON StartApplication' {..} =
    object
      ( catMaybes
          [ Just ("ApplicationName" .= _sApplicationName),
            Just
              ("InputConfigurations" .= _sInputConfigurations)
          ]
      )

instance ToPath StartApplication where
  toPath = const "/"

instance ToQuery StartApplication where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'startApplicationResponse' smart constructor.
newtype StartApplicationResponse = StartApplicationResponse'
  { _srsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartApplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsResponseStatus' - -- | The response status code.
startApplicationResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StartApplicationResponse
startApplicationResponse pResponseStatus_ =
  StartApplicationResponse'
    { _srsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
srsResponseStatus :: Lens' StartApplicationResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StartApplicationResponse
