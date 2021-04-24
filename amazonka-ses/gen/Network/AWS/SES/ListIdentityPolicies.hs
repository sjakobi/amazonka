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
-- Module      : Network.AWS.SES.ListIdentityPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of sending authorization policies that are attached to the given identity (an email address or a domain). This API returns only a list. If you want the actual policy content, you can use @GetIdentityPolicies@ .
--
--
-- Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html Amazon SES Developer Guide> .
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.ListIdentityPolicies
  ( -- * Creating a Request
    listIdentityPolicies,
    ListIdentityPolicies,

    -- * Request Lenses
    lipIdentity,

    -- * Destructuring the Response
    listIdentityPoliciesResponse,
    ListIdentityPoliciesResponse,

    -- * Response Lenses
    liprrsResponseStatus,
    liprrsPolicyNames,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | Represents a request to return a list of sending authorization policies that are attached to an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html Amazon SES Developer Guide> .
--
--
--
-- /See:/ 'listIdentityPolicies' smart constructor.
newtype ListIdentityPolicies = ListIdentityPolicies'
  { _lipIdentity ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListIdentityPolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lipIdentity' - The identity that is associated with the policy for which the policies will be listed. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: @user@example.com@ , @example.com@ , @arn:aws:ses:us-east-1:123456789012:identity/example.com@ . To successfully call this API, you must own the identity.
listIdentityPolicies ::
  -- | 'lipIdentity'
  Text ->
  ListIdentityPolicies
listIdentityPolicies pIdentity_ =
  ListIdentityPolicies' {_lipIdentity = pIdentity_}

-- | The identity that is associated with the policy for which the policies will be listed. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: @user@example.com@ , @example.com@ , @arn:aws:ses:us-east-1:123456789012:identity/example.com@ . To successfully call this API, you must own the identity.
lipIdentity :: Lens' ListIdentityPolicies Text
lipIdentity = lens _lipIdentity (\s a -> s {_lipIdentity = a})

instance AWSRequest ListIdentityPolicies where
  type
    Rs ListIdentityPolicies =
      ListIdentityPoliciesResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "ListIdentityPoliciesResult"
      ( \s h x ->
          ListIdentityPoliciesResponse'
            <$> (pure (fromEnum s))
            <*> ( x .@? "PolicyNames" .!@ mempty
                    >>= parseXMLList "member"
                )
      )

instance Hashable ListIdentityPolicies

instance NFData ListIdentityPolicies

instance ToHeaders ListIdentityPolicies where
  toHeaders = const mempty

instance ToPath ListIdentityPolicies where
  toPath = const "/"

instance ToQuery ListIdentityPolicies where
  toQuery ListIdentityPolicies' {..} =
    mconcat
      [ "Action" =: ("ListIdentityPolicies" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "Identity" =: _lipIdentity
      ]

-- | A list of names of sending authorization policies that apply to an identity.
--
--
--
-- /See:/ 'listIdentityPoliciesResponse' smart constructor.
data ListIdentityPoliciesResponse = ListIdentityPoliciesResponse'
  { _liprrsResponseStatus ::
      !Int,
    _liprrsPolicyNames ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListIdentityPoliciesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'liprrsResponseStatus' - -- | The response status code.
--
-- * 'liprrsPolicyNames' - A list of names of policies that apply to the specified identity.
listIdentityPoliciesResponse ::
  -- | 'liprrsResponseStatus'
  Int ->
  ListIdentityPoliciesResponse
listIdentityPoliciesResponse pResponseStatus_ =
  ListIdentityPoliciesResponse'
    { _liprrsResponseStatus =
        pResponseStatus_,
      _liprrsPolicyNames = mempty
    }

-- | -- | The response status code.
liprrsResponseStatus :: Lens' ListIdentityPoliciesResponse Int
liprrsResponseStatus = lens _liprrsResponseStatus (\s a -> s {_liprrsResponseStatus = a})

-- | A list of names of policies that apply to the specified identity.
liprrsPolicyNames :: Lens' ListIdentityPoliciesResponse [Text]
liprrsPolicyNames = lens _liprrsPolicyNames (\s a -> s {_liprrsPolicyNames = a}) . _Coerce

instance NFData ListIdentityPoliciesResponse
