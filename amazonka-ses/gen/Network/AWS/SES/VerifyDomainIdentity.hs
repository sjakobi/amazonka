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
-- Module      : Network.AWS.SES.VerifyDomainIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a domain to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it. For more information about verifying domains, see <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html Verifying Email Addresses and Domains> in the /Amazon SES Developer Guide./
--
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.VerifyDomainIdentity
  ( -- * Creating a Request
    verifyDomainIdentity,
    VerifyDomainIdentity,

    -- * Request Lenses
    vdiDomain,

    -- * Destructuring the Response
    verifyDomainIdentityResponse,
    VerifyDomainIdentityResponse,

    -- * Response Lenses
    vdirrsResponseStatus,
    vdirrsVerificationToken,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | Represents a request to begin Amazon SES domain verification and to generate the TXT records that you must publish to the DNS server of your domain to complete the verification. For information about domain verification, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html Amazon SES Developer Guide> .
--
--
--
-- /See:/ 'verifyDomainIdentity' smart constructor.
newtype VerifyDomainIdentity = VerifyDomainIdentity'
  { _vdiDomain ::
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

-- | Creates a value of 'VerifyDomainIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdiDomain' - The domain to be verified.
verifyDomainIdentity ::
  -- | 'vdiDomain'
  Text ->
  VerifyDomainIdentity
verifyDomainIdentity pDomain_ =
  VerifyDomainIdentity' {_vdiDomain = pDomain_}

-- | The domain to be verified.
vdiDomain :: Lens' VerifyDomainIdentity Text
vdiDomain = lens _vdiDomain (\s a -> s {_vdiDomain = a})

instance AWSRequest VerifyDomainIdentity where
  type
    Rs VerifyDomainIdentity =
      VerifyDomainIdentityResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "VerifyDomainIdentityResult"
      ( \s h x ->
          VerifyDomainIdentityResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "VerificationToken")
      )

instance Hashable VerifyDomainIdentity

instance NFData VerifyDomainIdentity

instance ToHeaders VerifyDomainIdentity where
  toHeaders = const mempty

instance ToPath VerifyDomainIdentity where
  toPath = const "/"

instance ToQuery VerifyDomainIdentity where
  toQuery VerifyDomainIdentity' {..} =
    mconcat
      [ "Action" =: ("VerifyDomainIdentity" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "Domain" =: _vdiDomain
      ]

-- | Returns a TXT record that you must publish to the DNS server of your domain to complete domain verification with Amazon SES.
--
--
--
-- /See:/ 'verifyDomainIdentityResponse' smart constructor.
data VerifyDomainIdentityResponse = VerifyDomainIdentityResponse'
  { _vdirrsResponseStatus ::
      !Int,
    _vdirrsVerificationToken ::
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

-- | Creates a value of 'VerifyDomainIdentityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vdirrsResponseStatus' - -- | The response status code.
--
-- * 'vdirrsVerificationToken' - A TXT record that you must place in the DNS settings of the domain to complete domain verification with Amazon SES. As Amazon SES searches for the TXT record, the domain's verification status is "Pending". When Amazon SES detects the record, the domain's verification status changes to "Success". If Amazon SES is unable to detect the record within 72 hours, the domain's verification status changes to "Failed." In that case, if you still want to verify the domain, you must restart the verification process from the beginning.
verifyDomainIdentityResponse ::
  -- | 'vdirrsResponseStatus'
  Int ->
  -- | 'vdirrsVerificationToken'
  Text ->
  VerifyDomainIdentityResponse
verifyDomainIdentityResponse
  pResponseStatus_
  pVerificationToken_ =
    VerifyDomainIdentityResponse'
      { _vdirrsResponseStatus =
          pResponseStatus_,
        _vdirrsVerificationToken =
          pVerificationToken_
      }

-- | -- | The response status code.
vdirrsResponseStatus :: Lens' VerifyDomainIdentityResponse Int
vdirrsResponseStatus = lens _vdirrsResponseStatus (\s a -> s {_vdirrsResponseStatus = a})

-- | A TXT record that you must place in the DNS settings of the domain to complete domain verification with Amazon SES. As Amazon SES searches for the TXT record, the domain's verification status is "Pending". When Amazon SES detects the record, the domain's verification status changes to "Success". If Amazon SES is unable to detect the record within 72 hours, the domain's verification status changes to "Failed." In that case, if you still want to verify the domain, you must restart the verification process from the beginning.
vdirrsVerificationToken :: Lens' VerifyDomainIdentityResponse Text
vdirrsVerificationToken = lens _vdirrsVerificationToken (\s a -> s {_vdirrsVerificationToken = a})

instance NFData VerifyDomainIdentityResponse
