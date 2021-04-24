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
-- Module      : Network.AWS.KMS.ListAliases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of aliases in the caller's AWS account and region. For more information about aliases, see 'CreateAlias' .
--
--
-- By default, the @ListAliases@ operation returns all aliases in the account and region. To get only the aliases associated with a particular customer master key (CMK), use the @KeyId@ parameter.
--
-- The @ListAliases@ response can include aliases that you created and associated with your customer managed CMKs, and aliases that AWS created and associated with AWS managed CMKs in your account. You can recognize AWS aliases because their names have the format @aws/<service-name>@ , such as @aws/dynamodb@ .
--
-- The response might also include aliases that have no @TargetKeyId@ field. These are predefined aliases that AWS has created but has not yet associated with a CMK. Aliases that AWS creates in your account, including predefined aliases, do not count against your <https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit AWS KMS aliases quota> .
--
-- __Cross-account use__ : No. @ListAliases@ does not return aliases in other AWS accounts.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:ListAliases> (IAM policy)
--
-- For details, see <https://docs.aws.amazon.com/kms/latest/developerguide/kms-alias.html#alias-access Controlling access to aliases> in the /AWS Key Management Service Developer Guide/ .
--
-- __Related operations:__
--
--     * 'CreateAlias'
--
--     * 'DeleteAlias'
--
--     * 'UpdateAlias'
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.KMS.ListAliases
  ( -- * Creating a Request
    listAliases,
    ListAliases,

    -- * Request Lenses
    laLimit,
    laKeyId,
    laMarker,

    -- * Destructuring the Response
    listAliasesResponse,
    ListAliasesResponse,

    -- * Response Lenses
    larrsNextMarker,
    larrsAliases,
    larrsTruncated,
    larrsResponseStatus,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAliases' smart constructor.
data ListAliases = ListAliases'
  { _laLimit ::
      !(Maybe Nat),
    _laKeyId :: !(Maybe Text),
    _laMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAliases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laLimit' - Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.
--
-- * 'laKeyId' - Lists only aliases that are associated with the specified CMK. Enter a CMK in your AWS account.  This parameter is optional. If you omit it, @ListAliases@ returns all aliases in the account and Region. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
--
-- * 'laMarker' - Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
listAliases ::
  ListAliases
listAliases =
  ListAliases'
    { _laLimit = Nothing,
      _laKeyId = Nothing,
      _laMarker = Nothing
    }

-- | Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.
laLimit :: Lens' ListAliases (Maybe Natural)
laLimit = lens _laLimit (\s a -> s {_laLimit = a}) . mapping _Nat

-- | Lists only aliases that are associated with the specified CMK. Enter a CMK in your AWS account.  This parameter is optional. If you omit it, @ListAliases@ returns all aliases in the account and Region. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
laKeyId :: Lens' ListAliases (Maybe Text)
laKeyId = lens _laKeyId (\s a -> s {_laKeyId = a})

-- | Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
laMarker :: Lens' ListAliases (Maybe Text)
laMarker = lens _laMarker (\s a -> s {_laMarker = a})

instance AWSPager ListAliases where
  page rq rs
    | stop (rs ^. larrsTruncated) = Nothing
    | isNothing (rs ^. larrsNextMarker) = Nothing
    | otherwise =
      Just $ rq & laMarker .~ rs ^. larrsNextMarker

instance AWSRequest ListAliases where
  type Rs ListAliases = ListAliasesResponse
  request = postJSON kms
  response =
    receiveJSON
      ( \s h x ->
          ListAliasesResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "Aliases" .!@ mempty)
            <*> (x .?> "Truncated")
            <*> (pure (fromEnum s))
      )

instance Hashable ListAliases

instance NFData ListAliases

instance ToHeaders ListAliases where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.ListAliases" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAliases where
  toJSON ListAliases' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _laLimit,
            ("KeyId" .=) <$> _laKeyId,
            ("Marker" .=) <$> _laMarker
          ]
      )

instance ToPath ListAliases where
  toPath = const "/"

instance ToQuery ListAliases where
  toQuery = const mempty

-- | /See:/ 'listAliasesResponse' smart constructor.
data ListAliasesResponse = ListAliasesResponse'
  { _larrsNextMarker ::
      !(Maybe Text),
    _larrsAliases ::
      !(Maybe [AliasListEntry]),
    _larrsTruncated ::
      !(Maybe Bool),
    _larrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAliasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextMarker' - When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request.
--
-- * 'larrsAliases' - A list of aliases.
--
-- * 'larrsTruncated' - A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
--
-- * 'larrsResponseStatus' - -- | The response status code.
listAliasesResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListAliasesResponse
listAliasesResponse pResponseStatus_ =
  ListAliasesResponse'
    { _larrsNextMarker = Nothing,
      _larrsAliases = Nothing,
      _larrsTruncated = Nothing,
      _larrsResponseStatus = pResponseStatus_
    }

-- | When @Truncated@ is true, this element is present and contains the value to use for the @Marker@ parameter in a subsequent request.
larrsNextMarker :: Lens' ListAliasesResponse (Maybe Text)
larrsNextMarker = lens _larrsNextMarker (\s a -> s {_larrsNextMarker = a})

-- | A list of aliases.
larrsAliases :: Lens' ListAliasesResponse [AliasListEntry]
larrsAliases = lens _larrsAliases (\s a -> s {_larrsAliases = a}) . _Default . _Coerce

-- | A flag that indicates whether there are more items in the list. When this value is true, the list in this response is truncated. To get more items, pass the value of the @NextMarker@ element in thisresponse to the @Marker@ parameter in a subsequent request.
larrsTruncated :: Lens' ListAliasesResponse (Maybe Bool)
larrsTruncated = lens _larrsTruncated (\s a -> s {_larrsTruncated = a})

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListAliasesResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

instance NFData ListAliasesResponse
