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
-- Module      : Network.AWS.Route53Domains.GetDomainDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation returns detailed information about a specified domain that is associated with the current AWS account. Contact information for the domain is also returned as part of the output.
module Network.AWS.Route53Domains.GetDomainDetail
  ( -- * Creating a Request
    getDomainDetail,
    GetDomainDetail,

    -- * Request Lenses
    gddDomainName,

    -- * Destructuring the Response
    getDomainDetailResponse,
    GetDomainDetailResponse,

    -- * Response Lenses
    gddrrsDNSSec,
    gddrrsAbuseContactPhone,
    gddrrsAutoRenew,
    gddrrsAbuseContactEmail,
    gddrrsAdminPrivacy,
    gddrrsStatusList,
    gddrrsReseller,
    gddrrsRegistrarName,
    gddrrsRegistryDomainId,
    gddrrsCreationDate,
    gddrrsExpirationDate,
    gddrrsWhoIsServer,
    gddrrsRegistrarURL,
    gddrrsTechPrivacy,
    gddrrsRegistrantPrivacy,
    gddrrsUpdatedDate,
    gddrrsResponseStatus,
    gddrrsDomainName,
    gddrrsNameservers,
    gddrrsAdminContact,
    gddrrsRegistrantContact,
    gddrrsTechContact,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | The GetDomainDetail request includes the following element.
--
--
--
-- /See:/ 'getDomainDetail' smart constructor.
newtype GetDomainDetail = GetDomainDetail'
  { _gddDomainName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDomainDetail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddDomainName' - The name of the domain that you want to get detailed information about.
getDomainDetail ::
  -- | 'gddDomainName'
  Text ->
  GetDomainDetail
getDomainDetail pDomainName_ =
  GetDomainDetail' {_gddDomainName = pDomainName_}

-- | The name of the domain that you want to get detailed information about.
gddDomainName :: Lens' GetDomainDetail Text
gddDomainName = lens _gddDomainName (\s a -> s {_gddDomainName = a})

instance AWSRequest GetDomainDetail where
  type Rs GetDomainDetail = GetDomainDetailResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          GetDomainDetailResponse'
            <$> (x .?> "DnsSec")
            <*> (x .?> "AbuseContactPhone")
            <*> (x .?> "AutoRenew")
            <*> (x .?> "AbuseContactEmail")
            <*> (x .?> "AdminPrivacy")
            <*> (x .?> "StatusList" .!@ mempty)
            <*> (x .?> "Reseller")
            <*> (x .?> "RegistrarName")
            <*> (x .?> "RegistryDomainId")
            <*> (x .?> "CreationDate")
            <*> (x .?> "ExpirationDate")
            <*> (x .?> "WhoIsServer")
            <*> (x .?> "RegistrarUrl")
            <*> (x .?> "TechPrivacy")
            <*> (x .?> "RegistrantPrivacy")
            <*> (x .?> "UpdatedDate")
            <*> (pure (fromEnum s))
            <*> (x .:> "DomainName")
            <*> (x .?> "Nameservers" .!@ mempty)
            <*> (x .:> "AdminContact")
            <*> (x .:> "RegistrantContact")
            <*> (x .:> "TechContact")
      )

instance Hashable GetDomainDetail

instance NFData GetDomainDetail

instance ToHeaders GetDomainDetail where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.GetDomainDetail" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetDomainDetail where
  toJSON GetDomainDetail' {..} =
    object
      (catMaybes [Just ("DomainName" .= _gddDomainName)])

instance ToPath GetDomainDetail where
  toPath = const "/"

instance ToQuery GetDomainDetail where
  toQuery = const mempty

-- | The GetDomainDetail response includes the following elements.
--
--
--
-- /See:/ 'getDomainDetailResponse' smart constructor.
data GetDomainDetailResponse = GetDomainDetailResponse'
  { _gddrrsDNSSec ::
      !(Maybe Text),
    _gddrrsAbuseContactPhone ::
      !(Maybe Text),
    _gddrrsAutoRenew ::
      !(Maybe Bool),
    _gddrrsAbuseContactEmail ::
      !(Maybe Text),
    _gddrrsAdminPrivacy ::
      !(Maybe Bool),
    _gddrrsStatusList ::
      !(Maybe [Text]),
    _gddrrsReseller ::
      !(Maybe Text),
    _gddrrsRegistrarName ::
      !(Maybe Text),
    _gddrrsRegistryDomainId ::
      !(Maybe Text),
    _gddrrsCreationDate ::
      !(Maybe POSIX),
    _gddrrsExpirationDate ::
      !(Maybe POSIX),
    _gddrrsWhoIsServer ::
      !(Maybe Text),
    _gddrrsRegistrarURL ::
      !(Maybe Text),
    _gddrrsTechPrivacy ::
      !(Maybe Bool),
    _gddrrsRegistrantPrivacy ::
      !(Maybe Bool),
    _gddrrsUpdatedDate ::
      !(Maybe POSIX),
    _gddrrsResponseStatus ::
      !Int,
    _gddrrsDomainName ::
      !Text,
    _gddrrsNameservers ::
      ![Nameserver],
    _gddrrsAdminContact ::
      !( Sensitive
           ContactDetail
       ),
    _gddrrsRegistrantContact ::
      !( Sensitive
           ContactDetail
       ),
    _gddrrsTechContact ::
      !( Sensitive
           ContactDetail
       )
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDomainDetailResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gddrrsDNSSec' - Reserved for future use.
--
-- * 'gddrrsAbuseContactPhone' - Phone number for reporting abuse.
--
-- * 'gddrrsAutoRenew' - Specifies whether the domain registration is set to renew automatically.
--
-- * 'gddrrsAbuseContactEmail' - Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
--
-- * 'gddrrsAdminPrivacy' - Specifies whether contact information is concealed from WHOIS queries. If the value is @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If the value is @false@ , WHOIS queries return the information that you entered for the admin contact.
--
-- * 'gddrrsStatusList' - An array of domain name status codes, also known as Extensible Provisioning Protocol (EPP) status codes. ICANN, the organization that maintains a central database of domain names, has developed a set of domain name status codes that tell you the status of a variety of operations on a domain name, for example, registering a domain name, transferring a domain name to another registrar, renewing the registration for a domain name, and so on. All registrars use this same set of status codes. For a current list of domain name status codes and an explanation of what each code means, go to the <https://www.icann.org/ ICANN website> and search for @epp status codes@ . (Search on the ICANN website; web searches sometimes return an old version of the document.)
--
-- * 'gddrrsReseller' - Reseller of the domain. Domains registered or transferred using Route 53 domains will have @"Amazon"@ as the reseller.
--
-- * 'gddrrsRegistrarName' - Name of the registrar of the domain as identified in the registry. Domains with a .com, .net, or .org TLD are registered by Amazon Registrar. All other domains are registered by our registrar associate, Gandi. The value for domains that are registered by Gandi is @"GANDI SAS"@ .
--
-- * 'gddrrsRegistryDomainId' - Reserved for future use.
--
-- * 'gddrrsCreationDate' - The date when the domain was created as found in the response to a WHOIS query. The date and time is in Unix time format and Coordinated Universal time (UTC).
--
-- * 'gddrrsExpirationDate' - The date when the registration for the domain is set to expire. The date and time is in Unix time format and Coordinated Universal time (UTC).
--
-- * 'gddrrsWhoIsServer' - The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
--
-- * 'gddrrsRegistrarURL' - Web address of the registrar.
--
-- * 'gddrrsTechPrivacy' - Specifies whether contact information is concealed from WHOIS queries. If the value is @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If the value is @false@ , WHOIS queries return the information that you entered for the technical contact.
--
-- * 'gddrrsRegistrantPrivacy' - Specifies whether contact information is concealed from WHOIS queries. If the value is @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If the value is @false@ , WHOIS queries return the information that you entered for the registrant contact (domain owner).
--
-- * 'gddrrsUpdatedDate' - The last updated date of the domain as found in the response to a WHOIS query. The date and time is in Unix time format and Coordinated Universal time (UTC).
--
-- * 'gddrrsResponseStatus' - -- | The response status code.
--
-- * 'gddrrsDomainName' - The name of a domain.
--
-- * 'gddrrsNameservers' - The name of the domain.
--
-- * 'gddrrsAdminContact' - Provides details about the domain administrative contact.
--
-- * 'gddrrsRegistrantContact' - Provides details about the domain registrant.
--
-- * 'gddrrsTechContact' - Provides details about the domain technical contact.
getDomainDetailResponse ::
  -- | 'gddrrsResponseStatus'
  Int ->
  -- | 'gddrrsDomainName'
  Text ->
  -- | 'gddrrsAdminContact'
  ContactDetail ->
  -- | 'gddrrsRegistrantContact'
  ContactDetail ->
  -- | 'gddrrsTechContact'
  ContactDetail ->
  GetDomainDetailResponse
getDomainDetailResponse
  pResponseStatus_
  pDomainName_
  pAdminContact_
  pRegistrantContact_
  pTechContact_ =
    GetDomainDetailResponse'
      { _gddrrsDNSSec = Nothing,
        _gddrrsAbuseContactPhone = Nothing,
        _gddrrsAutoRenew = Nothing,
        _gddrrsAbuseContactEmail = Nothing,
        _gddrrsAdminPrivacy = Nothing,
        _gddrrsStatusList = Nothing,
        _gddrrsReseller = Nothing,
        _gddrrsRegistrarName = Nothing,
        _gddrrsRegistryDomainId = Nothing,
        _gddrrsCreationDate = Nothing,
        _gddrrsExpirationDate = Nothing,
        _gddrrsWhoIsServer = Nothing,
        _gddrrsRegistrarURL = Nothing,
        _gddrrsTechPrivacy = Nothing,
        _gddrrsRegistrantPrivacy = Nothing,
        _gddrrsUpdatedDate = Nothing,
        _gddrrsResponseStatus = pResponseStatus_,
        _gddrrsDomainName = pDomainName_,
        _gddrrsNameservers = mempty,
        _gddrrsAdminContact = _Sensitive # pAdminContact_,
        _gddrrsRegistrantContact =
          _Sensitive # pRegistrantContact_,
        _gddrrsTechContact = _Sensitive # pTechContact_
      }

-- | Reserved for future use.
gddrrsDNSSec :: Lens' GetDomainDetailResponse (Maybe Text)
gddrrsDNSSec = lens _gddrrsDNSSec (\s a -> s {_gddrrsDNSSec = a})

-- | Phone number for reporting abuse.
gddrrsAbuseContactPhone :: Lens' GetDomainDetailResponse (Maybe Text)
gddrrsAbuseContactPhone = lens _gddrrsAbuseContactPhone (\s a -> s {_gddrrsAbuseContactPhone = a})

-- | Specifies whether the domain registration is set to renew automatically.
gddrrsAutoRenew :: Lens' GetDomainDetailResponse (Maybe Bool)
gddrrsAutoRenew = lens _gddrrsAutoRenew (\s a -> s {_gddrrsAutoRenew = a})

-- | Email address to contact to report incorrect contact information for a domain, to report that the domain is being used to send spam, to report that someone is cybersquatting on a domain name, or report some other type of abuse.
gddrrsAbuseContactEmail :: Lens' GetDomainDetailResponse (Maybe Text)
gddrrsAbuseContactEmail = lens _gddrrsAbuseContactEmail (\s a -> s {_gddrrsAbuseContactEmail = a})

-- | Specifies whether contact information is concealed from WHOIS queries. If the value is @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If the value is @false@ , WHOIS queries return the information that you entered for the admin contact.
gddrrsAdminPrivacy :: Lens' GetDomainDetailResponse (Maybe Bool)
gddrrsAdminPrivacy = lens _gddrrsAdminPrivacy (\s a -> s {_gddrrsAdminPrivacy = a})

-- | An array of domain name status codes, also known as Extensible Provisioning Protocol (EPP) status codes. ICANN, the organization that maintains a central database of domain names, has developed a set of domain name status codes that tell you the status of a variety of operations on a domain name, for example, registering a domain name, transferring a domain name to another registrar, renewing the registration for a domain name, and so on. All registrars use this same set of status codes. For a current list of domain name status codes and an explanation of what each code means, go to the <https://www.icann.org/ ICANN website> and search for @epp status codes@ . (Search on the ICANN website; web searches sometimes return an old version of the document.)
gddrrsStatusList :: Lens' GetDomainDetailResponse [Text]
gddrrsStatusList = lens _gddrrsStatusList (\s a -> s {_gddrrsStatusList = a}) . _Default . _Coerce

-- | Reseller of the domain. Domains registered or transferred using Route 53 domains will have @"Amazon"@ as the reseller.
gddrrsReseller :: Lens' GetDomainDetailResponse (Maybe Text)
gddrrsReseller = lens _gddrrsReseller (\s a -> s {_gddrrsReseller = a})

-- | Name of the registrar of the domain as identified in the registry. Domains with a .com, .net, or .org TLD are registered by Amazon Registrar. All other domains are registered by our registrar associate, Gandi. The value for domains that are registered by Gandi is @"GANDI SAS"@ .
gddrrsRegistrarName :: Lens' GetDomainDetailResponse (Maybe Text)
gddrrsRegistrarName = lens _gddrrsRegistrarName (\s a -> s {_gddrrsRegistrarName = a})

-- | Reserved for future use.
gddrrsRegistryDomainId :: Lens' GetDomainDetailResponse (Maybe Text)
gddrrsRegistryDomainId = lens _gddrrsRegistryDomainId (\s a -> s {_gddrrsRegistryDomainId = a})

-- | The date when the domain was created as found in the response to a WHOIS query. The date and time is in Unix time format and Coordinated Universal time (UTC).
gddrrsCreationDate :: Lens' GetDomainDetailResponse (Maybe UTCTime)
gddrrsCreationDate = lens _gddrrsCreationDate (\s a -> s {_gddrrsCreationDate = a}) . mapping _Time

-- | The date when the registration for the domain is set to expire. The date and time is in Unix time format and Coordinated Universal time (UTC).
gddrrsExpirationDate :: Lens' GetDomainDetailResponse (Maybe UTCTime)
gddrrsExpirationDate = lens _gddrrsExpirationDate (\s a -> s {_gddrrsExpirationDate = a}) . mapping _Time

-- | The fully qualified name of the WHOIS server that can answer the WHOIS query for the domain.
gddrrsWhoIsServer :: Lens' GetDomainDetailResponse (Maybe Text)
gddrrsWhoIsServer = lens _gddrrsWhoIsServer (\s a -> s {_gddrrsWhoIsServer = a})

-- | Web address of the registrar.
gddrrsRegistrarURL :: Lens' GetDomainDetailResponse (Maybe Text)
gddrrsRegistrarURL = lens _gddrrsRegistrarURL (\s a -> s {_gddrrsRegistrarURL = a})

-- | Specifies whether contact information is concealed from WHOIS queries. If the value is @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If the value is @false@ , WHOIS queries return the information that you entered for the technical contact.
gddrrsTechPrivacy :: Lens' GetDomainDetailResponse (Maybe Bool)
gddrrsTechPrivacy = lens _gddrrsTechPrivacy (\s a -> s {_gddrrsTechPrivacy = a})

-- | Specifies whether contact information is concealed from WHOIS queries. If the value is @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If the value is @false@ , WHOIS queries return the information that you entered for the registrant contact (domain owner).
gddrrsRegistrantPrivacy :: Lens' GetDomainDetailResponse (Maybe Bool)
gddrrsRegistrantPrivacy = lens _gddrrsRegistrantPrivacy (\s a -> s {_gddrrsRegistrantPrivacy = a})

-- | The last updated date of the domain as found in the response to a WHOIS query. The date and time is in Unix time format and Coordinated Universal time (UTC).
gddrrsUpdatedDate :: Lens' GetDomainDetailResponse (Maybe UTCTime)
gddrrsUpdatedDate = lens _gddrrsUpdatedDate (\s a -> s {_gddrrsUpdatedDate = a}) . mapping _Time

-- | -- | The response status code.
gddrrsResponseStatus :: Lens' GetDomainDetailResponse Int
gddrrsResponseStatus = lens _gddrrsResponseStatus (\s a -> s {_gddrrsResponseStatus = a})

-- | The name of a domain.
gddrrsDomainName :: Lens' GetDomainDetailResponse Text
gddrrsDomainName = lens _gddrrsDomainName (\s a -> s {_gddrrsDomainName = a})

-- | The name of the domain.
gddrrsNameservers :: Lens' GetDomainDetailResponse [Nameserver]
gddrrsNameservers = lens _gddrrsNameservers (\s a -> s {_gddrrsNameservers = a}) . _Coerce

-- | Provides details about the domain administrative contact.
gddrrsAdminContact :: Lens' GetDomainDetailResponse ContactDetail
gddrrsAdminContact = lens _gddrrsAdminContact (\s a -> s {_gddrrsAdminContact = a}) . _Sensitive

-- | Provides details about the domain registrant.
gddrrsRegistrantContact :: Lens' GetDomainDetailResponse ContactDetail
gddrrsRegistrantContact = lens _gddrrsRegistrantContact (\s a -> s {_gddrrsRegistrantContact = a}) . _Sensitive

-- | Provides details about the domain technical contact.
gddrrsTechContact :: Lens' GetDomainDetailResponse ContactDetail
gddrrsTechContact = lens _gddrrsTechContact (\s a -> s {_gddrrsTechContact = a}) . _Sensitive

instance NFData GetDomainDetailResponse
