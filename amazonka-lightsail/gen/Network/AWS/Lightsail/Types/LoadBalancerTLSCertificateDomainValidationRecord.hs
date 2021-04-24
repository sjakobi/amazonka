{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateDomainValidationRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateDomainValidationRecord where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateDomainStatus
import Network.AWS.Prelude

-- | Describes the validation record of each domain name in the SSL/TLS certificate.
--
--
--
-- /See:/ 'loadBalancerTLSCertificateDomainValidationRecord' smart constructor.
data LoadBalancerTLSCertificateDomainValidationRecord = LoadBalancerTLSCertificateDomainValidationRecord'
  { _lbtcdvrName ::
      !( Maybe
           Text
       ),
    _lbtcdvrDomainName ::
      !( Maybe
           Text
       ),
    _lbtcdvrValidationStatus ::
      !( Maybe
           LoadBalancerTLSCertificateDomainStatus
       ),
    _lbtcdvrValue ::
      !( Maybe
           Text
       ),
    _lbtcdvrType ::
      !( Maybe
           Text
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

-- | Creates a value of 'LoadBalancerTLSCertificateDomainValidationRecord' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbtcdvrName' - A fully qualified domain name in the certificate. For example, @example.com@ .
--
-- * 'lbtcdvrDomainName' - The domain name against which your SSL/TLS certificate was validated.
--
-- * 'lbtcdvrValidationStatus' - The validation status. Valid values are listed below.
--
-- * 'lbtcdvrValue' - The value for that type.
--
-- * 'lbtcdvrType' - The type of validation record. For example, @CNAME@ for domain validation.
loadBalancerTLSCertificateDomainValidationRecord ::
  LoadBalancerTLSCertificateDomainValidationRecord
loadBalancerTLSCertificateDomainValidationRecord =
  LoadBalancerTLSCertificateDomainValidationRecord'
    { _lbtcdvrName =
        Nothing,
      _lbtcdvrDomainName =
        Nothing,
      _lbtcdvrValidationStatus =
        Nothing,
      _lbtcdvrValue = Nothing,
      _lbtcdvrType = Nothing
    }

-- | A fully qualified domain name in the certificate. For example, @example.com@ .
lbtcdvrName :: Lens' LoadBalancerTLSCertificateDomainValidationRecord (Maybe Text)
lbtcdvrName = lens _lbtcdvrName (\s a -> s {_lbtcdvrName = a})

-- | The domain name against which your SSL/TLS certificate was validated.
lbtcdvrDomainName :: Lens' LoadBalancerTLSCertificateDomainValidationRecord (Maybe Text)
lbtcdvrDomainName = lens _lbtcdvrDomainName (\s a -> s {_lbtcdvrDomainName = a})

-- | The validation status. Valid values are listed below.
lbtcdvrValidationStatus :: Lens' LoadBalancerTLSCertificateDomainValidationRecord (Maybe LoadBalancerTLSCertificateDomainStatus)
lbtcdvrValidationStatus = lens _lbtcdvrValidationStatus (\s a -> s {_lbtcdvrValidationStatus = a})

-- | The value for that type.
lbtcdvrValue :: Lens' LoadBalancerTLSCertificateDomainValidationRecord (Maybe Text)
lbtcdvrValue = lens _lbtcdvrValue (\s a -> s {_lbtcdvrValue = a})

-- | The type of validation record. For example, @CNAME@ for domain validation.
lbtcdvrType :: Lens' LoadBalancerTLSCertificateDomainValidationRecord (Maybe Text)
lbtcdvrType = lens _lbtcdvrType (\s a -> s {_lbtcdvrType = a})

instance
  FromJSON
    LoadBalancerTLSCertificateDomainValidationRecord
  where
  parseJSON =
    withObject
      "LoadBalancerTLSCertificateDomainValidationRecord"
      ( \x ->
          LoadBalancerTLSCertificateDomainValidationRecord'
            <$> (x .:? "name")
            <*> (x .:? "domainName")
            <*> (x .:? "validationStatus")
            <*> (x .:? "value")
            <*> (x .:? "type")
      )

instance
  Hashable
    LoadBalancerTLSCertificateDomainValidationRecord

instance
  NFData
    LoadBalancerTLSCertificateDomainValidationRecord
