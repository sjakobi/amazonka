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
-- Module      : Network.AWS.ElasticSearch.UpgradeElasticsearchDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.
module Network.AWS.ElasticSearch.UpgradeElasticsearchDomain
  ( -- * Creating a Request
    upgradeElasticsearchDomain,
    UpgradeElasticsearchDomain,

    -- * Request Lenses
    uedPerformCheckOnly,
    uedDomainName,
    uedTargetVersion,

    -- * Destructuring the Response
    upgradeElasticsearchDomainResponse,
    UpgradeElasticsearchDomainResponse,

    -- * Response Lenses
    uedrrsTargetVersion,
    uedrrsDomainName,
    uedrrsPerformCheckOnly,
    uedrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for request parameters to @'UpgradeElasticsearchDomain' @ operation.
--
--
--
-- /See:/ 'upgradeElasticsearchDomain' smart constructor.
data UpgradeElasticsearchDomain = UpgradeElasticsearchDomain'
  { _uedPerformCheckOnly ::
      !(Maybe Bool),
    _uedDomainName ::
      !Text,
    _uedTargetVersion ::
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

-- | Creates a value of 'UpgradeElasticsearchDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uedPerformCheckOnly' - This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed. This will not actually perform the Upgrade.
--
-- * 'uedDomainName' - Undocumented member.
--
-- * 'uedTargetVersion' - The version of Elasticsearch that you intend to upgrade the domain to.
upgradeElasticsearchDomain ::
  -- | 'uedDomainName'
  Text ->
  -- | 'uedTargetVersion'
  Text ->
  UpgradeElasticsearchDomain
upgradeElasticsearchDomain
  pDomainName_
  pTargetVersion_ =
    UpgradeElasticsearchDomain'
      { _uedPerformCheckOnly =
          Nothing,
        _uedDomainName = pDomainName_,
        _uedTargetVersion = pTargetVersion_
      }

-- | This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed. This will not actually perform the Upgrade.
uedPerformCheckOnly :: Lens' UpgradeElasticsearchDomain (Maybe Bool)
uedPerformCheckOnly = lens _uedPerformCheckOnly (\s a -> s {_uedPerformCheckOnly = a})

-- | Undocumented member.
uedDomainName :: Lens' UpgradeElasticsearchDomain Text
uedDomainName = lens _uedDomainName (\s a -> s {_uedDomainName = a})

-- | The version of Elasticsearch that you intend to upgrade the domain to.
uedTargetVersion :: Lens' UpgradeElasticsearchDomain Text
uedTargetVersion = lens _uedTargetVersion (\s a -> s {_uedTargetVersion = a})

instance AWSRequest UpgradeElasticsearchDomain where
  type
    Rs UpgradeElasticsearchDomain =
      UpgradeElasticsearchDomainResponse
  request = postJSON elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          UpgradeElasticsearchDomainResponse'
            <$> (x .?> "TargetVersion")
            <*> (x .?> "DomainName")
            <*> (x .?> "PerformCheckOnly")
            <*> (pure (fromEnum s))
      )

instance Hashable UpgradeElasticsearchDomain

instance NFData UpgradeElasticsearchDomain

instance ToHeaders UpgradeElasticsearchDomain where
  toHeaders = const mempty

instance ToJSON UpgradeElasticsearchDomain where
  toJSON UpgradeElasticsearchDomain' {..} =
    object
      ( catMaybes
          [ ("PerformCheckOnly" .=) <$> _uedPerformCheckOnly,
            Just ("DomainName" .= _uedDomainName),
            Just ("TargetVersion" .= _uedTargetVersion)
          ]
      )

instance ToPath UpgradeElasticsearchDomain where
  toPath = const "/2015-01-01/es/upgradeDomain"

instance ToQuery UpgradeElasticsearchDomain where
  toQuery = const mempty

-- | Container for response returned by @'UpgradeElasticsearchDomain' @ operation.
--
--
--
-- /See:/ 'upgradeElasticsearchDomainResponse' smart constructor.
data UpgradeElasticsearchDomainResponse = UpgradeElasticsearchDomainResponse'
  { _uedrrsTargetVersion ::
      !( Maybe
           Text
       ),
    _uedrrsDomainName ::
      !( Maybe
           Text
       ),
    _uedrrsPerformCheckOnly ::
      !( Maybe
           Bool
       ),
    _uedrrsResponseStatus ::
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

-- | Creates a value of 'UpgradeElasticsearchDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uedrrsTargetVersion' - The version of Elasticsearch that you intend to upgrade the domain to.
--
-- * 'uedrrsDomainName' - Undocumented member.
--
-- * 'uedrrsPerformCheckOnly' - This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed. This will not actually perform the Upgrade.
--
-- * 'uedrrsResponseStatus' - -- | The response status code.
upgradeElasticsearchDomainResponse ::
  -- | 'uedrrsResponseStatus'
  Int ->
  UpgradeElasticsearchDomainResponse
upgradeElasticsearchDomainResponse pResponseStatus_ =
  UpgradeElasticsearchDomainResponse'
    { _uedrrsTargetVersion =
        Nothing,
      _uedrrsDomainName = Nothing,
      _uedrrsPerformCheckOnly = Nothing,
      _uedrrsResponseStatus =
        pResponseStatus_
    }

-- | The version of Elasticsearch that you intend to upgrade the domain to.
uedrrsTargetVersion :: Lens' UpgradeElasticsearchDomainResponse (Maybe Text)
uedrrsTargetVersion = lens _uedrrsTargetVersion (\s a -> s {_uedrrsTargetVersion = a})

-- | Undocumented member.
uedrrsDomainName :: Lens' UpgradeElasticsearchDomainResponse (Maybe Text)
uedrrsDomainName = lens _uedrrsDomainName (\s a -> s {_uedrrsDomainName = a})

-- | This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed. This will not actually perform the Upgrade.
uedrrsPerformCheckOnly :: Lens' UpgradeElasticsearchDomainResponse (Maybe Bool)
uedrrsPerformCheckOnly = lens _uedrrsPerformCheckOnly (\s a -> s {_uedrrsPerformCheckOnly = a})

-- | -- | The response status code.
uedrrsResponseStatus :: Lens' UpgradeElasticsearchDomainResponse Int
uedrrsResponseStatus = lens _uedrrsResponseStatus (\s a -> s {_uedrrsResponseStatus = a})

instance NFData UpgradeElasticsearchDomainResponse
