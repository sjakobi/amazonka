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
-- Module      : Network.AWS.IoT.DeleteDomainConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified domain configuration.
module Network.AWS.IoT.DeleteDomainConfiguration
  ( -- * Creating a Request
    deleteDomainConfiguration,
    DeleteDomainConfiguration,

    -- * Request Lenses
    ddcDomainConfigurationName,

    -- * Destructuring the Response
    deleteDomainConfigurationResponse,
    DeleteDomainConfigurationResponse,

    -- * Response Lenses
    delrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDomainConfiguration' smart constructor.
newtype DeleteDomainConfiguration = DeleteDomainConfiguration'
  { _ddcDomainConfigurationName ::
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

-- | Creates a value of 'DeleteDomainConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcDomainConfigurationName' - The name of the domain configuration to be deleted.
deleteDomainConfiguration ::
  -- | 'ddcDomainConfigurationName'
  Text ->
  DeleteDomainConfiguration
deleteDomainConfiguration pDomainConfigurationName_ =
  DeleteDomainConfiguration'
    { _ddcDomainConfigurationName =
        pDomainConfigurationName_
    }

-- | The name of the domain configuration to be deleted.
ddcDomainConfigurationName :: Lens' DeleteDomainConfiguration Text
ddcDomainConfigurationName = lens _ddcDomainConfigurationName (\s a -> s {_ddcDomainConfigurationName = a})

instance AWSRequest DeleteDomainConfiguration where
  type
    Rs DeleteDomainConfiguration =
      DeleteDomainConfigurationResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteDomainConfigurationResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteDomainConfiguration

instance NFData DeleteDomainConfiguration

instance ToHeaders DeleteDomainConfiguration where
  toHeaders = const mempty

instance ToPath DeleteDomainConfiguration where
  toPath DeleteDomainConfiguration' {..} =
    mconcat
      [ "/domainConfigurations/",
        toBS _ddcDomainConfigurationName
      ]

instance ToQuery DeleteDomainConfiguration where
  toQuery = const mempty

-- | /See:/ 'deleteDomainConfigurationResponse' smart constructor.
newtype DeleteDomainConfigurationResponse = DeleteDomainConfigurationResponse'
  { _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteDomainConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteDomainConfigurationResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteDomainConfigurationResponse
deleteDomainConfigurationResponse pResponseStatus_ =
  DeleteDomainConfigurationResponse'
    { _delrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteDomainConfigurationResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteDomainConfigurationResponse
