{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.DomainEndpointOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.DomainEndpointOptions where

import Network.AWS.ElasticSearch.Types.TLSSecurityPolicy
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Options to configure endpoint for the Elasticsearch domain.
--
--
--
-- /See:/ 'domainEndpointOptions' smart constructor.
data DomainEndpointOptions = DomainEndpointOptions'
  { _deoCustomEndpointCertificateARN ::
      !(Maybe Text),
    _deoCustomEndpoint ::
      !(Maybe Text),
    _deoEnforceHTTPS ::
      !(Maybe Bool),
    _deoTLSSecurityPolicy ::
      !(Maybe TLSSecurityPolicy),
    _deoCustomEndpointEnabled ::
      !(Maybe Bool)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DomainEndpointOptions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deoCustomEndpointCertificateARN' - Specify ACM certificate ARN for your custom endpoint.
--
-- * 'deoCustomEndpoint' - Specify the fully qualified domain for your custom endpoint.
--
-- * 'deoEnforceHTTPS' - Specify if only HTTPS endpoint should be enabled for the Elasticsearch domain.
--
-- * 'deoTLSSecurityPolicy' - Specify the TLS security policy that needs to be applied to the HTTPS endpoint of Elasticsearch domain.  It can be one of the following values:     * __Policy-Min-TLS-1-0-2019-07: __ TLS security policy which supports TLSv1.0 and higher.    * __Policy-Min-TLS-1-2-2019-07: __ TLS security policy which supports only TLSv1.2
--
-- * 'deoCustomEndpointEnabled' - Specify if custom endpoint should be enabled for the Elasticsearch domain.
domainEndpointOptions ::
  DomainEndpointOptions
domainEndpointOptions =
  DomainEndpointOptions'
    { _deoCustomEndpointCertificateARN =
        Nothing,
      _deoCustomEndpoint = Nothing,
      _deoEnforceHTTPS = Nothing,
      _deoTLSSecurityPolicy = Nothing,
      _deoCustomEndpointEnabled = Nothing
    }

-- | Specify ACM certificate ARN for your custom endpoint.
deoCustomEndpointCertificateARN :: Lens' DomainEndpointOptions (Maybe Text)
deoCustomEndpointCertificateARN = lens _deoCustomEndpointCertificateARN (\s a -> s {_deoCustomEndpointCertificateARN = a})

-- | Specify the fully qualified domain for your custom endpoint.
deoCustomEndpoint :: Lens' DomainEndpointOptions (Maybe Text)
deoCustomEndpoint = lens _deoCustomEndpoint (\s a -> s {_deoCustomEndpoint = a})

-- | Specify if only HTTPS endpoint should be enabled for the Elasticsearch domain.
deoEnforceHTTPS :: Lens' DomainEndpointOptions (Maybe Bool)
deoEnforceHTTPS = lens _deoEnforceHTTPS (\s a -> s {_deoEnforceHTTPS = a})

-- | Specify the TLS security policy that needs to be applied to the HTTPS endpoint of Elasticsearch domain.  It can be one of the following values:     * __Policy-Min-TLS-1-0-2019-07: __ TLS security policy which supports TLSv1.0 and higher.    * __Policy-Min-TLS-1-2-2019-07: __ TLS security policy which supports only TLSv1.2
deoTLSSecurityPolicy :: Lens' DomainEndpointOptions (Maybe TLSSecurityPolicy)
deoTLSSecurityPolicy = lens _deoTLSSecurityPolicy (\s a -> s {_deoTLSSecurityPolicy = a})

-- | Specify if custom endpoint should be enabled for the Elasticsearch domain.
deoCustomEndpointEnabled :: Lens' DomainEndpointOptions (Maybe Bool)
deoCustomEndpointEnabled = lens _deoCustomEndpointEnabled (\s a -> s {_deoCustomEndpointEnabled = a})

instance FromJSON DomainEndpointOptions where
  parseJSON =
    withObject
      "DomainEndpointOptions"
      ( \x ->
          DomainEndpointOptions'
            <$> (x .:? "CustomEndpointCertificateArn")
            <*> (x .:? "CustomEndpoint")
            <*> (x .:? "EnforceHTTPS")
            <*> (x .:? "TLSSecurityPolicy")
            <*> (x .:? "CustomEndpointEnabled")
      )

instance Hashable DomainEndpointOptions

instance NFData DomainEndpointOptions

instance ToJSON DomainEndpointOptions where
  toJSON DomainEndpointOptions' {..} =
    object
      ( catMaybes
          [ ("CustomEndpointCertificateArn" .=)
              <$> _deoCustomEndpointCertificateARN,
            ("CustomEndpoint" .=) <$> _deoCustomEndpoint,
            ("EnforceHTTPS" .=) <$> _deoEnforceHTTPS,
            ("TLSSecurityPolicy" .=) <$> _deoTLSSecurityPolicy,
            ("CustomEndpointEnabled" .=)
              <$> _deoCustomEndpointEnabled
          ]
      )
