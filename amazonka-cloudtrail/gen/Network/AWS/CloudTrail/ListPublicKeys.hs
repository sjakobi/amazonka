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
-- Module      : Network.AWS.CloudTrail.ListPublicKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudTrail.ListPublicKeys
  ( -- * Creating a Request
    listPublicKeys,
    ListPublicKeys,

    -- * Request Lenses
    lpkNextToken,
    lpkStartTime,
    lpkEndTime,

    -- * Destructuring the Response
    listPublicKeysResponse,
    ListPublicKeysResponse,

    -- * Response Lenses
    lpkrrsNextToken,
    lpkrrsPublicKeyList,
    lpkrrsResponseStatus,
  )
where

import Network.AWS.CloudTrail.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Requests the public keys for a specified time range.
--
--
--
-- /See:/ 'listPublicKeys' smart constructor.
data ListPublicKeys = ListPublicKeys'
  { _lpkNextToken ::
      !(Maybe Text),
    _lpkStartTime :: !(Maybe POSIX),
    _lpkEndTime :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPublicKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpkNextToken' - Reserved for future use.
--
-- * 'lpkStartTime' - Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used, and the current public key is returned.
--
-- * 'lpkEndTime' - Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used.
listPublicKeys ::
  ListPublicKeys
listPublicKeys =
  ListPublicKeys'
    { _lpkNextToken = Nothing,
      _lpkStartTime = Nothing,
      _lpkEndTime = Nothing
    }

-- | Reserved for future use.
lpkNextToken :: Lens' ListPublicKeys (Maybe Text)
lpkNextToken = lens _lpkNextToken (\s a -> s {_lpkNextToken = a})

-- | Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used, and the current public key is returned.
lpkStartTime :: Lens' ListPublicKeys (Maybe UTCTime)
lpkStartTime = lens _lpkStartTime (\s a -> s {_lpkStartTime = a}) . mapping _Time

-- | Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used.
lpkEndTime :: Lens' ListPublicKeys (Maybe UTCTime)
lpkEndTime = lens _lpkEndTime (\s a -> s {_lpkEndTime = a}) . mapping _Time

instance AWSPager ListPublicKeys where
  page rq rs
    | stop (rs ^. lpkrrsNextToken) = Nothing
    | stop (rs ^. lpkrrsPublicKeyList) = Nothing
    | otherwise =
      Just $ rq & lpkNextToken .~ rs ^. lpkrrsNextToken

instance AWSRequest ListPublicKeys where
  type Rs ListPublicKeys = ListPublicKeysResponse
  request = postJSON cloudTrail
  response =
    receiveJSON
      ( \s h x ->
          ListPublicKeysResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PublicKeyList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPublicKeys

instance NFData ListPublicKeys

instance ToHeaders ListPublicKeys where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.ListPublicKeys" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPublicKeys where
  toJSON ListPublicKeys' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lpkNextToken,
            ("StartTime" .=) <$> _lpkStartTime,
            ("EndTime" .=) <$> _lpkEndTime
          ]
      )

instance ToPath ListPublicKeys where
  toPath = const "/"

instance ToQuery ListPublicKeys where
  toQuery = const mempty

-- | Returns the objects or data listed below if successful. Otherwise, returns an error.
--
--
--
-- /See:/ 'listPublicKeysResponse' smart constructor.
data ListPublicKeysResponse = ListPublicKeysResponse'
  { _lpkrrsNextToken ::
      !(Maybe Text),
    _lpkrrsPublicKeyList ::
      !(Maybe [PublicKey]),
    _lpkrrsResponseStatus ::
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

-- | Creates a value of 'ListPublicKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpkrrsNextToken' - Reserved for future use.
--
-- * 'lpkrrsPublicKeyList' - Contains an array of PublicKey objects.
--
-- * 'lpkrrsResponseStatus' - -- | The response status code.
listPublicKeysResponse ::
  -- | 'lpkrrsResponseStatus'
  Int ->
  ListPublicKeysResponse
listPublicKeysResponse pResponseStatus_ =
  ListPublicKeysResponse'
    { _lpkrrsNextToken = Nothing,
      _lpkrrsPublicKeyList = Nothing,
      _lpkrrsResponseStatus = pResponseStatus_
    }

-- | Reserved for future use.
lpkrrsNextToken :: Lens' ListPublicKeysResponse (Maybe Text)
lpkrrsNextToken = lens _lpkrrsNextToken (\s a -> s {_lpkrrsNextToken = a})

-- | Contains an array of PublicKey objects.
lpkrrsPublicKeyList :: Lens' ListPublicKeysResponse [PublicKey]
lpkrrsPublicKeyList = lens _lpkrrsPublicKeyList (\s a -> s {_lpkrrsPublicKeyList = a}) . _Default . _Coerce

-- | -- | The response status code.
lpkrrsResponseStatus :: Lens' ListPublicKeysResponse Int
lpkrrsResponseStatus = lens _lpkrrsResponseStatus (\s a -> s {_lpkrrsResponseStatus = a})

instance NFData ListPublicKeysResponse
