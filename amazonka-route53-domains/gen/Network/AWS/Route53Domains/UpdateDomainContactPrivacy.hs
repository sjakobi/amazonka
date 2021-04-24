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
-- Module      : Network.AWS.Route53Domains.UpdateDomainContactPrivacy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation updates the specified domain contact's privacy setting. When privacy protection is enabled, contact information such as email address is replaced either with contact information for Amazon Registrar (for .com, .net, and .org domains) or with contact information for our registrar associate, Gandi.
--
--
-- This operation affects only the contact information for the specified contact type (registrant, administrator, or tech). If the request succeeds, Amazon Route 53 returns an operation ID that you can use with <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html GetOperationDetail> to track the progress and completion of the action. If the request doesn't complete successfully, the domain registrant will be notified by email.
--
-- /Important:/ By disabling the privacy service via API, you consent to the publication of the contact information provided for this domain via the public WHOIS database. You certify that you are the registrant of this domain name and have the authority to make this decision. You may withdraw your consent at any time by enabling privacy protection using either @UpdateDomainContactPrivacy@ or the Route 53 console. Enabling privacy protection removes the contact information provided for this domain from the WHOIS database. For more information on our privacy practices, see <https://aws.amazon.com/privacy/ https://aws.amazon.com/privacy/> .
module Network.AWS.Route53Domains.UpdateDomainContactPrivacy
  ( -- * Creating a Request
    updateDomainContactPrivacy,
    UpdateDomainContactPrivacy,

    -- * Request Lenses
    udcpAdminPrivacy,
    udcpTechPrivacy,
    udcpRegistrantPrivacy,
    udcpDomainName,

    -- * Destructuring the Response
    updateDomainContactPrivacyResponse,
    UpdateDomainContactPrivacyResponse,

    -- * Response Lenses
    udcprrsResponseStatus,
    udcprrsOperationId,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | The UpdateDomainContactPrivacy request includes the following elements.
--
--
--
-- /See:/ 'updateDomainContactPrivacy' smart constructor.
data UpdateDomainContactPrivacy = UpdateDomainContactPrivacy'
  { _udcpAdminPrivacy ::
      !(Maybe Bool),
    _udcpTechPrivacy ::
      !(Maybe Bool),
    _udcpRegistrantPrivacy ::
      !(Maybe Bool),
    _udcpDomainName ::
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

-- | Creates a value of 'UpdateDomainContactPrivacy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udcpAdminPrivacy' - Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the admin contact.
--
-- * 'udcpTechPrivacy' - Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the technical contact.
--
-- * 'udcpRegistrantPrivacy' - Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the registrant contact (domain owner).
--
-- * 'udcpDomainName' - The name of the domain that you want to update the privacy setting for.
updateDomainContactPrivacy ::
  -- | 'udcpDomainName'
  Text ->
  UpdateDomainContactPrivacy
updateDomainContactPrivacy pDomainName_ =
  UpdateDomainContactPrivacy'
    { _udcpAdminPrivacy =
        Nothing,
      _udcpTechPrivacy = Nothing,
      _udcpRegistrantPrivacy = Nothing,
      _udcpDomainName = pDomainName_
    }

-- | Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the admin contact.
udcpAdminPrivacy :: Lens' UpdateDomainContactPrivacy (Maybe Bool)
udcpAdminPrivacy = lens _udcpAdminPrivacy (\s a -> s {_udcpAdminPrivacy = a})

-- | Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the technical contact.
udcpTechPrivacy :: Lens' UpdateDomainContactPrivacy (Maybe Bool)
udcpTechPrivacy = lens _udcpTechPrivacy (\s a -> s {_udcpTechPrivacy = a})

-- | Whether you want to conceal contact information from WHOIS queries. If you specify @true@ , WHOIS ("who is") queries return contact information either for Amazon Registrar (for .com, .net, and .org domains) or for our registrar associate, Gandi (for all other TLDs). If you specify @false@ , WHOIS queries return the information that you entered for the registrant contact (domain owner).
udcpRegistrantPrivacy :: Lens' UpdateDomainContactPrivacy (Maybe Bool)
udcpRegistrantPrivacy = lens _udcpRegistrantPrivacy (\s a -> s {_udcpRegistrantPrivacy = a})

-- | The name of the domain that you want to update the privacy setting for.
udcpDomainName :: Lens' UpdateDomainContactPrivacy Text
udcpDomainName = lens _udcpDomainName (\s a -> s {_udcpDomainName = a})

instance AWSRequest UpdateDomainContactPrivacy where
  type
    Rs UpdateDomainContactPrivacy =
      UpdateDomainContactPrivacyResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          UpdateDomainContactPrivacyResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "OperationId")
      )

instance Hashable UpdateDomainContactPrivacy

instance NFData UpdateDomainContactPrivacy

instance ToHeaders UpdateDomainContactPrivacy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.UpdateDomainContactPrivacy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDomainContactPrivacy where
  toJSON UpdateDomainContactPrivacy' {..} =
    object
      ( catMaybes
          [ ("AdminPrivacy" .=) <$> _udcpAdminPrivacy,
            ("TechPrivacy" .=) <$> _udcpTechPrivacy,
            ("RegistrantPrivacy" .=) <$> _udcpRegistrantPrivacy,
            Just ("DomainName" .= _udcpDomainName)
          ]
      )

instance ToPath UpdateDomainContactPrivacy where
  toPath = const "/"

instance ToQuery UpdateDomainContactPrivacy where
  toQuery = const mempty

-- | The UpdateDomainContactPrivacy response includes the following element.
--
--
--
-- /See:/ 'updateDomainContactPrivacyResponse' smart constructor.
data UpdateDomainContactPrivacyResponse = UpdateDomainContactPrivacyResponse'
  { _udcprrsResponseStatus ::
      !Int,
    _udcprrsOperationId ::
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

-- | Creates a value of 'UpdateDomainContactPrivacyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udcprrsResponseStatus' - -- | The response status code.
--
-- * 'udcprrsOperationId' - Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.
updateDomainContactPrivacyResponse ::
  -- | 'udcprrsResponseStatus'
  Int ->
  -- | 'udcprrsOperationId'
  Text ->
  UpdateDomainContactPrivacyResponse
updateDomainContactPrivacyResponse
  pResponseStatus_
  pOperationId_ =
    UpdateDomainContactPrivacyResponse'
      { _udcprrsResponseStatus =
          pResponseStatus_,
        _udcprrsOperationId = pOperationId_
      }

-- | -- | The response status code.
udcprrsResponseStatus :: Lens' UpdateDomainContactPrivacyResponse Int
udcprrsResponseStatus = lens _udcprrsResponseStatus (\s a -> s {_udcprrsResponseStatus = a})

-- | Identifier for tracking the progress of the request. To use this ID to query the operation status, use GetOperationDetail.
udcprrsOperationId :: Lens' UpdateDomainContactPrivacyResponse Text
udcprrsOperationId = lens _udcprrsOperationId (\s a -> s {_udcprrsOperationId = a})

instance NFData UpdateDomainContactPrivacyResponse
