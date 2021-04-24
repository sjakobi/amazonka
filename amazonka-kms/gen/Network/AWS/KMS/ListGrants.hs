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
-- Module      : Network.AWS.KMS.ListGrants
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of all grants for the specified customer master key (CMK).
--
--
-- You must specify the CMK in all requests. You can filter the grant list by grant ID or grantee principal.
--
-- __Cross-account use__ : Yes. To perform this operation on a CMK in a different AWS account, specify the key ARN in the value of the @KeyId@ parameter.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:ListGrants> (key policy)
--
-- __Related operations:__
--
--     * 'CreateGrant'
--
--     * 'ListRetirableGrants'
--
--     * 'RetireGrant'
--
--     * 'RevokeGrant'
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.KMS.ListGrants
  ( -- * Creating a Request
    listGrants,
    ListGrants,

    -- * Request Lenses
    lgGranteePrincipal,
    lgGrantId,
    lgLimit,
    lgMarker,
    lgKeyId,

    -- * Destructuring the Response
    listGrantsResponse,
    ListGrantsResponse,

    -- * Response Lenses
    lgrNextMarker,
    lgrGrants,
    lgrTruncated,
  )
where

import Network.AWS.KMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listGrants' smart constructor.
data ListGrants = ListGrants'
  { _lgGranteePrincipal ::
      !(Maybe Text),
    _lgGrantId :: !(Maybe Text),
    _lgLimit :: !(Maybe Nat),
    _lgMarker :: !(Maybe Text),
    _lgKeyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListGrants' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgGranteePrincipal' - Returns only grants where the specified principal is the grantee principal for the grant.
--
-- * 'lgGrantId' - Returns only the grant with the specified grant ID. The grant ID uniquely identifies the grant.
--
-- * 'lgLimit' - Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.
--
-- * 'lgMarker' - Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
--
-- * 'lgKeyId' - Returns only grants for the specified customer master key (CMK). This parameter is required. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
listGrants ::
  -- | 'lgKeyId'
  Text ->
  ListGrants
listGrants pKeyId_ =
  ListGrants'
    { _lgGranteePrincipal = Nothing,
      _lgGrantId = Nothing,
      _lgLimit = Nothing,
      _lgMarker = Nothing,
      _lgKeyId = pKeyId_
    }

-- | Returns only grants where the specified principal is the grantee principal for the grant.
lgGranteePrincipal :: Lens' ListGrants (Maybe Text)
lgGranteePrincipal = lens _lgGranteePrincipal (\s a -> s {_lgGranteePrincipal = a})

-- | Returns only the grant with the specified grant ID. The grant ID uniquely identifies the grant.
lgGrantId :: Lens' ListGrants (Maybe Text)
lgGrantId = lens _lgGrantId (\s a -> s {_lgGrantId = a})

-- | Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.
lgLimit :: Lens' ListGrants (Maybe Natural)
lgLimit = lens _lgLimit (\s a -> s {_lgLimit = a}) . mapping _Nat

-- | Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
lgMarker :: Lens' ListGrants (Maybe Text)
lgMarker = lens _lgMarker (\s a -> s {_lgMarker = a})

-- | Returns only grants for the specified customer master key (CMK). This parameter is required. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN. For example:     * Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@      * Key ARN: @arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab@  To get the key ID and key ARN for a CMK, use 'ListKeys' or 'DescribeKey' .
lgKeyId :: Lens' ListGrants Text
lgKeyId = lens _lgKeyId (\s a -> s {_lgKeyId = a})

instance AWSPager ListGrants where
  page rq rs
    | stop (rs ^. lgrTruncated) = Nothing
    | isNothing (rs ^. lgrNextMarker) = Nothing
    | otherwise =
      Just $ rq & lgMarker .~ rs ^. lgrNextMarker

instance AWSRequest ListGrants where
  type Rs ListGrants = ListGrantsResponse
  request = postJSON kms
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable ListGrants

instance NFData ListGrants

instance ToHeaders ListGrants where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.ListGrants" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListGrants where
  toJSON ListGrants' {..} =
    object
      ( catMaybes
          [ ("GranteePrincipal" .=) <$> _lgGranteePrincipal,
            ("GrantId" .=) <$> _lgGrantId,
            ("Limit" .=) <$> _lgLimit,
            ("Marker" .=) <$> _lgMarker,
            Just ("KeyId" .= _lgKeyId)
          ]
      )

instance ToPath ListGrants where
  toPath = const "/"

instance ToQuery ListGrants where
  toQuery = const mempty
