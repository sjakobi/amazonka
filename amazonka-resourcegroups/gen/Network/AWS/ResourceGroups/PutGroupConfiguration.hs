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
-- Module      : Network.AWS.ResourceGroups.PutGroupConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches a service configuration to the specified group. This occurs asynchronously, and can take time to complete. You can use 'GetGroupConfiguration' to check the status of the update.
--
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:PutGroupConfiguration@
module Network.AWS.ResourceGroups.PutGroupConfiguration
  ( -- * Creating a Request
    putGroupConfiguration,
    PutGroupConfiguration,

    -- * Request Lenses
    pgcConfiguration,
    pgcGroup,

    -- * Destructuring the Response
    putGroupConfigurationResponse,
    PutGroupConfigurationResponse,

    -- * Response Lenses
    pgcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'putGroupConfiguration' smart constructor.
data PutGroupConfiguration = PutGroupConfiguration'
  { _pgcConfiguration ::
      !( Maybe
           [GroupConfigurationItem]
       ),
    _pgcGroup :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutGroupConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgcConfiguration' - The new configuration to associate with the specified group. A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. A configuration is an array of 'GroupConfigurationItem' elements. For information about the syntax of a service configuration, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
--
-- * 'pgcGroup' - The name or ARN of the resource group with the configuration that you want to update.
putGroupConfiguration ::
  PutGroupConfiguration
putGroupConfiguration =
  PutGroupConfiguration'
    { _pgcConfiguration = Nothing,
      _pgcGroup = Nothing
    }

-- | The new configuration to associate with the specified group. A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. A configuration is an array of 'GroupConfigurationItem' elements. For information about the syntax of a service configuration, see <https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html Service configurations for resource groups> .
pgcConfiguration :: Lens' PutGroupConfiguration [GroupConfigurationItem]
pgcConfiguration = lens _pgcConfiguration (\s a -> s {_pgcConfiguration = a}) . _Default . _Coerce

-- | The name or ARN of the resource group with the configuration that you want to update.
pgcGroup :: Lens' PutGroupConfiguration (Maybe Text)
pgcGroup = lens _pgcGroup (\s a -> s {_pgcGroup = a})

instance AWSRequest PutGroupConfiguration where
  type
    Rs PutGroupConfiguration =
      PutGroupConfigurationResponse
  request = postJSON resourceGroups
  response =
    receiveEmpty
      ( \s h x ->
          PutGroupConfigurationResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable PutGroupConfiguration

instance NFData PutGroupConfiguration

instance ToHeaders PutGroupConfiguration where
  toHeaders = const mempty

instance ToJSON PutGroupConfiguration where
  toJSON PutGroupConfiguration' {..} =
    object
      ( catMaybes
          [ ("Configuration" .=) <$> _pgcConfiguration,
            ("Group" .=) <$> _pgcGroup
          ]
      )

instance ToPath PutGroupConfiguration where
  toPath = const "/put-group-configuration"

instance ToQuery PutGroupConfiguration where
  toQuery = const mempty

-- | /See:/ 'putGroupConfigurationResponse' smart constructor.
newtype PutGroupConfigurationResponse = PutGroupConfigurationResponse'
  { _pgcrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PutGroupConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgcrrsResponseStatus' - -- | The response status code.
putGroupConfigurationResponse ::
  -- | 'pgcrrsResponseStatus'
  Int ->
  PutGroupConfigurationResponse
putGroupConfigurationResponse pResponseStatus_ =
  PutGroupConfigurationResponse'
    { _pgcrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
pgcrrsResponseStatus :: Lens' PutGroupConfigurationResponse Int
pgcrrsResponseStatus = lens _pgcrrsResponseStatus (\s a -> s {_pgcrrsResponseStatus = a})

instance NFData PutGroupConfigurationResponse
