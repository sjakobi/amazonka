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
-- Module      : Network.AWS.KinesisAnalytics.StopApplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the application from processing input data. You can stop an application only if it is in the running state. You can use the <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication> operation to find the application state. After the application is stopped, Amazon Kinesis Analytics stops reading data from the input, the application stops processing data, and there is no output written to the destination.
--
--
-- This operation requires permissions to perform the @kinesisanalytics:StopApplication@ action.
module Network.AWS.KinesisAnalytics.StopApplication
  ( -- * Creating a Request
    stopApplication,
    StopApplication,

    -- * Request Lenses
    saApplicationName,

    -- * Destructuring the Response
    stopApplicationResponse,
    StopApplicationResponse,

    -- * Response Lenses
    sarrsResponseStatus,
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
-- /See:/ 'stopApplication' smart constructor.
newtype StopApplication = StopApplication'
  { _saApplicationName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopApplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saApplicationName' - Name of the running application to stop.
stopApplication ::
  -- | 'saApplicationName'
  Text ->
  StopApplication
stopApplication pApplicationName_ =
  StopApplication'
    { _saApplicationName =
        pApplicationName_
    }

-- | Name of the running application to stop.
saApplicationName :: Lens' StopApplication Text
saApplicationName = lens _saApplicationName (\s a -> s {_saApplicationName = a})

instance AWSRequest StopApplication where
  type Rs StopApplication = StopApplicationResponse
  request = postJSON kinesisAnalytics
  response =
    receiveEmpty
      ( \s h x ->
          StopApplicationResponse' <$> (pure (fromEnum s))
      )

instance Hashable StopApplication

instance NFData StopApplication

instance ToHeaders StopApplication where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "KinesisAnalytics_20150814.StopApplication" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopApplication where
  toJSON StopApplication' {..} =
    object
      ( catMaybes
          [Just ("ApplicationName" .= _saApplicationName)]
      )

instance ToPath StopApplication where
  toPath = const "/"

instance ToQuery StopApplication where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'stopApplicationResponse' smart constructor.
newtype StopApplicationResponse = StopApplicationResponse'
  { _sarrsResponseStatus ::
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

-- | Creates a value of 'StopApplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sarrsResponseStatus' - -- | The response status code.
stopApplicationResponse ::
  -- | 'sarrsResponseStatus'
  Int ->
  StopApplicationResponse
stopApplicationResponse pResponseStatus_ =
  StopApplicationResponse'
    { _sarrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
sarrsResponseStatus :: Lens' StopApplicationResponse Int
sarrsResponseStatus = lens _sarrsResponseStatus (\s a -> s {_sarrsResponseStatus = a})

instance NFData StopApplicationResponse
