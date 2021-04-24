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
-- Module      : Network.AWS.KMS.ListKeys
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of all customer master keys (CMKs) in the caller's AWS account and Region.
--
--
-- __Cross-account use__ : No. You cannot perform this operation on a CMK in a different AWS account.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:ListKeys> (IAM policy)
--
-- __Related operations:__
--
--     * 'CreateKey'
--
--     * 'DescribeKey'
--
--     * 'ListAliases'
--
--     * 'ListResourceTags'
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.KMS.ListKeys
  ( -- * Creating a Request
    listKeys,
    ListKeys,

    -- * Request Lenses
    lkLimit,
    lkMarker,

    -- * Destructuring the Response
    listKeysResponse,
    ListKeysResponse,

    -- * Response Lenses
    lkrrsNextMarker,
    lkrrsKeys,
    lkrrsTruncated,
    lkrrsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listKeys' smart constructor.
data ListKeys = ListKeys'
  { _lkLimit :: !(Maybe Nat),
    _lkMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lkLimit' - Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100.
--
-- * 'lkMarker' - Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
listKeys ::
  ListKeys
listKeys =
  ListKeys' {_lkLimit = Nothing, _lkMarker = Nothing}

-- | Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100.
lkLimit :: Lens' ListKeys (Maybe Natural)
lkLimit = lens _lkLimit (\s a -> s {_lkLimit = a}) . mapping _Nat

-- | Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
lkMarker :: Lens' ListKeys (Maybe Text)
lkMarker = lens _lkMarker (\s a -> s {_lkMarker = a})

instance AWSPager ListKeys where
  page rq rs
    | stop (rs ^. lkrrsTruncated) = Nothing
    | isNothing (rs ^. lkrrsNextMarker) = Nothing
    | otherwise =
      Just $ rq & lkMarker .~ rs ^. lkrrsNextMarker

instance AWSRequest ListKeys where
  type Rs ListKeys = ListKeysResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          ListKeysResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "Keys" .!@ mempty)
            <*> (x .?> "Truncated")
            <*> (pure (fromEnum s))
      )

instance Hashable ListKeys

instance NFData ListKeys

instance ToHeaders ListKeys where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.ListKeys" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListKeys where
  toJSON ListKeys' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _lkLimit,
            ("Marker" .=) <$> _lkMarker
          ]
      )

instance ToPath ListKeys where
  toPath = const "/"

instance ToQuery ListKeys where
  toQuery = const mempty

-- | /See:/ 'listKeysResponse' smart constructor.
data ListKeysResponse = ListKeysResponse'
  { _lkrrsNextMarker ::
      !(Maybe Text),
    _lkrrsKeys :: !(Maybe [KeyListEntry]),
    _lkrrsTruncated :: !(Maybe Bool),
    _lkrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListKeysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lkrrsNextMarker' - When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request.
--
-- * 'lkrrsKeys' - A list of customer master keys (CMKs).
--
-- * 'lkrrsTruncated' - A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
--
-- * 'lkrrsResponseStatus' - -- | The response status code.
listKeysResponse ::
  -- | 'lkrrsResponseStatus'
  Int ->
  ListKeysResponse
listKeysResponse pResponseStatus_ =
  ListKeysResponse'
    { _lkrrsNextMarker = Nothing,
      _lkrrsKeys = Nothing,
      _lkrrsTruncated = Nothing,
      _lkrrsResponseStatus = pResponseStatus_
    }

-- | When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request.
lkrrsNextMarker :: Lens' ListKeysResponse (Maybe Text)
lkrrsNextMarker = lens _lkrrsNextMarker (\s a -> s {_lkrrsNextMarker = a})

-- | A list of customer master keys (CMKs).
lkrrsKeys :: Lens' ListKeysResponse [KeyListEntry]
lkrrsKeys = lens _lkrrsKeys (\s a -> s {_lkrrsKeys = a}) . _Default . _Coerce

-- | A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
lkrrsTruncated :: Lens' ListKeysResponse (Maybe Bool)
lkrrsTruncated = lens _lkrrsTruncated (\s a -> s {_lkrrsTruncated = a})

-- | -- | The response status code.
lkrrsResponseStatus :: Lens' ListKeysResponse Int
lkrrsResponseStatus = lens _lkrrsResponseStatus (\s a -> s {_lkrrsResponseStatus = a})

instance NFData ListKeysResponse
