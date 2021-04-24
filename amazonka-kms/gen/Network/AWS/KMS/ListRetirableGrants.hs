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
-- Module      : Network.AWS.KMS.ListRetirableGrants
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all grants in which the specified principal is the @RetiringPrincipal@ in the grant.
--
--
-- You can specify any principal in your AWS account. The grants that are returned include grants for CMKs in your AWS account and other AWS accounts.
--
-- You might use this operation to determine which grants you may retire. To retire a grant, use the 'RetireGrant' operation.
--
-- __Cross-account use__ : You must specify a principal in your AWS account. However, this operation can return grants in any AWS account. You do not need @kms:ListRetirableGrants@ permission (or any other additional permission) in any AWS account other than your own.
--
-- __Required permissions__ : <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:ListRetirableGrants> (IAM policy) in your AWS account.
--
-- __Related operations:__
--
--     * 'CreateGrant'
--
--     * 'ListGrants'
--
--     * 'RetireGrant'
--
--     * 'RevokeGrant'
module Network.AWS.KMS.ListRetirableGrants
  ( -- * Creating a Request
    listRetirableGrants,
    ListRetirableGrants,

    -- * Request Lenses
    lrgLimit,
    lrgMarker,
    lrgRetiringPrincipal,

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
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRetirableGrants' smart constructor.
data ListRetirableGrants = ListRetirableGrants'
  { _lrgLimit ::
      !(Maybe Nat),
    _lrgMarker :: !(Maybe Text),
    _lrgRetiringPrincipal :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRetirableGrants' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrgLimit' - Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.
--
-- * 'lrgMarker' - Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
--
-- * 'lrgRetiringPrincipal' - The retiring principal for which to list grants. Enter a principal in your AWS account. To specify the retiring principal, use the <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Name (ARN)> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax for specifying a principal, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam AWS Identity and Access Management (IAM)> in the Example ARNs section of the /Amazon Web Services General Reference/ .
listRetirableGrants ::
  -- | 'lrgRetiringPrincipal'
  Text ->
  ListRetirableGrants
listRetirableGrants pRetiringPrincipal_ =
  ListRetirableGrants'
    { _lrgLimit = Nothing,
      _lrgMarker = Nothing,
      _lrgRetiringPrincipal = pRetiringPrincipal_
    }

-- | Use this parameter to specify the maximum number of items to return. When this value is present, AWS KMS does not return more than the specified number of items, but it might return fewer. This value is optional. If you include a value, it must be between 1 and 100, inclusive. If you do not include a value, it defaults to 50.
lrgLimit :: Lens' ListRetirableGrants (Maybe Natural)
lrgLimit = lens _lrgLimit (\s a -> s {_lrgLimit = a}) . mapping _Nat

-- | Use this parameter in a subsequent request after you receive a response with truncated results. Set it to the value of @NextMarker@ from the truncated response you just received.
lrgMarker :: Lens' ListRetirableGrants (Maybe Text)
lrgMarker = lens _lrgMarker (\s a -> s {_lrgMarker = a})

-- | The retiring principal for which to list grants. Enter a principal in your AWS account. To specify the retiring principal, use the <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Name (ARN)> of an AWS principal. Valid AWS principals include AWS accounts (root), IAM users, federated users, and assumed role users. For examples of the ARN syntax for specifying a principal, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam AWS Identity and Access Management (IAM)> in the Example ARNs section of the /Amazon Web Services General Reference/ .
lrgRetiringPrincipal :: Lens' ListRetirableGrants Text
lrgRetiringPrincipal = lens _lrgRetiringPrincipal (\s a -> s {_lrgRetiringPrincipal = a})

instance AWSRequest ListRetirableGrants where
  type Rs ListRetirableGrants = ListGrantsResponse
  request = postJSON kms
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable ListRetirableGrants

instance NFData ListRetirableGrants

instance ToHeaders ListRetirableGrants where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("TrentService.ListRetirableGrants" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListRetirableGrants where
  toJSON ListRetirableGrants' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _lrgLimit,
            ("Marker" .=) <$> _lrgMarker,
            Just ("RetiringPrincipal" .= _lrgRetiringPrincipal)
          ]
      )

instance ToPath ListRetirableGrants where
  toPath = const "/"

instance ToQuery ListRetirableGrants where
  toQuery = const mempty
