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
-- Module      : Network.AWS.KMS.ListKeyPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the names of the key policies that are attached to a customer master key (CMK). This operation is designed to get policy names that you can use in a 'GetKeyPolicy' operation. However, the only valid policy name is @default@ .
--
--
-- __Cross-account use__ : No. You cannot perform this operation on a CMK in a different AWS account.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:ListKeyPolicies> (key policy)
--
-- __Related operations:__
--
--     * 'GetKeyPolicy'
--
--     * 'PutKeyPolicy'
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.KMS.ListKeyPolicies
  ( -- * Creating a Request
    listKeyPolicies,
    ListKeyPolicies,

    -- * Request Lenses
    lkpLimit,
    lkpMarker,
    lkpKeyId,

    -- * Destructuring the Response
    listKeyPoliciesResponse,
    ListKeyPoliciesResponse,

    -- * Response Lenses
    lkprrsNextMarker,
    lkprrsPolicyNames,
    lkprrsTruncated,
    lkprrsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listKeyPolicies' smart constructor.
data ListKeyPolicies = ListKeyPolicies'
  { _lkpLimit ::
      !(Maybe Nat),
    _lkpMarker :: !(Maybe Text),
    _lkpKeyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListKeyPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lkpLimit' - Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100. Only one policy can be attached to a key.
--
-- * 'lkpMarker' - Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
--
-- * 'lkpKeyId' - A unique identifier for the customer master key (CMK). Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
listKeyPolicies ::
  -- | 'lkpKeyId'
  Text ->
  ListKeyPolicies
listKeyPolicies pKeyId_ =
  ListKeyPolicies'
    { _lkpLimit = Nothing,
      _lkpMarker = Nothing,
      _lkpKeyId = pKeyId_
    }

-- | Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 1000, inclusive. If you do not include a value, it defaults to 100. Only one policy can be attached to a key.
lkpLimit :: Lens' ListKeyPolicies (Maybe Natural)
lkpLimit = lens _lkpLimit (\s a -> s {_lkpLimit = a}) . mapping _Nat

-- | Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
lkpMarker :: Lens' ListKeyPolicies (Maybe Text)
lkpMarker = lens _lkpMarker (\s a -> s {_lkpMarker = a})

-- | A unique identifier for the customer master key (CMK). Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
lkpKeyId :: Lens' ListKeyPolicies Text
lkpKeyId = lens _lkpKeyId (\s a -> s {_lkpKeyId = a})

instance AWSPager ListKeyPolicies where
  page rq rs
    | stop (rs ^. lkprrsTruncated) = Nothing
    | isNothing (rs ^. lkprrsNextMarker) = Nothing
    | otherwise =
      Just $ rq & lkpMarker .~ rs ^. lkprrsNextMarker

instance AWSRequest ListKeyPolicies where
  type Rs ListKeyPolicies = ListKeyPoliciesResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          ListKeyPoliciesResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "PolicyNames" .!@ mempty)
            <*> (x .?> "Truncated")
            <*> (pure (fromEnum s))
      )

instance Hashable ListKeyPolicies

instance NFData ListKeyPolicies

instance ToHeaders ListKeyPolicies where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.ListKeyPolicies" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListKeyPolicies where
  toJSON ListKeyPolicies' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _lkpLimit,
            ("Marker" .=) <$> _lkpMarker,
            Just ("KeyId" .= _lkpKeyId)
          ]
      )

instance ToPath ListKeyPolicies where
  toPath = const "/"

instance ToQuery ListKeyPolicies where
  toQuery = const mempty

-- | /See:/ 'listKeyPoliciesResponse' smart constructor.
data ListKeyPoliciesResponse = ListKeyPoliciesResponse'
  { _lkprrsNextMarker ::
      !(Maybe Text),
    _lkprrsPolicyNames ::
      !(Maybe [Text]),
    _lkprrsTruncated ::
      !(Maybe Bool),
    _lkprrsResponseStatus ::
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

-- | Creates a value of 'ListKeyPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lkprrsNextMarker' - When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request.
--
-- * 'lkprrsPolicyNames' - A list of key policy names. The only valid value is @default@ .
--
-- * 'lkprrsTruncated' - A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
--
-- * 'lkprrsResponseStatus' - -- | The response status code.
listKeyPoliciesResponse ::
  -- | 'lkprrsResponseStatus'
  Int ->
  ListKeyPoliciesResponse
listKeyPoliciesResponse pResponseStatus_ =
  ListKeyPoliciesResponse'
    { _lkprrsNextMarker =
        Nothing,
      _lkprrsPolicyNames = Nothing,
      _lkprrsTruncated = Nothing,
      _lkprrsResponseStatus = pResponseStatus_
    }

-- | When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request.
lkprrsNextMarker :: Lens' ListKeyPoliciesResponse (Maybe Text)
lkprrsNextMarker = lens _lkprrsNextMarker (\s a -> s {_lkprrsNextMarker = a})

-- | A list of key policy names. The only valid value is @default@ .
lkprrsPolicyNames :: Lens' ListKeyPoliciesResponse [Text]
lkprrsPolicyNames = lens _lkprrsPolicyNames (\s a -> s {_lkprrsPolicyNames = a}) . _Default . _Coerce

-- | A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
lkprrsTruncated :: Lens' ListKeyPoliciesResponse (Maybe Bool)
lkprrsTruncated = lens _lkprrsTruncated (\s a -> s {_lkprrsTruncated = a})

-- | -- | The response status code.
lkprrsResponseStatus :: Lens' ListKeyPoliciesResponse Int
lkprrsResponseStatus = lens _lkprrsResponseStatus (\s a -> s {_lkprrsResponseStatus = a})

instance NFData ListKeyPoliciesResponse
