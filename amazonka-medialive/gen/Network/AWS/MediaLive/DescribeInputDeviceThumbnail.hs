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
-- Module      : Network.AWS.MediaLive.DescribeInputDeviceThumbnail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the latest thumbnail data for the input device.
module Network.AWS.MediaLive.DescribeInputDeviceThumbnail
  ( -- * Creating a Request
    describeInputDeviceThumbnail,
    DescribeInputDeviceThumbnail,

    -- * Request Lenses
    didtInputDeviceId,
    didtAccept,

    -- * Destructuring the Response
    describeInputDeviceThumbnailResponse,
    DescribeInputDeviceThumbnailResponse,

    -- * Response Lenses
    didtrrsETag,
    didtrrsContentType,
    didtrrsContentLength,
    didtrrsLastModified,
    didtrrsResponseStatus,
    didtrrsBody,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for DescribeInputDeviceThumbnailRequest
--
-- /See:/ 'describeInputDeviceThumbnail' smart constructor.
data DescribeInputDeviceThumbnail = DescribeInputDeviceThumbnail'
  { _didtInputDeviceId ::
      !Text,
    _didtAccept ::
      !AcceptHeader
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInputDeviceThumbnail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'didtInputDeviceId' - The unique ID of this input device. For example, hd-123456789abcdef.
--
-- * 'didtAccept' - The HTTP Accept header. Indicates the requested type for the thumbnail.
describeInputDeviceThumbnail ::
  -- | 'didtInputDeviceId'
  Text ->
  -- | 'didtAccept'
  AcceptHeader ->
  DescribeInputDeviceThumbnail
describeInputDeviceThumbnail pInputDeviceId_ pAccept_ =
  DescribeInputDeviceThumbnail'
    { _didtInputDeviceId =
        pInputDeviceId_,
      _didtAccept = pAccept_
    }

-- | The unique ID of this input device. For example, hd-123456789abcdef.
didtInputDeviceId :: Lens' DescribeInputDeviceThumbnail Text
didtInputDeviceId = lens _didtInputDeviceId (\s a -> s {_didtInputDeviceId = a})

-- | The HTTP Accept header. Indicates the requested type for the thumbnail.
didtAccept :: Lens' DescribeInputDeviceThumbnail AcceptHeader
didtAccept = lens _didtAccept (\s a -> s {_didtAccept = a})

instance AWSRequest DescribeInputDeviceThumbnail where
  type
    Rs DescribeInputDeviceThumbnail =
      DescribeInputDeviceThumbnailResponse
  request = get mediaLive
  response =
    receiveBody
      ( \s h x ->
          DescribeInputDeviceThumbnailResponse'
            <$> (h .#? "ETag")
            <*> (h .#? "Content-Type")
            <*> (h .#? "Content-Length")
            <*> (h .#? "Last-Modified")
            <*> (pure (fromEnum s))
            <*> (pure x)
      )

instance Hashable DescribeInputDeviceThumbnail

instance NFData DescribeInputDeviceThumbnail

instance ToHeaders DescribeInputDeviceThumbnail where
  toHeaders DescribeInputDeviceThumbnail' {..} =
    mconcat
      [ "accept" =# _didtAccept,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath DescribeInputDeviceThumbnail where
  toPath DescribeInputDeviceThumbnail' {..} =
    mconcat
      [ "/prod/inputDevices/",
        toBS _didtInputDeviceId,
        "/thumbnailData"
      ]

instance ToQuery DescribeInputDeviceThumbnail where
  toQuery = const mempty

-- | Placeholder documentation for DescribeInputDeviceThumbnailResponse
--
-- /See:/ 'describeInputDeviceThumbnailResponse' smart constructor.
data DescribeInputDeviceThumbnailResponse = DescribeInputDeviceThumbnailResponse'
  { _didtrrsETag ::
      !( Maybe
           Text
       ),
    _didtrrsContentType ::
      !( Maybe
           ContentType
       ),
    _didtrrsContentLength ::
      !( Maybe
           Integer
       ),
    _didtrrsLastModified ::
      !( Maybe
           POSIX
       ),
    _didtrrsResponseStatus ::
      !Int,
    _didtrrsBody ::
      !RsBody
  }
  deriving (Show, Generic)

-- | Creates a value of 'DescribeInputDeviceThumbnailResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'didtrrsETag' - The unique, cacheable version of this thumbnail.
--
-- * 'didtrrsContentType' - Specifies the media type of the thumbnail.
--
-- * 'didtrrsContentLength' - The length of the content.
--
-- * 'didtrrsLastModified' - The date and time the thumbnail was last updated at the device.
--
-- * 'didtrrsResponseStatus' - -- | The response status code.
--
-- * 'didtrrsBody' - The binary data for the thumbnail that the Link device has most recently sent to MediaLive.
describeInputDeviceThumbnailResponse ::
  -- | 'didtrrsResponseStatus'
  Int ->
  -- | 'didtrrsBody'
  RsBody ->
  DescribeInputDeviceThumbnailResponse
describeInputDeviceThumbnailResponse
  pResponseStatus_
  pBody_ =
    DescribeInputDeviceThumbnailResponse'
      { _didtrrsETag =
          Nothing,
        _didtrrsContentType = Nothing,
        _didtrrsContentLength = Nothing,
        _didtrrsLastModified = Nothing,
        _didtrrsResponseStatus =
          pResponseStatus_,
        _didtrrsBody = pBody_
      }

-- | The unique, cacheable version of this thumbnail.
didtrrsETag :: Lens' DescribeInputDeviceThumbnailResponse (Maybe Text)
didtrrsETag = lens _didtrrsETag (\s a -> s {_didtrrsETag = a})

-- | Specifies the media type of the thumbnail.
didtrrsContentType :: Lens' DescribeInputDeviceThumbnailResponse (Maybe ContentType)
didtrrsContentType = lens _didtrrsContentType (\s a -> s {_didtrrsContentType = a})

-- | The length of the content.
didtrrsContentLength :: Lens' DescribeInputDeviceThumbnailResponse (Maybe Integer)
didtrrsContentLength = lens _didtrrsContentLength (\s a -> s {_didtrrsContentLength = a})

-- | The date and time the thumbnail was last updated at the device.
didtrrsLastModified :: Lens' DescribeInputDeviceThumbnailResponse (Maybe UTCTime)
didtrrsLastModified = lens _didtrrsLastModified (\s a -> s {_didtrrsLastModified = a}) . mapping _Time

-- | -- | The response status code.
didtrrsResponseStatus :: Lens' DescribeInputDeviceThumbnailResponse Int
didtrrsResponseStatus = lens _didtrrsResponseStatus (\s a -> s {_didtrrsResponseStatus = a})

-- | The binary data for the thumbnail that the Link device has most recently sent to MediaLive.
didtrrsBody :: Lens' DescribeInputDeviceThumbnailResponse RsBody
didtrrsBody = lens _didtrrsBody (\s a -> s {_didtrrsBody = a})
