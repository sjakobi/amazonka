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
-- Module      : Network.AWS.Route53Domains.RenewDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your AWS account.
--
--
-- We recommend that you renew your domain several weeks before the expiration date. Some TLD registries delete domains before the expiration date if you haven't renewed far enough in advance. For more information about renewing domain registration, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html Renewing Registration for a Domain> in the /Amazon Route 53 Developer Guide/ .
module Network.AWS.Route53Domains.RenewDomain
  ( -- * Creating a Request
    renewDomain,
    RenewDomain,

    -- * Request Lenses
    rDurationInYears,
    rDomainName,
    rCurrentExpiryYear,

    -- * Destructuring the Response
    renewDomainResponse,
    RenewDomainResponse,

    -- * Response Lenses
    rrsResponseStatus,
    rrsOperationId,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Route53Domains.Types

-- | A @RenewDomain@ request includes the number of years that you want to renew for and the current expiration year.
--
--
--
-- /See:/ 'renewDomain' smart constructor.
data RenewDomain = RenewDomain'
  { _rDurationInYears ::
      !(Maybe Nat),
    _rDomainName :: !Text,
    _rCurrentExpiryYear :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RenewDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rDurationInYears' - The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain. For the range of valid values for your domain, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> in the /Amazon Route 53 Developer Guide/ . Default: 1
--
-- * 'rDomainName' - The name of the domain that you want to renew.
--
-- * 'rCurrentExpiryYear' - The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain.
renewDomain ::
  -- | 'rDomainName'
  Text ->
  -- | 'rCurrentExpiryYear'
  Int ->
  RenewDomain
renewDomain pDomainName_ pCurrentExpiryYear_ =
  RenewDomain'
    { _rDurationInYears = Nothing,
      _rDomainName = pDomainName_,
      _rCurrentExpiryYear = pCurrentExpiryYear_
    }

-- | The number of years that you want to renew the domain for. The maximum number of years depends on the top-level domain. For the range of valid values for your domain, see <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53> in the /Amazon Route 53 Developer Guide/ . Default: 1
rDurationInYears :: Lens' RenewDomain (Maybe Natural)
rDurationInYears = lens _rDurationInYears (\s a -> s {_rDurationInYears = a}) . mapping _Nat

-- | The name of the domain that you want to renew.
rDomainName :: Lens' RenewDomain Text
rDomainName = lens _rDomainName (\s a -> s {_rDomainName = a})

-- | The year when the registration for the domain is set to expire. This value must match the current expiration date for the domain.
rCurrentExpiryYear :: Lens' RenewDomain Int
rCurrentExpiryYear = lens _rCurrentExpiryYear (\s a -> s {_rCurrentExpiryYear = a})

instance AWSRequest RenewDomain where
  type Rs RenewDomain = RenewDomainResponse
  request = postJSON route53Domains
  response =
    receiveJSON
      ( \s h x ->
          RenewDomainResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "OperationId")
      )

instance Hashable RenewDomain

instance NFData RenewDomain

instance ToHeaders RenewDomain where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Route53Domains_v20140515.RenewDomain" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RenewDomain where
  toJSON RenewDomain' {..} =
    object
      ( catMaybes
          [ ("DurationInYears" .=) <$> _rDurationInYears,
            Just ("DomainName" .= _rDomainName),
            Just ("CurrentExpiryYear" .= _rCurrentExpiryYear)
          ]
      )

instance ToPath RenewDomain where
  toPath = const "/"

instance ToQuery RenewDomain where
  toQuery = const mempty

-- | /See:/ 'renewDomainResponse' smart constructor.
data RenewDomainResponse = RenewDomainResponse'
  { _rrsResponseStatus ::
      !Int,
    _rrsOperationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RenewDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsResponseStatus' - -- | The response status code.
--
-- * 'rrsOperationId' - Identifier for tracking the progress of the request. To query the operation status, use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html GetOperationDetail> .
renewDomainResponse ::
  -- | 'rrsResponseStatus'
  Int ->
  -- | 'rrsOperationId'
  Text ->
  RenewDomainResponse
renewDomainResponse pResponseStatus_ pOperationId_ =
  RenewDomainResponse'
    { _rrsResponseStatus =
        pResponseStatus_,
      _rrsOperationId = pOperationId_
    }

-- | -- | The response status code.
rrsResponseStatus :: Lens' RenewDomainResponse Int
rrsResponseStatus = lens _rrsResponseStatus (\s a -> s {_rrsResponseStatus = a})

-- | Identifier for tracking the progress of the request. To query the operation status, use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html GetOperationDetail> .
rrsOperationId :: Lens' RenewDomainResponse Text
rrsOperationId = lens _rrsOperationId (\s a -> s {_rrsOperationId = a})

instance NFData RenewDomainResponse
