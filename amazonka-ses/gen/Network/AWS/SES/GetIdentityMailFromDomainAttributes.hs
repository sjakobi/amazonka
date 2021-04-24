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
-- Module      : Network.AWS.SES.GetIdentityMailFromDomainAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the custom MAIL FROM attributes for a list of identities (email addresses : domains).
--
--
-- This operation is throttled at one request per second and can only get custom MAIL FROM attributes for up to 100 identities at a time.
module Network.AWS.SES.GetIdentityMailFromDomainAttributes
  ( -- * Creating a Request
    getIdentityMailFromDomainAttributes,
    GetIdentityMailFromDomainAttributes,

    -- * Request Lenses
    gimfdaIdentities,

    -- * Destructuring the Response
    getIdentityMailFromDomainAttributesResponse,
    GetIdentityMailFromDomainAttributesResponse,

    -- * Response Lenses
    gimfdarrsResponseStatus,
    gimfdarrsMailFromDomainAttributes,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | Represents a request to return the Amazon SES custom MAIL FROM attributes for a list of identities. For information about using a custom MAIL FROM domain, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html Amazon SES Developer Guide> .
--
--
--
-- /See:/ 'getIdentityMailFromDomainAttributes' smart constructor.
newtype GetIdentityMailFromDomainAttributes = GetIdentityMailFromDomainAttributes'
  { _gimfdaIdentities ::
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

-- | Creates a value of 'GetIdentityMailFromDomainAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gimfdaIdentities' - A list of one or more identities.
getIdentityMailFromDomainAttributes ::
  GetIdentityMailFromDomainAttributes
getIdentityMailFromDomainAttributes =
  GetIdentityMailFromDomainAttributes'
    { _gimfdaIdentities =
        mempty
    }

-- | A list of one or more identities.
gimfdaIdentities :: Lens' GetIdentityMailFromDomainAttributes [Text]
gimfdaIdentities = lens _gimfdaIdentities (\s a -> s {_gimfdaIdentities = a}) . _Coerce

instance
  AWSRequest
    GetIdentityMailFromDomainAttributes
  where
  type
    Rs GetIdentityMailFromDomainAttributes =
      GetIdentityMailFromDomainAttributesResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "GetIdentityMailFromDomainAttributesResult"
      ( \s h x ->
          GetIdentityMailFromDomainAttributesResponse'
            <$> (pure (fromEnum s))
            <*> ( x .@? "MailFromDomainAttributes" .!@ mempty
                    >>= parseXMLMap "entry" "key" "value"
                )
      )

instance Hashable GetIdentityMailFromDomainAttributes

instance NFData GetIdentityMailFromDomainAttributes

instance
  ToHeaders
    GetIdentityMailFromDomainAttributes
  where
  toHeaders = const mempty

instance ToPath GetIdentityMailFromDomainAttributes where
  toPath = const "/"

instance ToQuery GetIdentityMailFromDomainAttributes where
  toQuery GetIdentityMailFromDomainAttributes' {..} =
    mconcat
      [ "Action"
          =: ( "GetIdentityMailFromDomainAttributes" ::
                 ByteString
             ),
        "Version" =: ("2010-12-01" :: ByteString),
        "Identities"
          =: toQueryList "member" _gimfdaIdentities
      ]

-- | Represents the custom MAIL FROM attributes for a list of identities.
--
--
--
-- /See:/ 'getIdentityMailFromDomainAttributesResponse' smart constructor.
data GetIdentityMailFromDomainAttributesResponse = GetIdentityMailFromDomainAttributesResponse'
  { _gimfdarrsResponseStatus ::
      !Int,
    _gimfdarrsMailFromDomainAttributes ::
      !( Map
           Text
           IdentityMailFromDomainAttributes
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

-- | Creates a value of 'GetIdentityMailFromDomainAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gimfdarrsResponseStatus' - -- | The response status code.
--
-- * 'gimfdarrsMailFromDomainAttributes' - A map of identities to custom MAIL FROM attributes.
getIdentityMailFromDomainAttributesResponse ::
  -- | 'gimfdarrsResponseStatus'
  Int ->
  GetIdentityMailFromDomainAttributesResponse
getIdentityMailFromDomainAttributesResponse
  pResponseStatus_ =
    GetIdentityMailFromDomainAttributesResponse'
      { _gimfdarrsResponseStatus =
          pResponseStatus_,
        _gimfdarrsMailFromDomainAttributes =
          mempty
      }

-- | -- | The response status code.
gimfdarrsResponseStatus :: Lens' GetIdentityMailFromDomainAttributesResponse Int
gimfdarrsResponseStatus = lens _gimfdarrsResponseStatus (\s a -> s {_gimfdarrsResponseStatus = a})

-- | A map of identities to custom MAIL FROM attributes.
gimfdarrsMailFromDomainAttributes :: Lens' GetIdentityMailFromDomainAttributesResponse (HashMap Text IdentityMailFromDomainAttributes)
gimfdarrsMailFromDomainAttributes = lens _gimfdarrsMailFromDomainAttributes (\s a -> s {_gimfdarrsMailFromDomainAttributes = a}) . _Map

instance
  NFData
    GetIdentityMailFromDomainAttributesResponse
