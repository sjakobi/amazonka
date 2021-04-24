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
-- Module      : Network.AWS.KinesisVideo.UpdateStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates stream metadata, such as the device name and media type.
--
--
-- You must provide the stream name or the Amazon Resource Name (ARN) of the stream.
--
-- To make sure that you have the latest version of the stream before updating it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the @DescribeStream@ API.
--
-- @UpdateStream@ is an asynchronous operation, and takes time to complete.
module Network.AWS.KinesisVideo.UpdateStream
  ( -- * Creating a Request
    updateStream,
    UpdateStream,

    -- * Request Lenses
    usDeviceName,
    usMediaType,
    usStreamARN,
    usStreamName,
    usCurrentVersion,

    -- * Destructuring the Response
    updateStreamResponse,
    UpdateStreamResponse,

    -- * Response Lenses
    usrrsResponseStatus,
  )
where

import Network.AWS.KinesisVideo.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateStream' smart constructor.
data UpdateStream = UpdateStream'
  { _usDeviceName ::
      !(Maybe Text),
    _usMediaType :: !(Maybe Text),
    _usStreamARN :: !(Maybe Text),
    _usStreamName :: !(Maybe Text),
    _usCurrentVersion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateStream' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usDeviceName' - The name of the device that is writing to the stream.
--
-- * 'usMediaType' - The stream's media type. Use @MediaType@ to specify the type of content that the stream contains to the consumers of the stream. For more information about media types, see <http://www.iana.org/assignments/media-types/media-types.xhtml Media Types> . If you choose to specify the @MediaType@ , see <https://tools.ietf.org/html/rfc6838#section-4.2 Naming Requirements> . To play video on the console, you must specify the correct video type. For example, if the video in the stream is H.264, specify @video/h264@ as the @MediaType@ .
--
-- * 'usStreamARN' - The ARN of the stream whose metadata you want to update.
--
-- * 'usStreamName' - The name of the stream whose metadata you want to update. The stream name is an identifier for the stream, and must be unique for each account and region.
--
-- * 'usCurrentVersion' - The version of the stream whose metadata you want to update.
updateStream ::
  -- | 'usCurrentVersion'
  Text ->
  UpdateStream
updateStream pCurrentVersion_ =
  UpdateStream'
    { _usDeviceName = Nothing,
      _usMediaType = Nothing,
      _usStreamARN = Nothing,
      _usStreamName = Nothing,
      _usCurrentVersion = pCurrentVersion_
    }

-- | The name of the device that is writing to the stream.
usDeviceName :: Lens' UpdateStream (Maybe Text)
usDeviceName = lens _usDeviceName (\s a -> s {_usDeviceName = a})

-- | The stream's media type. Use @MediaType@ to specify the type of content that the stream contains to the consumers of the stream. For more information about media types, see <http://www.iana.org/assignments/media-types/media-types.xhtml Media Types> . If you choose to specify the @MediaType@ , see <https://tools.ietf.org/html/rfc6838#section-4.2 Naming Requirements> . To play video on the console, you must specify the correct video type. For example, if the video in the stream is H.264, specify @video/h264@ as the @MediaType@ .
usMediaType :: Lens' UpdateStream (Maybe Text)
usMediaType = lens _usMediaType (\s a -> s {_usMediaType = a})

-- | The ARN of the stream whose metadata you want to update.
usStreamARN :: Lens' UpdateStream (Maybe Text)
usStreamARN = lens _usStreamARN (\s a -> s {_usStreamARN = a})

-- | The name of the stream whose metadata you want to update. The stream name is an identifier for the stream, and must be unique for each account and region.
usStreamName :: Lens' UpdateStream (Maybe Text)
usStreamName = lens _usStreamName (\s a -> s {_usStreamName = a})

-- | The version of the stream whose metadata you want to update.
usCurrentVersion :: Lens' UpdateStream Text
usCurrentVersion = lens _usCurrentVersion (\s a -> s {_usCurrentVersion = a})

instance AWSRequest UpdateStream where
  type Rs UpdateStream = UpdateStreamResponse
  request = postJSON kinesisVideo
  response =
    receiveEmpty
      ( \s h x ->
          UpdateStreamResponse' <$> (pure (fromEnum s))
      )

instance Hashable UpdateStream

instance NFData UpdateStream

instance ToHeaders UpdateStream where
  toHeaders = const mempty

instance ToJSON UpdateStream where
  toJSON UpdateStream' {..} =
    object
      ( catMaybes
          [ ("DeviceName" .=) <$> _usDeviceName,
            ("MediaType" .=) <$> _usMediaType,
            ("StreamARN" .=) <$> _usStreamARN,
            ("StreamName" .=) <$> _usStreamName,
            Just ("CurrentVersion" .= _usCurrentVersion)
          ]
      )

instance ToPath UpdateStream where
  toPath = const "/updateStream"

instance ToQuery UpdateStream where
  toQuery = const mempty

-- | /See:/ 'updateStreamResponse' smart constructor.
newtype UpdateStreamResponse = UpdateStreamResponse'
  { _usrrsResponseStatus ::
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

-- | Creates a value of 'UpdateStreamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrrsResponseStatus' - -- | The response status code.
updateStreamResponse ::
  -- | 'usrrsResponseStatus'
  Int ->
  UpdateStreamResponse
updateStreamResponse pResponseStatus_ =
  UpdateStreamResponse'
    { _usrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
usrrsResponseStatus :: Lens' UpdateStreamResponse Int
usrrsResponseStatus = lens _usrrsResponseStatus (\s a -> s {_usrrsResponseStatus = a})

instance NFData UpdateStreamResponse
