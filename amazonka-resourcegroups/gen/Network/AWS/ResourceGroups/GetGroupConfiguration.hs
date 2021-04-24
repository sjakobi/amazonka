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
-- Module      : Network.AWS.ResourceGroups.GetGroupConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the service configuration associated with the specified resource group. For details about the service configuration syntax, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:GetGroupConfiguration@
module Network.AWS.ResourceGroups.GetGroupConfiguration
  ( -- * Creating a Request
    getGroupConfiguration,
    GetGroupConfiguration,

    -- * Request Lenses
    ggcGroup,

    -- * Destructuring the Response
    getGroupConfigurationResponse,
    GetGroupConfigurationResponse,

    -- * Response Lenses
    ggcrrsGroupConfiguration,
    ggcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'getGroupConfiguration' smart constructor.
newtype GetGroupConfiguration = GetGroupConfiguration'
  { _ggcGroup ::
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

-- | Creates a value of 'GetGroupConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggcGroup' - The name or the ARN of the resource group.
getGroupConfiguration ::
  GetGroupConfiguration
getGroupConfiguration =
  GetGroupConfiguration' {_ggcGroup = Nothing}

-- | The name or the ARN of the resource group.
ggcGroup :: Lens' GetGroupConfiguration (Maybe Text)
ggcGroup = lens _ggcGroup (\s a -> s {_ggcGroup = a})

instance AWSRequest GetGroupConfiguration where
  type
    Rs GetGroupConfiguration =
      GetGroupConfigurationResponse
  request = postJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          GetGroupConfigurationResponse'
            <$> (x .?> "GroupConfiguration") <*> (pure (fromEnum s))
      )

instance Hashable GetGroupConfiguration

instance NFData GetGroupConfiguration

instance ToHeaders GetGroupConfiguration where
  toHeaders = const mempty

instance ToJSON GetGroupConfiguration where
  toJSON GetGroupConfiguration' {..} =
    object (catMaybes [("Group" .=) <$> _ggcGroup])

instance ToPath GetGroupConfiguration where
  toPath = const "/get-group-configuration"

instance ToQuery GetGroupConfiguration where
  toQuery = const mempty

-- | /See:/ 'getGroupConfigurationResponse' smart constructor.
data GetGroupConfigurationResponse = GetGroupConfigurationResponse'
  { _ggcrrsGroupConfiguration ::
      !( Maybe
           GroupConfiguration
       ),
    _ggcrrsResponseStatus ::
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

-- | Creates a value of 'GetGroupConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggcrrsGroupConfiguration' - The service configuration associated with the specified group. For details about the service configuration syntax, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
--
-- * 'ggcrrsResponseStatus' - -- | The response status code.
getGroupConfigurationResponse ::
  -- | 'ggcrrsResponseStatus'
  Int ->
  GetGroupConfigurationResponse
getGroupConfigurationResponse pResponseStatus_ =
  GetGroupConfigurationResponse'
    { _ggcrrsGroupConfiguration =
        Nothing,
      _ggcrrsResponseStatus = pResponseStatus_
    }

-- | The service configuration associated with the specified group. For details about the service configuration syntax, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
ggcrrsGroupConfiguration :: Lens' GetGroupConfigurationResponse (Maybe GroupConfiguration)
ggcrrsGroupConfiguration = lens _ggcrrsGroupConfiguration (\s a -> s {_ggcrrsGroupConfiguration = a})

-- | -- | The response status code.
ggcrrsResponseStatus :: Lens' GetGroupConfigurationResponse Int
ggcrrsResponseStatus = lens _ggcrrsResponseStatus (\s a -> s {_ggcrrsResponseStatus = a})

instance NFData GetGroupConfigurationResponse
