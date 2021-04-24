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
-- Module      : Network.AWS.Config.DeleteRemediationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the remediation configuration.
module Network.AWS.Config.DeleteRemediationConfiguration
  ( -- * Creating a Request
    deleteRemediationConfiguration,
    DeleteRemediationConfiguration,

    -- * Request Lenses
    dResourceType,
    dConfigRuleName,

    -- * Destructuring the Response
    deleteRemediationConfigurationResponse,
    DeleteRemediationConfigurationResponse,

    -- * Response Lenses
    delrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteRemediationConfiguration' smart constructor.
data DeleteRemediationConfiguration = DeleteRemediationConfiguration'
  { _dResourceType ::
      !( Maybe
           Text
       ),
    _dConfigRuleName ::
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

-- | Creates a value of 'DeleteRemediationConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dResourceType' - The type of a resource.
--
-- * 'dConfigRuleName' - The name of the AWS Config rule for which you want to delete remediation configuration.
deleteRemediationConfiguration ::
  -- | 'dConfigRuleName'
  Text ->
  DeleteRemediationConfiguration
deleteRemediationConfiguration pConfigRuleName_ =
  DeleteRemediationConfiguration'
    { _dResourceType =
        Nothing,
      _dConfigRuleName = pConfigRuleName_
    }

-- | The type of a resource.
dResourceType :: Lens' DeleteRemediationConfiguration (Maybe Text)
dResourceType = lens _dResourceType (\s a -> s {_dResourceType = a})

-- | The name of the AWS Config rule for which you want to delete remediation configuration.
dConfigRuleName :: Lens' DeleteRemediationConfiguration Text
dConfigRuleName = lens _dConfigRuleName (\s a -> s {_dConfigRuleName = a})

instance AWSRequest DeleteRemediationConfiguration where
  type
    Rs DeleteRemediationConfiguration =
      DeleteRemediationConfigurationResponse
  request = postJSON config
  response =
    receiveEmpty
      ( \s h x ->
          DeleteRemediationConfigurationResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteRemediationConfiguration

instance NFData DeleteRemediationConfiguration

instance ToHeaders DeleteRemediationConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.DeleteRemediationConfiguration" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteRemediationConfiguration where
  toJSON DeleteRemediationConfiguration' {..} =
    object
      ( catMaybes
          [ ("ResourceType" .=) <$> _dResourceType,
            Just ("ConfigRuleName" .= _dConfigRuleName)
          ]
      )

instance ToPath DeleteRemediationConfiguration where
  toPath = const "/"

instance ToQuery DeleteRemediationConfiguration where
  toQuery = const mempty

-- | /See:/ 'deleteRemediationConfigurationResponse' smart constructor.
newtype DeleteRemediationConfigurationResponse = DeleteRemediationConfigurationResponse'
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

-- | Creates a value of 'DeleteRemediationConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteRemediationConfigurationResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteRemediationConfigurationResponse
deleteRemediationConfigurationResponse
  pResponseStatus_ =
    DeleteRemediationConfigurationResponse'
      { _delrsResponseStatus =
          pResponseStatus_
      }

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteRemediationConfigurationResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance
  NFData
    DeleteRemediationConfigurationResponse
