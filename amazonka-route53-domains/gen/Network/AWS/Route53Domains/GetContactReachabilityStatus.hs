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
-- Module      : Network.AWS.Route53Domains.GetContactReachabilityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded.
--
--
-- If you want us to resend the email, use the @ResendContactReachabilityEmail@ operation.
module Network.AWS.Route53Domains.GetContactReachabilityStatus
  ( -- * Creating a Request
    getContactReachabilityStatus,
    GetContactReachabilityStatus,

    -- * Request Lenses
    gcrsDomainName,

    -- * Destructuring the Response
    getContactReachabilityStatusResponse,
    GetContactReachabilityStatusResponse,

    -- * Response Lenses
    gcrsrrsStatus,
    gcrsrrsDomainName,
    gcrsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | /See:/ 'getContactReachabilityStatus' smart constructor.
newtype GetContactReachabilityStatus = GetContactReachabilityStatus'
  { _gcrsDomainName ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetContactReachabilityStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrsDomainName' - The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid.
getContactReachabilityStatus ::
  GetContactReachabilityStatus
getContactReachabilityStatus =
  GetContactReachabilityStatus'
    { _gcrsDomainName =
        Nothing
    }

-- | The name of the domain for which you want to know whether the registrant contact has confirmed that the email address is valid.
gcrsDomainName :: Lens' GetContactReachabilityStatus (Maybe Text)
gcrsDomainName = lens _gcrsDomainName (\s a -> s {_gcrsDomainName = a})

instance AWSRequest GetContactReachabilityStatus where
  type
    Rs GetContactReachabilityStatus =
      GetContactReachabilityStatusResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          GetContactReachabilityStatusResponse'
            <$> (x .?> "status")
            <*> (x .?> "domainName")
            <*> (pure (fromEnum s))
      )

instance Hashable GetContactReachabilityStatus

instance NFData GetContactReachabilityStatus

instance ToHeaders GetContactReachabilityStatus where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.GetContactReachabilityStatus" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetContactReachabilityStatus where
  toJSON GetContactReachabilityStatus' {..} =
    object
      (catMaybes [("domainName" .=) <$> _gcrsDomainName])

instance ToPath GetContactReachabilityStatus where
  toPath = const "/"

instance ToQuery GetContactReachabilityStatus where
  toQuery = const mempty

-- | /See:/ 'getContactReachabilityStatusResponse' smart constructor.
data GetContactReachabilityStatusResponse = GetContactReachabilityStatusResponse'
  { _gcrsrrsStatus ::
      !( Maybe
           ReachabilityStatus
       ),
    _gcrsrrsDomainName ::
      !( Maybe
           Text
       ),
    _gcrsrrsResponseStatus ::
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

-- | Creates a value of 'GetContactReachabilityStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrsrrsStatus' - Whether the registrant contact has responded. Values include the following:     * PENDING    * We sent the confirmation email and haven't received a response yet.     * DONE    * We sent the email and got confirmation from the registrant contact.     * EXPIRED    * The time limit expired before the registrant contact responded.
--
-- * 'gcrsrrsDomainName' - The domain name for which you requested the reachability status.
--
-- * 'gcrsrrsResponseStatus' - -- | The response status code.
getContactReachabilityStatusResponse ::
  -- | 'gcrsrrsResponseStatus'
  Int ->
  GetContactReachabilityStatusResponse
getContactReachabilityStatusResponse pResponseStatus_ =
  GetContactReachabilityStatusResponse'
    { _gcrsrrsStatus =
        Nothing,
      _gcrsrrsDomainName = Nothing,
      _gcrsrrsResponseStatus =
        pResponseStatus_
    }

-- | Whether the registrant contact has responded. Values include the following:     * PENDING    * We sent the confirmation email and haven't received a response yet.     * DONE    * We sent the email and got confirmation from the registrant contact.     * EXPIRED    * The time limit expired before the registrant contact responded.
gcrsrrsStatus :: Lens' GetContactReachabilityStatusResponse (Maybe ReachabilityStatus)
gcrsrrsStatus = lens _gcrsrrsStatus (\s a -> s {_gcrsrrsStatus = a})

-- | The domain name for which you requested the reachability status.
gcrsrrsDomainName :: Lens' GetContactReachabilityStatusResponse (Maybe Text)
gcrsrrsDomainName = lens _gcrsrrsDomainName (\s a -> s {_gcrsrrsDomainName = a})

-- | -- | The response status code.
gcrsrrsResponseStatus :: Lens' GetContactReachabilityStatusResponse Int
gcrsrrsResponseStatus = lens _gcrsrrsResponseStatus (\s a -> s {_gcrsrrsResponseStatus = a})

instance NFData GetContactReachabilityStatusResponse
