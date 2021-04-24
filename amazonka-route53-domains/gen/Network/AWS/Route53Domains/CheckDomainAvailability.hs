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
-- Module      : Network.AWS.Route53Domains.CheckDomainAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation checks the availability of one domain name. Note that if the availability status of a domain is pending, you must submit another request to determine the availability of the domain name.
module Network.AWS.Route53Domains.CheckDomainAvailability
  ( -- * Creating a Request
    checkDomainAvailability,
    CheckDomainAvailability,

    -- * Request Lenses
    cdaIdNLangCode,
    cdaDomainName,

    -- * Destructuring the Response
    checkDomainAvailabilityResponse,
    CheckDomainAvailabilityResponse,

    -- * Response Lenses
    cdarrsResponseStatus,
    cdarrsAvailability,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | The CheckDomainAvailability request contains the following elements.
--
--
--
-- /See:/ 'checkDomainAvailability' smart constructor.
data CheckDomainAvailability = CheckDomainAvailability'
  { _cdaIdNLangCode ::
      !(Maybe Text),
    _cdaDomainName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CheckDomainAvailability' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdaIdNLangCode' - Reserved for future use.
--
-- * 'cdaDomainName' - The name of the domain that you want to get availability for. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> in the /Amazon Route 53 Developer Guide/ . The domain name can contain only the following characters:     * Letters a through z. Domain names are not case sensitive.     * Numbers 0 through 9.     * Hyphen (-). You can't specify a hyphen at the beginning or end of a label.      * Period (.) to separate the labels in the name, such as the @.@ in @example.com@ . Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports internationalized domain names, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> . For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns Formatting Internationalized Domain Names> .
checkDomainAvailability ::
  -- | 'cdaDomainName'
  Text ->
  CheckDomainAvailability
checkDomainAvailability pDomainName_ =
  CheckDomainAvailability'
    { _cdaIdNLangCode = Nothing,
      _cdaDomainName = pDomainName_
    }

-- | Reserved for future use.
cdaIdNLangCode :: Lens' CheckDomainAvailability (Maybe Text)
cdaIdNLangCode = lens _cdaIdNLangCode (\s a -> s {_cdaIdNLangCode = a})

-- | The name of the domain that you want to get availability for. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> in the /Amazon Route 53 Developer Guide/ . The domain name can contain only the following characters:     * Letters a through z. Domain names are not case sensitive.     * Numbers 0 through 9.     * Hyphen (-). You can't specify a hyphen at the beginning or end of a label.      * Period (.) to separate the labels in the name, such as the @.@ in @example.com@ . Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports internationalized domain names, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> . For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns Formatting Internationalized Domain Names> .
cdaDomainName :: Lens' CheckDomainAvailability Text
cdaDomainName = lens _cdaDomainName (\s a -> s {_cdaDomainName = a})

instance AWSRequest CheckDomainAvailability where
  type
    Rs CheckDomainAvailability =
      CheckDomainAvailabilityResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          CheckDomainAvailabilityResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "Availability")
      )

instance Hashable CheckDomainAvailability

instance NFData CheckDomainAvailability

instance ToHeaders CheckDomainAvailability where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.CheckDomainAvailability" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CheckDomainAvailability where
  toJSON CheckDomainAvailability' {..} =
    object
      ( catMaybes
          [ ("IdnLangCode" .=) <$> _cdaIdNLangCode,
            Just ("DomainName" .= _cdaDomainName)
          ]
      )

instance ToPath CheckDomainAvailability where
  toPath = const "/"

instance ToQuery CheckDomainAvailability where
  toQuery = const mempty

-- | The CheckDomainAvailability response includes the following elements.
--
--
--
-- /See:/ 'checkDomainAvailabilityResponse' smart constructor.
data CheckDomainAvailabilityResponse = CheckDomainAvailabilityResponse'
  { _cdarrsResponseStatus ::
      !Int,
    _cdarrsAvailability ::
      !DomainAvailability
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CheckDomainAvailabilityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdarrsResponseStatus' - -- | The response status code.
--
-- * 'cdarrsAvailability' - Whether the domain name is available for registering. Valid values:     * AVAILABLE    * The domain name is available.     * AVAILABLE_RESERVED    * The domain name is reserved under specific conditions.     * AVAILABLE_PREORDER    * The domain name is available and can be preordered.     * DONT_KNOW    * The TLD registry didn't reply with a definitive answer about whether the domain name is available. Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. Try again later.     * PENDING    * The TLD registry didn't return a response in the expected amount of time. When the response is delayed, it usually takes just a few extra seconds. You can resubmit the request immediately.     * RESERVED    * The domain name has been reserved for another person or organization.     * UNAVAILABLE    * The domain name is not available.     * UNAVAILABLE_PREMIUM    * The domain name is not available.     * UNAVAILABLE_RESTRICTED    * The domain name is forbidden.
checkDomainAvailabilityResponse ::
  -- | 'cdarrsResponseStatus'
  Int ->
  -- | 'cdarrsAvailability'
  DomainAvailability ->
  CheckDomainAvailabilityResponse
checkDomainAvailabilityResponse
  pResponseStatus_
  pAvailability_ =
    CheckDomainAvailabilityResponse'
      { _cdarrsResponseStatus =
          pResponseStatus_,
        _cdarrsAvailability = pAvailability_
      }

-- | -- | The response status code.
cdarrsResponseStatus :: Lens' CheckDomainAvailabilityResponse Int
cdarrsResponseStatus = lens _cdarrsResponseStatus (\s a -> s {_cdarrsResponseStatus = a})

-- | Whether the domain name is available for registering. Valid values:     * AVAILABLE    * The domain name is available.     * AVAILABLE_RESERVED    * The domain name is reserved under specific conditions.     * AVAILABLE_PREORDER    * The domain name is available and can be preordered.     * DONT_KNOW    * The TLD registry didn't reply with a definitive answer about whether the domain name is available. Route 53 can return this response for a variety of reasons, for example, the registry is performing maintenance. Try again later.     * PENDING    * The TLD registry didn't return a response in the expected amount of time. When the response is delayed, it usually takes just a few extra seconds. You can resubmit the request immediately.     * RESERVED    * The domain name has been reserved for another person or organization.     * UNAVAILABLE    * The domain name is not available.     * UNAVAILABLE_PREMIUM    * The domain name is not available.     * UNAVAILABLE_RESTRICTED    * The domain name is forbidden.
cdarrsAvailability :: Lens' CheckDomainAvailabilityResponse DomainAvailability
cdarrsAvailability = lens _cdarrsAvailability (\s a -> s {_cdarrsAvailability = a})

instance NFData CheckDomainAvailabilityResponse
