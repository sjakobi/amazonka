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
-- Module      : Network.AWS.Greengrass.UpdateGroupCertificateConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Certificate expiry time for a group.
module Network.AWS.Greengrass.UpdateGroupCertificateConfiguration
  ( -- * Creating a Request
    updateGroupCertificateConfiguration,
    UpdateGroupCertificateConfiguration,

    -- * Request Lenses
    ugccCertificateExpiryInMilliseconds,
    ugccGroupId,

    -- * Destructuring the Response
    updateGroupCertificateConfigurationResponse,
    UpdateGroupCertificateConfigurationResponse,

    -- * Response Lenses
    ugccrrsCertificateExpiryInMilliseconds,
    ugccrrsGroupId,
    ugccrrsCertificateAuthorityExpiryInMilliseconds,
    ugccrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateGroupCertificateConfiguration' smart constructor.
data UpdateGroupCertificateConfiguration = UpdateGroupCertificateConfiguration'
  { _ugccCertificateExpiryInMilliseconds ::
      !( Maybe
           Text
       ),
    _ugccGroupId ::
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

-- | Creates a value of 'UpdateGroupCertificateConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugccCertificateExpiryInMilliseconds' - The amount of time remaining before the certificate expires, in milliseconds.
--
-- * 'ugccGroupId' - The ID of the Greengrass group.
updateGroupCertificateConfiguration ::
  -- | 'ugccGroupId'
  Text ->
  UpdateGroupCertificateConfiguration
updateGroupCertificateConfiguration pGroupId_ =
  UpdateGroupCertificateConfiguration'
    { _ugccCertificateExpiryInMilliseconds =
        Nothing,
      _ugccGroupId = pGroupId_
    }

-- | The amount of time remaining before the certificate expires, in milliseconds.
ugccCertificateExpiryInMilliseconds :: Lens' UpdateGroupCertificateConfiguration (Maybe Text)
ugccCertificateExpiryInMilliseconds = lens _ugccCertificateExpiryInMilliseconds (\s a -> s {_ugccCertificateExpiryInMilliseconds = a})

-- | The ID of the Greengrass group.
ugccGroupId :: Lens' UpdateGroupCertificateConfiguration Text
ugccGroupId = lens _ugccGroupId (\s a -> s {_ugccGroupId = a})

instance
  AWSRequest
    UpdateGroupCertificateConfiguration
  where
  type
    Rs UpdateGroupCertificateConfiguration =
      UpdateGroupCertificateConfigurationResponse
  request = putJSON greengrass
  response =
    receiveJSON
      ( \s h x ->
          UpdateGroupCertificateConfigurationResponse'
            <$> (x .?> "CertificateExpiryInMilliseconds")
            <*> (x .?> "GroupId")
            <*> (x .?> "CertificateAuthorityExpiryInMilliseconds")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateGroupCertificateConfiguration

instance NFData UpdateGroupCertificateConfiguration

instance
  ToHeaders
    UpdateGroupCertificateConfiguration
  where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateGroupCertificateConfiguration where
  toJSON UpdateGroupCertificateConfiguration' {..} =
    object
      ( catMaybes
          [ ("CertificateExpiryInMilliseconds" .=)
              <$> _ugccCertificateExpiryInMilliseconds
          ]
      )

instance ToPath UpdateGroupCertificateConfiguration where
  toPath UpdateGroupCertificateConfiguration' {..} =
    mconcat
      [ "/greengrass/groups/",
        toBS _ugccGroupId,
        "/certificateauthorities/configuration/expiry"
      ]

instance ToQuery UpdateGroupCertificateConfiguration where
  toQuery = const mempty

-- | /See:/ 'updateGroupCertificateConfigurationResponse' smart constructor.
data UpdateGroupCertificateConfigurationResponse = UpdateGroupCertificateConfigurationResponse'
  { _ugccrrsCertificateExpiryInMilliseconds ::
      !( Maybe
           Text
       ),
    _ugccrrsGroupId ::
      !( Maybe
           Text
       ),
    _ugccrrsCertificateAuthorityExpiryInMilliseconds ::
      !( Maybe
           Text
       ),
    _ugccrrsResponseStatus ::
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

-- | Creates a value of 'UpdateGroupCertificateConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugccrrsCertificateExpiryInMilliseconds' - The amount of time remaining before the certificate expires, in milliseconds.
--
-- * 'ugccrrsGroupId' - The ID of the group certificate configuration.
--
-- * 'ugccrrsCertificateAuthorityExpiryInMilliseconds' - The amount of time remaining before the certificate authority expires, in milliseconds.
--
-- * 'ugccrrsResponseStatus' - -- | The response status code.
updateGroupCertificateConfigurationResponse ::
  -- | 'ugccrrsResponseStatus'
  Int ->
  UpdateGroupCertificateConfigurationResponse
updateGroupCertificateConfigurationResponse
  pResponseStatus_ =
    UpdateGroupCertificateConfigurationResponse'
      { _ugccrrsCertificateExpiryInMilliseconds =
          Nothing,
        _ugccrrsGroupId = Nothing,
        _ugccrrsCertificateAuthorityExpiryInMilliseconds =
          Nothing,
        _ugccrrsResponseStatus =
          pResponseStatus_
      }

-- | The amount of time remaining before the certificate expires, in milliseconds.
ugccrrsCertificateExpiryInMilliseconds :: Lens' UpdateGroupCertificateConfigurationResponse (Maybe Text)
ugccrrsCertificateExpiryInMilliseconds = lens _ugccrrsCertificateExpiryInMilliseconds (\s a -> s {_ugccrrsCertificateExpiryInMilliseconds = a})

-- | The ID of the group certificate configuration.
ugccrrsGroupId :: Lens' UpdateGroupCertificateConfigurationResponse (Maybe Text)
ugccrrsGroupId = lens _ugccrrsGroupId (\s a -> s {_ugccrrsGroupId = a})

-- | The amount of time remaining before the certificate authority expires, in milliseconds.
ugccrrsCertificateAuthorityExpiryInMilliseconds :: Lens' UpdateGroupCertificateConfigurationResponse (Maybe Text)
ugccrrsCertificateAuthorityExpiryInMilliseconds = lens _ugccrrsCertificateAuthorityExpiryInMilliseconds (\s a -> s {_ugccrrsCertificateAuthorityExpiryInMilliseconds = a})

-- | -- | The response status code.
ugccrrsResponseStatus :: Lens' UpdateGroupCertificateConfigurationResponse Int
ugccrrsResponseStatus = lens _ugccrrsResponseStatus (\s a -> s {_ugccrrsResponseStatus = a})

instance
  NFData
    UpdateGroupCertificateConfigurationResponse
