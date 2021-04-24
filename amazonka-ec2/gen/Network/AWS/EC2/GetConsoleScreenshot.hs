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
-- Module      : Network.AWS.EC2.GetConsoleScreenshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a JPG-format screenshot of a running instance to help with troubleshooting.
--
--
-- The returned content is Base64-encoded.
module Network.AWS.EC2.GetConsoleScreenshot
  ( -- * Creating a Request
    getConsoleScreenshot,
    GetConsoleScreenshot,

    -- * Request Lenses
    gcsDryRun,
    gcsWakeUp,
    gcsInstanceId,

    -- * Destructuring the Response
    getConsoleScreenshotResponse,
    GetConsoleScreenshotResponse,

    -- * Response Lenses
    gcsrrsInstanceId,
    gcsrrsImageData,
    gcsrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getConsoleScreenshot' smart constructor.
data GetConsoleScreenshot = GetConsoleScreenshot'
  { _gcsDryRun ::
      !(Maybe Bool),
    _gcsWakeUp :: !(Maybe Bool),
    _gcsInstanceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetConsoleScreenshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gcsWakeUp' - When set to @true@ , acts as keystroke input and wakes up an instance that's in standby or "sleep" mode.
--
-- * 'gcsInstanceId' - The ID of the instance.
getConsoleScreenshot ::
  -- | 'gcsInstanceId'
  Text ->
  GetConsoleScreenshot
getConsoleScreenshot pInstanceId_ =
  GetConsoleScreenshot'
    { _gcsDryRun = Nothing,
      _gcsWakeUp = Nothing,
      _gcsInstanceId = pInstanceId_
    }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gcsDryRun :: Lens' GetConsoleScreenshot (Maybe Bool)
gcsDryRun = lens _gcsDryRun (\s a -> s {_gcsDryRun = a})

-- | When set to @true@ , acts as keystroke input and wakes up an instance that's in standby or "sleep" mode.
gcsWakeUp :: Lens' GetConsoleScreenshot (Maybe Bool)
gcsWakeUp = lens _gcsWakeUp (\s a -> s {_gcsWakeUp = a})

-- | The ID of the instance.
gcsInstanceId :: Lens' GetConsoleScreenshot Text
gcsInstanceId = lens _gcsInstanceId (\s a -> s {_gcsInstanceId = a})

instance AWSRequest GetConsoleScreenshot where
  type
    Rs GetConsoleScreenshot =
      GetConsoleScreenshotResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetConsoleScreenshotResponse'
            <$> (x .@? "instanceId")
            <*> (x .@? "imageData")
            <*> (pure (fromEnum s))
      )

instance Hashable GetConsoleScreenshot

instance NFData GetConsoleScreenshot

instance ToHeaders GetConsoleScreenshot where
  toHeaders = const mempty

instance ToPath GetConsoleScreenshot where
  toPath = const "/"

instance ToQuery GetConsoleScreenshot where
  toQuery GetConsoleScreenshot' {..} =
    mconcat
      [ "Action" =: ("GetConsoleScreenshot" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _gcsDryRun,
        "WakeUp" =: _gcsWakeUp,
        "InstanceId" =: _gcsInstanceId
      ]

-- | /See:/ 'getConsoleScreenshotResponse' smart constructor.
data GetConsoleScreenshotResponse = GetConsoleScreenshotResponse'
  { _gcsrrsInstanceId ::
      !(Maybe Text),
    _gcsrrsImageData ::
      !(Maybe Text),
    _gcsrrsResponseStatus ::
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

-- | Creates a value of 'GetConsoleScreenshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcsrrsInstanceId' - The ID of the instance.
--
-- * 'gcsrrsImageData' - The data that comprises the image.
--
-- * 'gcsrrsResponseStatus' - -- | The response status code.
getConsoleScreenshotResponse ::
  -- | 'gcsrrsResponseStatus'
  Int ->
  GetConsoleScreenshotResponse
getConsoleScreenshotResponse pResponseStatus_ =
  GetConsoleScreenshotResponse'
    { _gcsrrsInstanceId =
        Nothing,
      _gcsrrsImageData = Nothing,
      _gcsrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the instance.
gcsrrsInstanceId :: Lens' GetConsoleScreenshotResponse (Maybe Text)
gcsrrsInstanceId = lens _gcsrrsInstanceId (\s a -> s {_gcsrrsInstanceId = a})

-- | The data that comprises the image.
gcsrrsImageData :: Lens' GetConsoleScreenshotResponse (Maybe Text)
gcsrrsImageData = lens _gcsrrsImageData (\s a -> s {_gcsrrsImageData = a})

-- | -- | The response status code.
gcsrrsResponseStatus :: Lens' GetConsoleScreenshotResponse Int
gcsrrsResponseStatus = lens _gcsrrsResponseStatus (\s a -> s {_gcsrrsResponseStatus = a})

instance NFData GetConsoleScreenshotResponse
