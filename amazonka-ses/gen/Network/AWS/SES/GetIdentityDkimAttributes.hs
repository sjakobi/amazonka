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
-- Module      : Network.AWS.SES.GetIdentityDkimAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current status of Easy DKIM signing for an entity. For domain name identities, this operation also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES has successfully verified that these tokens have been published.
--
--
-- This operation takes a list of identities as input and returns the following information for each:
--
--     * Whether Easy DKIM signing is enabled or disabled.
--
--     * A set of DKIM tokens that represent the identity. If the identity is an email address, the tokens represent the domain of that address.
--
--     * Whether Amazon SES has successfully verified the DKIM tokens published in the domain's DNS. This information is only returned for domain name identities, not for email addresses.
--
--
--
-- This operation is throttled at one request per second and can only get DKIM attributes for up to 100 identities at a time.
--
-- For more information about creating DNS records using DKIM tokens, go to the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html Amazon SES Developer Guide> .
module Network.AWS.SES.GetIdentityDkimAttributes
  ( -- * Creating a Request
    getIdentityDkimAttributes,
    GetIdentityDkimAttributes,

    -- * Request Lenses
    gidaIdentities,

    -- * Destructuring the Response
    getIdentityDkimAttributesResponse,
    GetIdentityDkimAttributesResponse,

    -- * Response Lenses
    gidarrsResponseStatus,
    gidarrsDkimAttributes,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | Represents a request for the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this request also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published. For more information about Easy DKIM, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html Amazon SES Developer Guide> .
--
--
--
-- /See:/ 'getIdentityDkimAttributes' smart constructor.
newtype GetIdentityDkimAttributes = GetIdentityDkimAttributes'
  { _gidaIdentities ::
      [Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetIdentityDkimAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gidaIdentities' - A list of one or more verified identities - email addresses, domains, or both.
getIdentityDkimAttributes ::
  GetIdentityDkimAttributes
getIdentityDkimAttributes =
  GetIdentityDkimAttributes'
    { _gidaIdentities =
        mempty
    }

-- | A list of one or more verified identities - email addresses, domains, or both.
gidaIdentities :: Lens' GetIdentityDkimAttributes [Text]
gidaIdentities = lens _gidaIdentities (\s a -> s {_gidaIdentities = a}) . _Coerce

instance AWSRequest GetIdentityDkimAttributes where
  type
    Rs GetIdentityDkimAttributes =
      GetIdentityDkimAttributesResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "GetIdentityDkimAttributesResult"
      ( \s h x ->
          GetIdentityDkimAttributesResponse'
            <$> (pure (fromEnum s))
            <*> ( x .@? "DkimAttributes" .!@ mempty
                    >>= parseXMLMap "entry" "key" "value"
                )
      )

instance Hashable GetIdentityDkimAttributes

instance NFData GetIdentityDkimAttributes

instance ToHeaders GetIdentityDkimAttributes where
  toHeaders = const mempty

instance ToPath GetIdentityDkimAttributes where
  toPath = const "/"

instance ToQuery GetIdentityDkimAttributes where
  toQuery GetIdentityDkimAttributes' {..} =
    mconcat
      [ "Action"
          =: ("GetIdentityDkimAttributes" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "Identities" =: toQueryList "member" _gidaIdentities
      ]

-- | Represents the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this response also contains the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published.
--
--
--
-- /See:/ 'getIdentityDkimAttributesResponse' smart constructor.
data GetIdentityDkimAttributesResponse = GetIdentityDkimAttributesResponse'
  { _gidarrsResponseStatus ::
      !Int,
    _gidarrsDkimAttributes ::
      !( Map
           Text
           IdentityDkimAttributes
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetIdentityDkimAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gidarrsResponseStatus' - -- | The response status code.
--
-- * 'gidarrsDkimAttributes' - The DKIM attributes for an email address or a domain.
getIdentityDkimAttributesResponse ::
  -- | 'gidarrsResponseStatus'
  Int ->
  GetIdentityDkimAttributesResponse
getIdentityDkimAttributesResponse pResponseStatus_ =
  GetIdentityDkimAttributesResponse'
    { _gidarrsResponseStatus =
        pResponseStatus_,
      _gidarrsDkimAttributes = mempty
    }

-- | -- | The response status code.
gidarrsResponseStatus :: Lens' GetIdentityDkimAttributesResponse Int
gidarrsResponseStatus = lens _gidarrsResponseStatus (\s a -> s {_gidarrsResponseStatus = a})

-- | The DKIM attributes for an email address or a domain.
gidarrsDkimAttributes :: Lens' GetIdentityDkimAttributesResponse (HashMap Text IdentityDkimAttributes)
gidarrsDkimAttributes = lens _gidarrsDkimAttributes (\s a -> s {_gidarrsDkimAttributes = a}) . _Map

instance NFData GetIdentityDkimAttributesResponse
