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
-- Module      : Network.AWS.ElasticSearch.GetUpgradeStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.
module Network.AWS.ElasticSearch.GetUpgradeStatus
  ( -- * Creating a Request
    getUpgradeStatus,
    GetUpgradeStatus,

    -- * Request Lenses
    gusDomainName,

    -- * Destructuring the Response
    getUpgradeStatusResponse,
    GetUpgradeStatusResponse,

    -- * Response Lenses
    gusrrsUpgradeName,
    gusrrsUpgradeStep,
    gusrrsStepStatus,
    gusrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for request parameters to @'GetUpgradeStatus' @ operation.
--
--
--
-- /See:/ 'getUpgradeStatus' smart constructor.
newtype GetUpgradeStatus = GetUpgradeStatus'
  { _gusDomainName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUpgradeStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gusDomainName' - Undocumented member.
getUpgradeStatus ::
  -- | 'gusDomainName'
  Text ->
  GetUpgradeStatus
getUpgradeStatus pDomainName_ =
  GetUpgradeStatus' {_gusDomainName = pDomainName_}

-- | Undocumented member.
gusDomainName :: Lens' GetUpgradeStatus Text
gusDomainName = lens _gusDomainName (\s a -> s {_gusDomainName = a})

instance AWSRequest GetUpgradeStatus where
  type Rs GetUpgradeStatus = GetUpgradeStatusResponse
  request = get elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          GetUpgradeStatusResponse'
            <$> (x .?> "UpgradeName")
            <*> (x .?> "UpgradeStep")
            <*> (x .?> "StepStatus")
            <*> (pure (fromEnum s))
      )

instance Hashable GetUpgradeStatus

instance NFData GetUpgradeStatus

instance ToHeaders GetUpgradeStatus where
  toHeaders = const mempty

instance ToPath GetUpgradeStatus where
  toPath GetUpgradeStatus' {..} =
    mconcat
      [ "/2015-01-01/es/upgradeDomain/",
        toBS _gusDomainName,
        "/status"
      ]

instance ToQuery GetUpgradeStatus where
  toQuery = const mempty

-- | Container for response returned by @'GetUpgradeStatus' @ operation.
--
--
--
-- /See:/ 'getUpgradeStatusResponse' smart constructor.
data GetUpgradeStatusResponse = GetUpgradeStatusResponse'
  { _gusrrsUpgradeName ::
      !(Maybe Text),
    _gusrrsUpgradeStep ::
      !(Maybe UpgradeStep),
    _gusrrsStepStatus ::
      !( Maybe
           UpgradeStatus
       ),
    _gusrrsResponseStatus ::
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

-- | Creates a value of 'GetUpgradeStatusResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gusrrsUpgradeName' - A string that describes the update briefly
--
-- * 'gusrrsUpgradeStep' - Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through:     * PreUpgradeCheck    * Snapshot    * Upgrade
--
-- * 'gusrrsStepStatus' - One of 4 statuses that a step can go through returned as part of the @'GetUpgradeStatusResponse' @ object. The status can take one of the following values:     * In Progress    * Succeeded    * Succeeded with Issues    * Failed
--
-- * 'gusrrsResponseStatus' - -- | The response status code.
getUpgradeStatusResponse ::
  -- | 'gusrrsResponseStatus'
  Int ->
  GetUpgradeStatusResponse
getUpgradeStatusResponse pResponseStatus_ =
  GetUpgradeStatusResponse'
    { _gusrrsUpgradeName =
        Nothing,
      _gusrrsUpgradeStep = Nothing,
      _gusrrsStepStatus = Nothing,
      _gusrrsResponseStatus = pResponseStatus_
    }

-- | A string that describes the update briefly
gusrrsUpgradeName :: Lens' GetUpgradeStatusResponse (Maybe Text)
gusrrsUpgradeName = lens _gusrrsUpgradeName (\s a -> s {_gusrrsUpgradeName = a})

-- | Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through:     * PreUpgradeCheck    * Snapshot    * Upgrade
gusrrsUpgradeStep :: Lens' GetUpgradeStatusResponse (Maybe UpgradeStep)
gusrrsUpgradeStep = lens _gusrrsUpgradeStep (\s a -> s {_gusrrsUpgradeStep = a})

-- | One of 4 statuses that a step can go through returned as part of the @'GetUpgradeStatusResponse' @ object. The status can take one of the following values:     * In Progress    * Succeeded    * Succeeded with Issues    * Failed
gusrrsStepStatus :: Lens' GetUpgradeStatusResponse (Maybe UpgradeStatus)
gusrrsStepStatus = lens _gusrrsStepStatus (\s a -> s {_gusrrsStepStatus = a})

-- | -- | The response status code.
gusrrsResponseStatus :: Lens' GetUpgradeStatusResponse Int
gusrrsResponseStatus = lens _gusrrsResponseStatus (\s a -> s {_gusrrsResponseStatus = a})

instance NFData GetUpgradeStatusResponse
