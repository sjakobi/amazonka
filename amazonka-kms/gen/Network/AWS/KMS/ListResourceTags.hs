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
-- Module      : Network.AWS.KMS.ListResourceTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all tags on the specified customer master key (CMK).
--
--
-- For general information about tags, including the format and syntax, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /Amazon Web Services General Reference/ . For information about using tags in AWS KMS, see <https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html Tagging keys> .
--
-- __Cross-account use__ : No. You cannot perform this operation on a CMK in a different AWS account.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:ListResourceTags> (key policy)
--
-- __Related operations:__
--
--     * 'TagResource'
--
--     * 'UntagResource'
module Network.AWS.KMS.ListResourceTags
  ( -- * Creating a Request
    listResourceTags,
    ListResourceTags,

    -- * Request Lenses
    lrtLimit,
    lrtMarker,
    lrtKeyId,

    -- * Destructuring the Response
    listResourceTagsResponse,
    ListResourceTagsResponse,

    -- * Response Lenses
    lrtrrsNextMarker,
    lrtrrsTags,
    lrtrrsTruncated,
    lrtrrsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listResourceTags' smart constructor.
data ListResourceTags = ListResourceTags'
  { _lrtLimit ::
      !(Maybe Nat),
    _lrtMarker :: !(Maybe Text),
    _lrtKeyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListResourceTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrtLimit' - Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 50, inclusive. If you do not include a value, it defaults to 50.
--
-- * 'lrtMarker' - Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received. Do not attempt to construct this value. Use only the value of @NextMarker@ from the truncated response you just received.
--
-- * 'lrtKeyId' - A unique identifier for the customer master key (CMK). Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
listResourceTags ::
  -- | 'lrtKeyId'
  Text ->
  ListResourceTags
listResourceTags pKeyId_ =
  ListResourceTags'
    { _lrtLimit = Nothing,
      _lrtMarker = Nothing,
      _lrtKeyId = pKeyId_
    }

-- | Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 50, inclusive. If you do not include a value, it defaults to 50.
lrtLimit :: Lens' ListResourceTags (Maybe Natural)
lrtLimit = lens _lrtLimit (\s a -> s {_lrtLimit = a}) . mapping _Nat

-- | Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received. Do not attempt to construct this value. Use only the value of @NextMarker@ from the truncated response you just received.
lrtMarker :: Lens' ListResourceTags (Maybe Text)
lrtMarker = lens _lrtMarker (\s a -> s {_lrtMarker = a})

-- | A unique identifier for the customer master key (CMK). Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
lrtKeyId :: Lens' ListResourceTags Text
lrtKeyId = lens _lrtKeyId (\s a -> s {_lrtKeyId = a})

instance AWSRequest ListResourceTags where
  type Rs ListResourceTags = ListResourceTagsResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          ListResourceTagsResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "Truncated")
            <*> (pure (fromEnum s))
      )

instance Hashable ListResourceTags

instance NFData ListResourceTags

instance ToHeaders ListResourceTags where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.ListResourceTags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListResourceTags where
  toJSON ListResourceTags' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _lrtLimit,
            ("Marker" .=) <$> _lrtMarker,
            Just ("KeyId" .= _lrtKeyId)
          ]
      )

instance ToPath ListResourceTags where
  toPath = const "/"

instance ToQuery ListResourceTags where
  toQuery = const mempty

-- | /See:/ 'listResourceTagsResponse' smart constructor.
data ListResourceTagsResponse = ListResourceTagsResponse'
  { _lrtrrsNextMarker ::
      !(Maybe Text),
    _lrtrrsTags ::
      !(Maybe [Tag]),
    _lrtrrsTruncated ::
      !(Maybe Bool),
    _lrtrrsResponseStatus ::
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

-- | Creates a value of 'ListResourceTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrtrrsNextMarker' - When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request. Do not assume or infer any information from this value.
--
-- * 'lrtrrsTags' - A list of tags. Each tag consists of a tag key and a tag value.
--
-- * 'lrtrrsTruncated' - A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
--
-- * 'lrtrrsResponseStatus' - -- | The response status code.
listResourceTagsResponse ::
  -- | 'lrtrrsResponseStatus'
  Int ->
  ListResourceTagsResponse
listResourceTagsResponse pResponseStatus_ =
  ListResourceTagsResponse'
    { _lrtrrsNextMarker =
        Nothing,
      _lrtrrsTags = Nothing,
      _lrtrrsTruncated = Nothing,
      _lrtrrsResponseStatus = pResponseStatus_
    }

-- | When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request. Do not assume or infer any information from this value.
lrtrrsNextMarker :: Lens' ListResourceTagsResponse (Maybe Text)
lrtrrsNextMarker = lens _lrtrrsNextMarker (\s a -> s {_lrtrrsNextMarker = a})

-- | A list of tags. Each tag consists of a tag key and a tag value.
lrtrrsTags :: Lens' ListResourceTagsResponse [Tag]
lrtrrsTags = lens _lrtrrsTags (\s a -> s {_lrtrrsTags = a}) . _Default . _Coerce

-- | A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
lrtrrsTruncated :: Lens' ListResourceTagsResponse (Maybe Bool)
lrtrrsTruncated = lens _lrtrrsTruncated (\s a -> s {_lrtrrsTruncated = a})

-- | -- | The response status code.
lrtrrsResponseStatus :: Lens' ListResourceTagsResponse Int
lrtrrsResponseStatus = lens _lrtrrsResponseStatus (\s a -> s {_lrtrrsResponseStatus = a})

instance NFData ListResourceTagsResponse
