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
-- Module      : Network.AWS.KMS.UntagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes tags from a <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk customer managed CMK> . To delete a tag, specify the tag key and the CMK.
--
--
-- When it succeeds, the @UntagResource@ operation doesn't return any output. Also, if the specified tag key isn't found on the CMK, it doesn't throw an exception or return a response. To confirm that the operation worked, use the 'ListResourceTags' operation.
--
-- For general information about tags, including the format and syntax, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /Amazon Web Services General Reference/ . For information about using tags in AWS KMS, see <https://docs.aws.amazon.com/kms/latest/developerguide/tagging-keys.html Tagging keys> .
--
-- The CMK that you use for this operation must be in a compatible key state. For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html How Key State Affects Use of a Customer Master Key> in the /AWS Key Management Service Developer Guide/ .
--
-- __Cross-account use__ : No. You cannot perform this operation on a CMK in a different AWS account.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:UntagResource> (key policy)
--
-- __Related operations__
--
--     * 'TagResource'
--
--     * 'ListResourceTags'
module Network.AWS.KMS.UntagResource
  ( -- * Creating a Request
    untagResource,
    UntagResource,

    -- * Request Lenses
    urKeyId,
    urTagKeys,

    -- * Destructuring the Response
    untagResourceResponse,
    UntagResourceResponse,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagResource' smart constructor.
data UntagResource = UntagResource'
  { _urKeyId ::
      !Text,
    _urTagKeys :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urKeyId' - Identifies the CMK from which you are removing tags. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
--
-- * 'urTagKeys' - One or more tag keys. Specify only the tag keys, not the tag values.
untagResource ::
  -- | 'urKeyId'
  Text ->
  UntagResource
untagResource pKeyId_ =
  UntagResource'
    { _urKeyId = pKeyId_,
      _urTagKeys = mempty
    }

-- | Identifies the CMK from which you are removing tags. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
urKeyId :: Lens' UntagResource Text
urKeyId = lens _urKeyId (\s a -> s {_urKeyId = a})

-- | One or more tag keys. Specify only the tag keys, not the tag values.
urTagKeys :: Lens' UntagResource [Text]
urTagKeys = lens _urTagKeys (\s a -> s {_urTagKeys = a}) . _Coerce

instance AWSRequest UntagResource where
  type Rs UntagResource = UntagResourceResponse
  request = postJSON kms
  response = receiveNull UntagResourceResponse'

instance Hashable UntagResource

instance NFData UntagResource

instance ToHeaders UntagResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.UntagResource" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UntagResource where
  toJSON UntagResource' {..} =
    object
      ( catMaybes
          [ Just ("KeyId" .= _urKeyId),
            Just ("TagKeys" .= _urTagKeys)
          ]
      )

instance ToPath UntagResource where
  toPath = const "/"

instance ToQuery UntagResource where
  toQuery = const mempty

-- | /See:/ 'untagResourceResponse' smart constructor.
data UntagResourceResponse = UntagResourceResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UntagResourceResponse' with the minimum fields required to make a request.
untagResourceResponse ::
  UntagResourceResponse
untagResourceResponse = UntagResourceResponse'

instance NFData UntagResourceResponse
