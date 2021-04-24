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
-- Module      : Network.AWS.MediaStoreData.GetObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Downloads the object at the specified path. If the object’s upload availability is set to @streaming@ , AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
module Network.AWS.MediaStoreData.GetObject
  ( -- * Creating a Request
    getObject,
    GetObject,

    -- * Request Lenses
    goRange,
    goPath,

    -- * Destructuring the Response
    getObjectResponse,
    GetObjectResponse,

    -- * Response Lenses
    gorrsETag,
    gorrsContentType,
    gorrsContentRange,
    gorrsContentLength,
    gorrsLastModified,
    gorrsCacheControl,
    gorrsStatusCode,
    gorrsBody,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaStoreData.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getObject' smart constructor.
data GetObject = GetObject'
  { _goRange ::
      !(Maybe Text),
    _goPath :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetObject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'goRange' - The range bytes of an object to retrieve. For more information about the @Range@ header, see <http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35 http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35> . AWS Elemental MediaStore ignores this header for partially uploaded objects that have streaming upload availability.
--
-- * 'goPath' - The path (including the file name) where the object is stored in the container. Format: <folder name>/<folder name>/<file name> For example, to upload the file @mlaw.avi@ to the folder path @premium\canada@ in the container @movies@ , enter the path @premium/canada/mlaw.avi@ . Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing @premium/usa@ subfolder. If you specify @premium/canada@ , the service creates a @canada@ subfolder in the @premium@ folder. You then have two subfolders, @usa@ and @canada@ , in the @premium@ folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the <http://docs.aws.amazon.com/mediastore/latest/ug/ AWS Elemental MediaStore User Guide> . The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.
getObject ::
  -- | 'goPath'
  Text ->
  GetObject
getObject pPath_ =
  GetObject' {_goRange = Nothing, _goPath = pPath_}

-- | The range bytes of an object to retrieve. For more information about the @Range@ header, see <http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35 http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35> . AWS Elemental MediaStore ignores this header for partially uploaded objects that have streaming upload availability.
goRange :: Lens' GetObject (Maybe Text)
goRange = lens _goRange (\s a -> s {_goRange = a})

-- | The path (including the file name) where the object is stored in the container. Format: <folder name>/<folder name>/<file name> For example, to upload the file @mlaw.avi@ to the folder path @premium\canada@ in the container @movies@ , enter the path @premium/canada/mlaw.avi@ . Do not include the container name in this path. If the path includes any folders that don't exist yet, the service creates them. For example, suppose you have an existing @premium/usa@ subfolder. If you specify @premium/canada@ , the service creates a @canada@ subfolder in the @premium@ folder. You then have two subfolders, @usa@ and @canada@ , in the @premium@ folder.  There is no correlation between the path to the source and the path (folders) in the container in AWS Elemental MediaStore. For more information about folders and how they exist in a container, see the <http://docs.aws.amazon.com/mediastore/latest/ug/ AWS Elemental MediaStore User Guide> . The file name is the name that is assigned to the file that you upload. The file can have the same name inside and outside of AWS Elemental MediaStore, or it can have the same name. The file name can include or omit an extension.
goPath :: Lens' GetObject Text
goPath = lens _goPath (\s a -> s {_goPath = a})

instance AWSRequest GetObject where
  type Rs GetObject = GetObjectResponse
  request = get mediaStoreData
  response =
    receiveBody
      ( \s h x ->
          GetObjectResponse'
            <$> (h .#? "ETag")
            <*> (h .#? "Content-Type")
            <*> (h .#? "Content-Range")
            <*> (h .#? "Content-Length")
            <*> (h .#? "Last-Modified")
            <*> (h .#? "Cache-Control")
            <*> (pure (fromEnum s))
            <*> (pure x)
      )

instance Hashable GetObject

instance NFData GetObject

instance ToHeaders GetObject where
  toHeaders GetObject' {..} =
    mconcat ["Range" =# _goRange]

instance ToPath GetObject where
  toPath GetObject' {..} = mconcat ["/", toBS _goPath]

instance ToQuery GetObject where
  toQuery = const mempty

-- | /See:/ 'getObjectResponse' smart constructor.
data GetObjectResponse = GetObjectResponse'
  { _gorrsETag ::
      !(Maybe Text),
    _gorrsContentType :: !(Maybe Text),
    _gorrsContentRange :: !(Maybe Text),
    _gorrsContentLength :: !(Maybe Nat),
    _gorrsLastModified ::
      !(Maybe POSIX),
    _gorrsCacheControl :: !(Maybe Text),
    _gorrsStatusCode :: !Int,
    _gorrsBody :: !RsBody
  }
  deriving (Show, Generic)

-- | Creates a value of 'GetObjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gorrsETag' - The ETag that represents a unique instance of the object.
--
-- * 'gorrsContentType' - The content type of the object.
--
-- * 'gorrsContentRange' - The range of bytes to retrieve.
--
-- * 'gorrsContentLength' - The length of the object in bytes.
--
-- * 'gorrsLastModified' - The date and time that the object was last modified.
--
-- * 'gorrsCacheControl' - An optional @CacheControl@ header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP spec at <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9 https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9> . Headers with a custom user-defined value are also accepted.
--
-- * 'gorrsStatusCode' - The HTML status code of the request. Status codes ranging from 200 to 299 indicate success. All other status codes indicate the type of error that occurred.
--
-- * 'gorrsBody' - The bytes of the object.
getObjectResponse ::
  -- | 'gorrsStatusCode'
  Int ->
  -- | 'gorrsBody'
  RsBody ->
  GetObjectResponse
getObjectResponse pStatusCode_ pBody_ =
  GetObjectResponse'
    { _gorrsETag = Nothing,
      _gorrsContentType = Nothing,
      _gorrsContentRange = Nothing,
      _gorrsContentLength = Nothing,
      _gorrsLastModified = Nothing,
      _gorrsCacheControl = Nothing,
      _gorrsStatusCode = pStatusCode_,
      _gorrsBody = pBody_
    }

-- | The ETag that represents a unique instance of the object.
gorrsETag :: Lens' GetObjectResponse (Maybe Text)
gorrsETag = lens _gorrsETag (\s a -> s {_gorrsETag = a})

-- | The content type of the object.
gorrsContentType :: Lens' GetObjectResponse (Maybe Text)
gorrsContentType = lens _gorrsContentType (\s a -> s {_gorrsContentType = a})

-- | The range of bytes to retrieve.
gorrsContentRange :: Lens' GetObjectResponse (Maybe Text)
gorrsContentRange = lens _gorrsContentRange (\s a -> s {_gorrsContentRange = a})

-- | The length of the object in bytes.
gorrsContentLength :: Lens' GetObjectResponse (Maybe Natural)
gorrsContentLength = lens _gorrsContentLength (\s a -> s {_gorrsContentLength = a}) . mapping _Nat

-- | The date and time that the object was last modified.
gorrsLastModified :: Lens' GetObjectResponse (Maybe UTCTime)
gorrsLastModified = lens _gorrsLastModified (\s a -> s {_gorrsLastModified = a}) . mapping _Time

-- | An optional @CacheControl@ header that allows the caller to control the object's cache behavior. Headers can be passed in as specified in the HTTP spec at <https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9 https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9> . Headers with a custom user-defined value are also accepted.
gorrsCacheControl :: Lens' GetObjectResponse (Maybe Text)
gorrsCacheControl = lens _gorrsCacheControl (\s a -> s {_gorrsCacheControl = a})

-- | The HTML status code of the request. Status codes ranging from 200 to 299 indicate success. All other status codes indicate the type of error that occurred.
gorrsStatusCode :: Lens' GetObjectResponse Int
gorrsStatusCode = lens _gorrsStatusCode (\s a -> s {_gorrsStatusCode = a})

-- | The bytes of the object.
gorrsBody :: Lens' GetObjectResponse RsBody
gorrsBody = lens _gorrsBody (\s a -> s {_gorrsBody = a})
