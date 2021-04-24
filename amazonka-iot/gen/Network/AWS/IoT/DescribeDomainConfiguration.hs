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
-- Module      : Network.AWS.IoT.DescribeDomainConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets summary information about a domain configuration.
module Network.AWS.IoT.DescribeDomainConfiguration
  ( -- * Creating a Request
    describeDomainConfiguration,
    DescribeDomainConfiguration,

    -- * Request Lenses
    dDomainConfigurationName,

    -- * Destructuring the Response
    describeDomainConfigurationResponse,
    DescribeDomainConfigurationResponse,

    -- * Response Lenses
    ddcrrsDomainConfigurationStatus,
    ddcrrsAuthorizerConfig,
    ddcrrsServerCertificates,
    ddcrrsDomainConfigurationARN,
    ddcrrsDomainName,
    ddcrrsDomainConfigurationName,
    ddcrrsLastStatusChangeDate,
    ddcrrsDomainType,
    ddcrrsServiceType,
    ddcrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDomainConfiguration' smart constructor.
newtype DescribeDomainConfiguration = DescribeDomainConfiguration'
  { _dDomainConfigurationName ::
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

-- | Creates a value of 'DescribeDomainConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dDomainConfigurationName' - The name of the domain configuration.
describeDomainConfiguration ::
  -- | 'dDomainConfigurationName'
  Text ->
  DescribeDomainConfiguration
describeDomainConfiguration pDomainConfigurationName_ =
  DescribeDomainConfiguration'
    { _dDomainConfigurationName =
        pDomainConfigurationName_
    }

-- | The name of the domain configuration.
dDomainConfigurationName :: Lens' DescribeDomainConfiguration Text
dDomainConfigurationName = lens _dDomainConfigurationName (\s a -> s {_dDomainConfigurationName = a})

instance AWSRequest DescribeDomainConfiguration where
  type
    Rs DescribeDomainConfiguration =
      DescribeDomainConfigurationResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeDomainConfigurationResponse'
            <$> (x .?> "domainConfigurationStatus")
            <*> (x .?> "authorizerConfig")
            <*> (x .?> "serverCertificates" .!@ mempty)
            <*> (x .?> "domainConfigurationArn")
            <*> (x .?> "domainName")
            <*> (x .?> "domainConfigurationName")
            <*> (x .?> "lastStatusChangeDate")
            <*> (x .?> "domainType")
            <*> (x .?> "serviceType")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDomainConfiguration

instance NFData DescribeDomainConfiguration

instance ToHeaders DescribeDomainConfiguration where
  toHeaders = const mempty

instance ToPath DescribeDomainConfiguration where
  toPath DescribeDomainConfiguration' {..} =
    mconcat
      [ "/domainConfigurations/",
        toBS _dDomainConfigurationName
      ]

instance ToQuery DescribeDomainConfiguration where
  toQuery = const mempty

-- | /See:/ 'describeDomainConfigurationResponse' smart constructor.
data DescribeDomainConfigurationResponse = DescribeDomainConfigurationResponse'
  { _ddcrrsDomainConfigurationStatus ::
      !( Maybe
           DomainConfigurationStatus
       ),
    _ddcrrsAuthorizerConfig ::
      !( Maybe
           AuthorizerConfig
       ),
    _ddcrrsServerCertificates ::
      !( Maybe
           [ServerCertificateSummary]
       ),
    _ddcrrsDomainConfigurationARN ::
      !( Maybe
           Text
       ),
    _ddcrrsDomainName ::
      !( Maybe
           Text
       ),
    _ddcrrsDomainConfigurationName ::
      !( Maybe
           Text
       ),
    _ddcrrsLastStatusChangeDate ::
      !( Maybe
           POSIX
       ),
    _ddcrrsDomainType ::
      !( Maybe
           DomainType
       ),
    _ddcrrsServiceType ::
      !( Maybe
           ServiceType
       ),
    _ddcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDomainConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcrrsDomainConfigurationStatus' - A Boolean value that specifies the current state of the domain configuration.
--
-- * 'ddcrrsAuthorizerConfig' - An object that specifies the authorization service for a domain.
--
-- * 'ddcrrsServerCertificates' - A list containing summary information about the server certificate included in the domain configuration.
--
-- * 'ddcrrsDomainConfigurationARN' - The ARN of the domain configuration.
--
-- * 'ddcrrsDomainName' - The name of the domain.
--
-- * 'ddcrrsDomainConfigurationName' - The name of the domain configuration.
--
-- * 'ddcrrsLastStatusChangeDate' - The date and time the domain configuration's status was last changed.
--
-- * 'ddcrrsDomainType' - The type of the domain.
--
-- * 'ddcrrsServiceType' - The type of service delivered by the endpoint.
--
-- * 'ddcrrsResponseStatus' - -- | The response status code.
describeDomainConfigurationResponse ::
  -- | 'ddcrrsResponseStatus'
  Int ->
  DescribeDomainConfigurationResponse
describeDomainConfigurationResponse pResponseStatus_ =
  DescribeDomainConfigurationResponse'
    { _ddcrrsDomainConfigurationStatus =
        Nothing,
      _ddcrrsAuthorizerConfig = Nothing,
      _ddcrrsServerCertificates = Nothing,
      _ddcrrsDomainConfigurationARN =
        Nothing,
      _ddcrrsDomainName = Nothing,
      _ddcrrsDomainConfigurationName =
        Nothing,
      _ddcrrsLastStatusChangeDate = Nothing,
      _ddcrrsDomainType = Nothing,
      _ddcrrsServiceType = Nothing,
      _ddcrrsResponseStatus =
        pResponseStatus_
    }

-- | A Boolean value that specifies the current state of the domain configuration.
ddcrrsDomainConfigurationStatus :: Lens' DescribeDomainConfigurationResponse (Maybe DomainConfigurationStatus)
ddcrrsDomainConfigurationStatus = lens _ddcrrsDomainConfigurationStatus (\s a -> s {_ddcrrsDomainConfigurationStatus = a})

-- | An object that specifies the authorization service for a domain.
ddcrrsAuthorizerConfig :: Lens' DescribeDomainConfigurationResponse (Maybe AuthorizerConfig)
ddcrrsAuthorizerConfig = lens _ddcrrsAuthorizerConfig (\s a -> s {_ddcrrsAuthorizerConfig = a})

-- | A list containing summary information about the server certificate included in the domain configuration.
ddcrrsServerCertificates :: Lens' DescribeDomainConfigurationResponse [ServerCertificateSummary]
ddcrrsServerCertificates = lens _ddcrrsServerCertificates (\s a -> s {_ddcrrsServerCertificates = a}) . _Default . _Coerce

-- | The ARN of the domain configuration.
ddcrrsDomainConfigurationARN :: Lens' DescribeDomainConfigurationResponse (Maybe Text)
ddcrrsDomainConfigurationARN = lens _ddcrrsDomainConfigurationARN (\s a -> s {_ddcrrsDomainConfigurationARN = a})

-- | The name of the domain.
ddcrrsDomainName :: Lens' DescribeDomainConfigurationResponse (Maybe Text)
ddcrrsDomainName = lens _ddcrrsDomainName (\s a -> s {_ddcrrsDomainName = a})

-- | The name of the domain configuration.
ddcrrsDomainConfigurationName :: Lens' DescribeDomainConfigurationResponse (Maybe Text)
ddcrrsDomainConfigurationName = lens _ddcrrsDomainConfigurationName (\s a -> s {_ddcrrsDomainConfigurationName = a})

-- | The date and time the domain configuration's status was last changed.
ddcrrsLastStatusChangeDate :: Lens' DescribeDomainConfigurationResponse (Maybe UTCTime)
ddcrrsLastStatusChangeDate = lens _ddcrrsLastStatusChangeDate (\s a -> s {_ddcrrsLastStatusChangeDate = a}) . mapping _Time

-- | The type of the domain.
ddcrrsDomainType :: Lens' DescribeDomainConfigurationResponse (Maybe DomainType)
ddcrrsDomainType = lens _ddcrrsDomainType (\s a -> s {_ddcrrsDomainType = a})

-- | The type of service delivered by the endpoint.
ddcrrsServiceType :: Lens' DescribeDomainConfigurationResponse (Maybe ServiceType)
ddcrrsServiceType = lens _ddcrrsServiceType (\s a -> s {_ddcrrsServiceType = a})

-- | -- | The response status code.
ddcrrsResponseStatus :: Lens' DescribeDomainConfigurationResponse Int
ddcrrsResponseStatus = lens _ddcrrsResponseStatus (\s a -> s {_ddcrrsResponseStatus = a})

instance NFData DescribeDomainConfigurationResponse
