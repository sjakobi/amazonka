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
-- Module      : Network.AWS.IoT.ListDomainConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of domain configurations for the user. This list is sorted alphabetically by domain configuration name.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListDomainConfigurations
  ( -- * Creating a Request
    listDomainConfigurations,
    ListDomainConfigurations,

    -- * Request Lenses
    ldcPageSize,
    ldcServiceType,
    ldcMarker,

    -- * Destructuring the Response
    listDomainConfigurationsResponse,
    ListDomainConfigurationsResponse,

    -- * Response Lenses
    ldcrrsDomainConfigurations,
    ldcrrsNextMarker,
    ldcrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDomainConfigurations' smart constructor.
data ListDomainConfigurations = ListDomainConfigurations'
  { _ldcPageSize ::
      !(Maybe Nat),
    _ldcServiceType ::
      !(Maybe ServiceType),
    _ldcMarker ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListDomainConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcPageSize' - The result page size.
--
-- * 'ldcServiceType' - The type of service delivered by the endpoint.
--
-- * 'ldcMarker' - The marker for the next set of results.
listDomainConfigurations ::
  ListDomainConfigurations
listDomainConfigurations =
  ListDomainConfigurations'
    { _ldcPageSize = Nothing,
      _ldcServiceType = Nothing,
      _ldcMarker = Nothing
    }

-- | The result page size.
ldcPageSize :: Lens' ListDomainConfigurations (Maybe Natural)
ldcPageSize = lens _ldcPageSize (\s a -> s {_ldcPageSize = a}) . mapping _Nat

-- | The type of service delivered by the endpoint.
ldcServiceType :: Lens' ListDomainConfigurations (Maybe ServiceType)
ldcServiceType = lens _ldcServiceType (\s a -> s {_ldcServiceType = a})

-- | The marker for the next set of results.
ldcMarker :: Lens' ListDomainConfigurations (Maybe Text)
ldcMarker = lens _ldcMarker (\s a -> s {_ldcMarker = a})

instance AWSPager ListDomainConfigurations where
  page rq rs
    | stop (rs ^. ldcrrsNextMarker) = Nothing
    | stop (rs ^. ldcrrsDomainConfigurations) = Nothing
    | otherwise =
      Just $ rq & ldcMarker .~ rs ^. ldcrrsNextMarker

instance AWSRequest ListDomainConfigurations where
  type
    Rs ListDomainConfigurations =
      ListDomainConfigurationsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListDomainConfigurationsResponse'
            <$> (x .?> "domainConfigurations" .!@ mempty)
            <*> (x .?> "nextMarker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListDomainConfigurations

instance NFData ListDomainConfigurations

instance ToHeaders ListDomainConfigurations where
  toHeaders = const mempty

instance ToPath ListDomainConfigurations where
  toPath = const "/domainConfigurations"

instance ToQuery ListDomainConfigurations where
  toQuery ListDomainConfigurations' {..} =
    mconcat
      [ "pageSize" =: _ldcPageSize,
        "serviceType" =: _ldcServiceType,
        "marker" =: _ldcMarker
      ]

-- | /See:/ 'listDomainConfigurationsResponse' smart constructor.
data ListDomainConfigurationsResponse = ListDomainConfigurationsResponse'
  { _ldcrrsDomainConfigurations ::
      !( Maybe
           [DomainConfigurationSummary]
       ),
    _ldcrrsNextMarker ::
      !( Maybe
           Text
       ),
    _ldcrrsResponseStatus ::
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

-- | Creates a value of 'ListDomainConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcrrsDomainConfigurations' - A list of objects that contain summary information about the user's domain configurations.
--
-- * 'ldcrrsNextMarker' - The marker for the next set of results.
--
-- * 'ldcrrsResponseStatus' - -- | The response status code.
listDomainConfigurationsResponse ::
  -- | 'ldcrrsResponseStatus'
  Int ->
  ListDomainConfigurationsResponse
listDomainConfigurationsResponse pResponseStatus_ =
  ListDomainConfigurationsResponse'
    { _ldcrrsDomainConfigurations =
        Nothing,
      _ldcrrsNextMarker = Nothing,
      _ldcrrsResponseStatus = pResponseStatus_
    }

-- | A list of objects that contain summary information about the user's domain configurations.
ldcrrsDomainConfigurations :: Lens' ListDomainConfigurationsResponse [DomainConfigurationSummary]
ldcrrsDomainConfigurations = lens _ldcrrsDomainConfigurations (\s a -> s {_ldcrrsDomainConfigurations = a}) . _Default . _Coerce

-- | The marker for the next set of results.
ldcrrsNextMarker :: Lens' ListDomainConfigurationsResponse (Maybe Text)
ldcrrsNextMarker = lens _ldcrrsNextMarker (\s a -> s {_ldcrrsNextMarker = a})

-- | -- | The response status code.
ldcrrsResponseStatus :: Lens' ListDomainConfigurationsResponse Int
ldcrrsResponseStatus = lens _ldcrrsResponseStatus (\s a -> s {_ldcrrsResponseStatus = a})

instance NFData ListDomainConfigurationsResponse
