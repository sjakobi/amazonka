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
-- Module      : Network.AWS.Route53Domains.RegisterDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation registers a domain. Domains are registered either by Amazon Registrar (for .com, .net, and .org domains) or by our registrar associate, Gandi (for all other domains). For some top-level domains (TLDs), this operation requires extra parameters.
--
--
-- When you register a domain, Amazon Route 53 does the following:
--
--     * Creates a Route 53 hosted zone that has the same name as the domain. Route 53 assigns four name servers to your hosted zone and automatically updates your domain registration with the names of these name servers.
--
--     * Enables autorenew, so your domain registration will renew automatically each year. We'll notify you in advance of the renewal date so you can choose whether to renew the registration.
--
--     * Optionally enables privacy protection, so WHOIS queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you don't enable privacy protection, WHOIS queries return the information that you entered for the registrant, admin, and tech contacts.
--
--     * If registration is successful, returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant is notified by email.
--
--     * Charges your AWS account an amount based on the top-level domain. For more information, see <http://aws.amazon.com/route53/pricing/ Amazon Route 53 Pricing> .
module Network.AWS.Route53Domains.RegisterDomain
  ( -- * Creating a Request
    registerDomain,
    RegisterDomain,

    -- * Request Lenses
    rdAutoRenew,
    rdIdNLangCode,
    rdPrivacyProtectTechContact,
    rdPrivacyProtectRegistrantContact,
    rdPrivacyProtectAdminContact,
    rdDomainName,
    rdDurationInYears,
    rdAdminContact,
    rdRegistrantContact,
    rdTechContact,

    -- * Destructuring the Response
    registerDomainResponse,
    RegisterDomainResponse,

    -- * Response Lenses
    rdrrsResponseStatus,
    rdrrsOperationId,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | The RegisterDomain request includes the following elements.
--
--
--
-- /See:/ 'registerDomain' smart constructor.
data RegisterDomain = RegisterDomain'
  { _rdAutoRenew ::
      !(Maybe Bool),
    _rdIdNLangCode :: !(Maybe Text),
    _rdPrivacyProtectTechContact ::
      !(Maybe Bool),
    _rdPrivacyProtectRegistrantContact ::
      !(Maybe Bool),
    _rdPrivacyProtectAdminContact ::
      !(Maybe Bool),
    _rdDomainName :: !Text,
    _rdDurationInYears :: !Nat,
    _rdAdminContact ::
      !(Sensitive ContactDetail),
    _rdRegistrantContact ::
      !(Sensitive ContactDetail),
    _rdTechContact ::
      !(Sensitive ContactDetail)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RegisterDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdAutoRenew' - Indicates whether the domain will be automatically renewed (@true@ ) or not (@false@ ). Autorenewal only takes effect after the account is charged. Default: @true@
--
-- * 'rdIdNLangCode' - Reserved for future use.
--
-- * 'rdPrivacyProtectTechContact' - Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the technical contact. Default: @true@
--
-- * 'rdPrivacyProtectRegistrantContact' - Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the registrant contact (the domain owner). Default: @true@
--
-- * 'rdPrivacyProtectAdminContact' - Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the admin contact. Default: @true@
--
-- * 'rdDomainName' - The domain name that you want to register. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> in the /Amazon Route 53 Developer Guide/ . The domain name can contain only the following characters:     * Letters a through z. Domain names are not case sensitive.     * Numbers 0 through 9.     * Hyphen (-). You can't specify a hyphen at the beginning or end of a label.      * Period (.) to separate the labels in the name, such as the @.@ in @example.com@ . Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports internationalized domain names, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> . For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns Formatting Internationalized Domain Names> .
--
-- * 'rdDurationInYears' - The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. For the range of valid values for your domain, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> in the /Amazon Route 53 Developer Guide/ . Default: 1
--
-- * 'rdAdminContact' - Provides detailed contact information. For information about the values that you specify for each element, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html ContactDetail> .
--
-- * 'rdRegistrantContact' - Provides detailed contact information. For information about the values that you specify for each element, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html ContactDetail> .
--
-- * 'rdTechContact' - Provides detailed contact information. For information about the values that you specify for each element, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html ContactDetail> .
registerDomain ::
  -- | 'rdDomainName'
  Text ->
  -- | 'rdDurationInYears'
  Natural ->
  -- | 'rdAdminContact'
  ContactDetail ->
  -- | 'rdRegistrantContact'
  ContactDetail ->
  -- | 'rdTechContact'
  ContactDetail ->
  RegisterDomain
registerDomain
  pDomainName_
  pDurationInYears_
  pAdminContact_
  pRegistrantContact_
  pTechContact_ =
    RegisterDomain'
      { _rdAutoRenew = Nothing,
        _rdIdNLangCode = Nothing,
        _rdPrivacyProtectTechContact = Nothing,
        _rdPrivacyProtectRegistrantContact = Nothing,
        _rdPrivacyProtectAdminContact = Nothing,
        _rdDomainName = pDomainName_,
        _rdDurationInYears = _Nat # pDurationInYears_,
        _rdAdminContact = _Sensitive # pAdminContact_,
        _rdRegistrantContact =
          _Sensitive # pRegistrantContact_,
        _rdTechContact = _Sensitive # pTechContact_
      }

-- | Indicates whether the domain will be automatically renewed (@true@ ) or not (@false@ ). Autorenewal only takes effect after the account is charged. Default: @true@
rdAutoRenew :: Lens' RegisterDomain (Maybe Bool)
rdAutoRenew = lens _rdAutoRenew (\s a -> s {_rdAutoRenew = a})

-- | Reserved for future use.
rdIdNLangCode :: Lens' RegisterDomain (Maybe Text)
rdIdNLangCode = lens _rdIdNLangCode (\s a -> s {_rdIdNLangCode = a})

-- | Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the technical contact. Default: @true@
rdPrivacyProtectTechContact :: Lens' RegisterDomain (Maybe Bool)
rdPrivacyProtectTechContact = lens _rdPrivacyProtectTechContact (\s a -> s {_rdPrivacyProtectTechContact = a})

-- | Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the registrant contact (the domain owner). Default: @true@
rdPrivacyProtectRegistrantContact :: Lens' RegisterDomain (Maybe Bool)
rdPrivacyProtectRegistrantContact = lens _rdPrivacyProtectRegistrantContact (\s a -> s {_rdPrivacyProtectRegistrantContact = a})

-- | Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the admin contact. Default: @true@
rdPrivacyProtectAdminContact :: Lens' RegisterDomain (Maybe Bool)
rdPrivacyProtectAdminContact = lens _rdPrivacyProtectAdminContact (\s a -> s {_rdPrivacyProtectAdminContact = a})

-- | The domain name that you want to register. The top-level domain (TLD), such as .com, must be a TLD that Route 53 supports. For a list of supported TLDs, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> in the /Amazon Route 53 Developer Guide/ . The domain name can contain only the following characters:     * Letters a through z. Domain names are not case sensitive.     * Numbers 0 through 9.     * Hyphen (-). You can't specify a hyphen at the beginning or end of a label.      * Period (.) to separate the labels in the name, such as the @.@ in @example.com@ . Internationalized domain names are not supported for some top-level domains. To determine whether the TLD that you want to use supports internationalized domain names, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> . For more information, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns Formatting Internationalized Domain Names> .
rdDomainName :: Lens' RegisterDomain Text
rdDomainName = lens _rdDomainName (\s a -> s {_rdDomainName = a})

-- | The number of years that you want to register the domain for. Domains are registered for a minimum of one year. The maximum period depends on the top-level domain. For the range of valid values for your domain, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> in the /Amazon Route 53 Developer Guide/ . Default: 1
rdDurationInYears :: Lens' RegisterDomain Natural
rdDurationInYears = lens _rdDurationInYears (\s a -> s {_rdDurationInYears = a}) . _Nat

-- | Provides detailed contact information. For information about the values that you specify for each element, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html ContactDetail> .
rdAdminContact :: Lens' RegisterDomain ContactDetail
rdAdminContact = lens _rdAdminContact (\s a -> s {_rdAdminContact = a}) . _Sensitive

-- | Provides detailed contact information. For information about the values that you specify for each element, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html ContactDetail> .
rdRegistrantContact :: Lens' RegisterDomain ContactDetail
rdRegistrantContact = lens _rdRegistrantContact (\s a -> s {_rdRegistrantContact = a}) . _Sensitive

-- | Provides detailed contact information. For information about the values that you specify for each element, see <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ContactDetail.html ContactDetail> .
rdTechContact :: Lens' RegisterDomain ContactDetail
rdTechContact = lens _rdTechContact (\s a -> s {_rdTechContact = a}) . _Sensitive

instance AWSRequest RegisterDomain where
  type Rs RegisterDomain = RegisterDomainResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          RegisterDomainResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "OperationId")
      )

instance Hashable RegisterDomain

instance NFData RegisterDomain

instance ToHeaders RegisterDomain where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.RegisterDomain" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RegisterDomain where
  toJSON RegisterDomain' {..} =
    object
      ( catMaybes
          [ ("AutoRenew" .=) <$> _rdAutoRenew,
            ("IdnLangCode" .=) <$> _rdIdNLangCode,
            ("PrivacyProtectTechContact" .=)
              <$> _rdPrivacyProtectTechContact,
            ("PrivacyProtectRegistrantContact" .=)
              <$> _rdPrivacyProtectRegistrantContact,
            ("PrivacyProtectAdminContact" .=)
              <$> _rdPrivacyProtectAdminContact,
            Just ("DomainName" .= _rdDomainName),
            Just ("DurationInYears" .= _rdDurationInYears),
            Just ("AdminContact" .= _rdAdminContact),
            Just ("RegistrantContact" .= _rdRegistrantContact),
            Just ("TechContact" .= _rdTechContact)
          ]
      )

instance ToPath RegisterDomain where
  toPath = const "/"

instance ToQuery RegisterDomain where
  toQuery = const mempty

-- | The RegisterDomain response includes the following element.
--
--
--
-- /See:/ 'registerDomainResponse' smart constructor.
data RegisterDomainResponse = RegisterDomainResponse'
  { _rdrrsResponseStatus ::
      !Int,
    _rdrrsOperationId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RegisterDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdrrsResponseStatus' - -- | The response status code.
--
-- * 'rdrrsOperationId' - Identifier for tracking the progress of the request. To query the operation status, use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html GetOperationDetail> .
registerDomainResponse ::
  -- | 'rdrrsResponseStatus'
  Int ->
  -- | 'rdrrsOperationId'
  Text ->
  RegisterDomainResponse
registerDomainResponse pResponseStatus_ pOperationId_ =
  RegisterDomainResponse'
    { _rdrrsResponseStatus =
        pResponseStatus_,
      _rdrrsOperationId = pOperationId_
    }

-- | -- | The response status code.
rdrrsResponseStatus :: Lens' RegisterDomainResponse Int
rdrrsResponseStatus = lens _rdrrsResponseStatus (\s a -> s {_rdrrsResponseStatus = a})

-- | Identifier for tracking the progress of the request. To query the operation status, use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html GetOperationDetail> .
rdrrsOperationId :: Lens' RegisterDomainResponse Text
rdrrsOperationId = lens _rdrrsOperationId (\s a -> s {_rdrrsOperationId = a})

instance NFData RegisterDomainResponse
