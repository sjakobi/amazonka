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
-- Module      : Network.AWS.KMS.TagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or edits tags on a <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk customer managed CMK> .
--
--
-- Each tag consists of a tag key and a tag value, both of which are case-sensitive strings. The tag value can be an empty (null) string.
--
-- To add a tag, specify a new tag key and a tag value. To edit a tag, specify an existing tag key and a new tag value.
--
-- You can use this operation to tag a <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk customer managed CMK> , but you cannot tag an <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk AWS managed CMK> , an <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk AWS owned CMK> , or an alias.
--
-- For general information about tags, including the format and syntax, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /Amazon Web Services General Reference/ . For information about using tags in AWS KMS, see <https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html Tagging keys> .
--
-- The CMK that you use for this operation must be in a compatible key state. For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /AWS Key Management Service Developer Guide/ .
--
-- __Cross-account use__ : No. You cannot perform this operation on a CMK in a different AWS account.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:TagResource> (key policy)
--
-- __Related operations__
--
--     * 'UntagResource'
--
--     * 'ListResourceTags'
module Network.AWS.KMS.TagResource
  ( -- * Creating a Request
    tagResource,
    TagResource,

    -- * Request Lenses
    trKeyId,
    trTags,

    -- * Destructuring the Response
    tagResourceResponse,
    TagResourceResponse,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'tagResource' smart constructor.
data TagResource = TagResource'
  { _trKeyId :: !Text,
    _trTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trKeyId' - Identifies a customer managed CMK in the account and Region. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
--
-- * 'trTags' - One or more tags.  Each tag consists of a tag key and a tag value. The tag value can be an empty (null) string.  You cannot have more than one tag on a CMK with the same tag key. If you specify an existing tag key with a different tag value, AWS KMS replaces the current tag value with the specified one.
tagResource ::
  -- | 'trKeyId'
  Text ->
  TagResource
tagResource pKeyId_ =
  TagResource' {_trKeyId = pKeyId_, _trTags = mempty}

-- | Identifies a customer managed CMK in the account and Region. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
trKeyId :: Lens' TagResource Text
trKeyId = lens _trKeyId (\s a -> s {_trKeyId = a})

-- | One or more tags.  Each tag consists of a tag key and a tag value. The tag value can be an empty (null) string.  You cannot have more than one tag on a CMK with the same tag key. If you specify an existing tag key with a different tag value, AWS KMS replaces the current tag value with the specified one.
trTags :: Lens' TagResource [Tag]
trTags = lens _trTags (\s a -> s {_trTags = a}) . _Coerce

instance AWSRequest TagResource where
  type Rs TagResource = TagResourceResponse
  request = postJSON kms
  response = receiveNull TagResourceResponse'

instance Hashable TagResource

instance NFData TagResource

instance ToHeaders TagResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.TagResource" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TagResource where
  toJSON TagResource' {..} =
    object
      ( catMaybes
          [ Just ("KeyId" .= _trKeyId),
            Just ("Tags" .= _trTags)
          ]
      )

instance ToPath TagResource where
  toPath = const "/"

instance ToQuery TagResource where
  toQuery = const mempty

-- | /See:/ 'tagResourceResponse' smart constructor.
data TagResourceResponse = TagResourceResponse'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResourceResponse' with the minimum fields required to make a request.
tagResourceResponse ::
  TagResourceResponse
tagResourceResponse = TagResourceResponse'

instance NFData TagResourceResponse
