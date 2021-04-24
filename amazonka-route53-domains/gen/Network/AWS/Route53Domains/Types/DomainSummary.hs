{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.Types.DomainSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53Domains.Types.DomainSummary where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Summary information about one domain.
--
--
--
-- /See:/ 'domainSummary' smart constructor.
data DomainSummary = DomainSummary'
  { _dExpiry ::
      !(Maybe POSIX),
    _dAutoRenew :: !(Maybe Bool),
    _dTransferLock :: !(Maybe Bool),
    _dDomainName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DomainSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dExpiry' - Expiration date of the domain in Unix time format and Coordinated Universal Time (UTC).
--
-- * 'dAutoRenew' - Indicates whether the domain is automatically renewed upon expiration.
--
-- * 'dTransferLock' - Indicates whether a domain is locked from unauthorized transfer to another party.
--
-- * 'dDomainName' - The name of the domain that the summary information applies to.
domainSummary ::
  -- | 'dDomainName'
  Text ->
  DomainSummary
domainSummary pDomainName_ =
  DomainSummary'
    { _dExpiry = Nothing,
      _dAutoRenew = Nothing,
      _dTransferLock = Nothing,
      _dDomainName = pDomainName_
    }

-- | Expiration date of the domain in Unix time format and Coordinated Universal Time (UTC).
dExpiry :: Lens' DomainSummary (Maybe UTCTime)
dExpiry = lens _dExpiry (\s a -> s {_dExpiry = a}) . mapping _Time

-- | Indicates whether the domain is automatically renewed upon expiration.
dAutoRenew :: Lens' DomainSummary (Maybe Bool)
dAutoRenew = lens _dAutoRenew (\s a -> s {_dAutoRenew = a})

-- | Indicates whether a domain is locked from unauthorized transfer to another party.
dTransferLock :: Lens' DomainSummary (Maybe Bool)
dTransferLock = lens _dTransferLock (\s a -> s {_dTransferLock = a})

-- | The name of the domain that the summary information applies to.
dDomainName :: Lens' DomainSummary Text
dDomainName = lens _dDomainName (\s a -> s {_dDomainName = a})

instance FromJSON DomainSummary where
  parseJSON =
    withObject
      "DomainSummary"
      ( \x ->
          DomainSummary'
            <$> (x .:? "Expiry")
            <*> (x .:? "AutoRenew")
            <*> (x .:? "TransferLock")
            <*> (x .: "DomainName")
      )

instance Hashable DomainSummary

instance NFData DomainSummary
