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
-- Module      : Network.AWS.Route53Domains.ResendContactReachabilityEmail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.
module Network.AWS.Route53Domains.ResendContactReachabilityEmail
  ( -- * Creating a Request
    resendContactReachabilityEmail,
    ResendContactReachabilityEmail,

    -- * Request Lenses
    rcreDomainName,

    -- * Destructuring the Response
    resendContactReachabilityEmailResponse,
    ResendContactReachabilityEmailResponse,

    -- * Response Lenses
    rcrerrsIsAlreadyVerified,
    rcrerrsDomainName,
    rcrerrsEmailAddress,
    rcrerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | /See:/ 'resendContactReachabilityEmail' smart constructor.
newtype ResendContactReachabilityEmail = ResendContactReachabilityEmail'
  { _rcreDomainName ::
      Maybe
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

-- | Creates a value of 'ResendContactReachabilityEmail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcreDomainName' - The name of the domain for which you want Route 53 to resend a confirmation email to the registrant contact.
resendContactReachabilityEmail ::
  ResendContactReachabilityEmail
resendContactReachabilityEmail =
  ResendContactReachabilityEmail'
    { _rcreDomainName =
        Nothing
    }

-- | The name of the domain for which you want Route 53 to resend a confirmation email to the registrant contact.
rcreDomainName :: Lens' ResendContactReachabilityEmail (Maybe Text)
rcreDomainName = lens _rcreDomainName (\s a -> s {_rcreDomainName = a})

instance AWSRequest ResendContactReachabilityEmail where
  type
    Rs ResendContactReachabilityEmail =
      ResendContactReachabilityEmailResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          ResendContactReachabilityEmailResponse'
            <$> (x .?> "isAlreadyVerified")
            <*> (x .?> "domainName")
            <*> (x .?> "emailAddress")
            <*> (pure (fromEnum s))
      )

instance Hashable ResendContactReachabilityEmail

instance NFData ResendContactReachabilityEmail

instance ToHeaders ResendContactReachabilityEmail where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.ResendContactReachabilityEmail" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ResendContactReachabilityEmail where
  toJSON ResendContactReachabilityEmail' {..} =
    object
      (catMaybes [("domainName" .=) <$> _rcreDomainName])

instance ToPath ResendContactReachabilityEmail where
  toPath = const "/"

instance ToQuery ResendContactReachabilityEmail where
  toQuery = const mempty

-- | /See:/ 'resendContactReachabilityEmailResponse' smart constructor.
data ResendContactReachabilityEmailResponse = ResendContactReachabilityEmailResponse'
  { _rcrerrsIsAlreadyVerified ::
      !( Maybe
           Bool
       ),
    _rcrerrsDomainName ::
      !( Maybe
           Text
       ),
    _rcrerrsEmailAddress ::
      !( Maybe
           Text
       ),
    _rcrerrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ResendContactReachabilityEmailResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrerrsIsAlreadyVerified' - @True@ if the email address for the registrant contact has already been verified, and @false@ otherwise. If the email address has already been verified, we don't send another confirmation email.
--
-- * 'rcrerrsDomainName' - The domain name for which you requested a confirmation email.
--
-- * 'rcrerrsEmailAddress' - The email address for the registrant contact at the time that we sent the verification email.
--
-- * 'rcrerrsResponseStatus' - -- | The response status code.
resendContactReachabilityEmailResponse ::
  -- | 'rcrerrsResponseStatus'
  Int ->
  ResendContactReachabilityEmailResponse
resendContactReachabilityEmailResponse
  pResponseStatus_ =
    ResendContactReachabilityEmailResponse'
      { _rcrerrsIsAlreadyVerified =
          Nothing,
        _rcrerrsDomainName = Nothing,
        _rcrerrsEmailAddress = Nothing,
        _rcrerrsResponseStatus =
          pResponseStatus_
      }

-- | @True@ if the email address for the registrant contact has already been verified, and @false@ otherwise. If the email address has already been verified, we don't send another confirmation email.
rcrerrsIsAlreadyVerified :: Lens' ResendContactReachabilityEmailResponse (Maybe Bool)
rcrerrsIsAlreadyVerified = lens _rcrerrsIsAlreadyVerified (\s a -> s {_rcrerrsIsAlreadyVerified = a})

-- | The domain name for which you requested a confirmation email.
rcrerrsDomainName :: Lens' ResendContactReachabilityEmailResponse (Maybe Text)
rcrerrsDomainName = lens _rcrerrsDomainName (\s a -> s {_rcrerrsDomainName = a})

-- | The email address for the registrant contact at the time that we sent the verification email.
rcrerrsEmailAddress :: Lens' ResendContactReachabilityEmailResponse (Maybe Text)
rcrerrsEmailAddress = lens _rcrerrsEmailAddress (\s a -> s {_rcrerrsEmailAddress = a})

-- | -- | The response status code.
rcrerrsResponseStatus :: Lens' ResendContactReachabilityEmailResponse Int
rcrerrsResponseStatus = lens _rcrerrsResponseStatus (\s a -> s {_rcrerrsResponseStatus = a})

instance
  NFData
    ResendContactReachabilityEmailResponse
