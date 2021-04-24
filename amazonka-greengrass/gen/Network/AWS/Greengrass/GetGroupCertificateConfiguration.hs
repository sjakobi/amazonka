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
-- Module      : Network.AWS.Greengrass.GetGroupCertificateConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the current configuration for the CA used by the group.
module Network.AWS.Greengrass.GetGroupCertificateConfiguration
  ( -- * Creating a Request
    getGroupCertificateConfiguration,
    GetGroupCertificateConfiguration,

    -- * Request Lenses
    ggccGroupId,

    -- * Destructuring the Response
    getGroupCertificateConfigurationResponse,
    GetGroupCertificateConfigurationResponse,

    -- * Response Lenses
    ggccrrsCertificateExpiryInMilliseconds,
    ggccrrsGroupId,
    ggccrrsCertificateAuthorityExpiryInMilliseconds,
    ggccrrsResponseStatus,
  )
where

import Network.AWS.Greengrass.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getGroupCertificateConfiguration' smart constructor.
newtype GetGroupCertificateConfiguration = GetGroupCertificateConfiguration'
  { _ggccGroupId ::
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

-- | Creates a value of 'GetGroupCertificateConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggccGroupId' - The ID of the Greengrass group.
getGroupCertificateConfiguration ::
  -- | 'ggccGroupId'
  Text ->
  GetGroupCertificateConfiguration
getGroupCertificateConfiguration pGroupId_ =
  GetGroupCertificateConfiguration'
    { _ggccGroupId =
        pGroupId_
    }

-- | The ID of the Greengrass group.
ggccGroupId :: Lens' GetGroupCertificateConfiguration Text
ggccGroupId = lens _ggccGroupId (\s a -> s {_ggccGroupId = a})

instance AWSRequest GetGroupCertificateConfiguration where
  type
    Rs GetGroupCertificateConfiguration =
      GetGroupCertificateConfigurationResponse
  request = get greengrass
  response =
    receiveJSON
      ( \s h x ->
          GetGroupCertificateConfigurationResponse'
            <$> (x .?> "CertificateExpiryInMilliseconds")
            <*> (x .?> "GroupId")
            <*> (x .?> "CertificateAuthorityExpiryInMilliseconds")
            <*> (pure (fromEnum s))
      )

instance Hashable GetGroupCertificateConfiguration

instance NFData GetGroupCertificateConfiguration

instance ToHeaders GetGroupCertificateConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetGroupCertificateConfiguration where
  toPath GetGroupCertificateConfiguration' {..} =
    mconcat
      [ "/greengrass/groups/",
        toBS _ggccGroupId,
        "/certificateauthorities/configuration/expiry"
      ]

instance ToQuery GetGroupCertificateConfiguration where
  toQuery = const mempty

-- | /See:/ 'getGroupCertificateConfigurationResponse' smart constructor.
data GetGroupCertificateConfigurationResponse = GetGroupCertificateConfigurationResponse'
  { _ggccrrsCertificateExpiryInMilliseconds ::
      !( Maybe
           Text
       ),
    _ggccrrsGroupId ::
      !( Maybe
           Text
       ),
    _ggccrrsCertificateAuthorityExpiryInMilliseconds ::
      !( Maybe
           Text
       ),
    _ggccrrsResponseStatus ::
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

-- | Creates a value of 'GetGroupCertificateConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggccrrsCertificateExpiryInMilliseconds' - The amount of time remaining before the certificate expires, in milliseconds.
--
-- * 'ggccrrsGroupId' - The ID of the group certificate configuration.
--
-- * 'ggccrrsCertificateAuthorityExpiryInMilliseconds' - The amount of time remaining before the certificate authority expires, in milliseconds.
--
-- * 'ggccrrsResponseStatus' - -- | The response status code.
getGroupCertificateConfigurationResponse ::
  -- | 'ggccrrsResponseStatus'
  Int ->
  GetGroupCertificateConfigurationResponse
getGroupCertificateConfigurationResponse
  pResponseStatus_ =
    GetGroupCertificateConfigurationResponse'
      { _ggccrrsCertificateExpiryInMilliseconds =
          Nothing,
        _ggccrrsGroupId = Nothing,
        _ggccrrsCertificateAuthorityExpiryInMilliseconds =
          Nothing,
        _ggccrrsResponseStatus =
          pResponseStatus_
      }

-- | The amount of time remaining before the certificate expires, in milliseconds.
ggccrrsCertificateExpiryInMilliseconds :: Lens' GetGroupCertificateConfigurationResponse (Maybe Text)
ggccrrsCertificateExpiryInMilliseconds = lens _ggccrrsCertificateExpiryInMilliseconds (\s a -> s {_ggccrrsCertificateExpiryInMilliseconds = a})

-- | The ID of the group certificate configuration.
ggccrrsGroupId :: Lens' GetGroupCertificateConfigurationResponse (Maybe Text)
ggccrrsGroupId = lens _ggccrrsGroupId (\s a -> s {_ggccrrsGroupId = a})

-- | The amount of time remaining before the certificate authority expires, in milliseconds.
ggccrrsCertificateAuthorityExpiryInMilliseconds :: Lens' GetGroupCertificateConfigurationResponse (Maybe Text)
ggccrrsCertificateAuthorityExpiryInMilliseconds = lens _ggccrrsCertificateAuthorityExpiryInMilliseconds (\s a -> s {_ggccrrsCertificateAuthorityExpiryInMilliseconds = a})

-- | -- | The response status code.
ggccrrsResponseStatus :: Lens' GetGroupCertificateConfigurationResponse Int
ggccrrsResponseStatus = lens _ggccrrsResponseStatus (\s a -> s {_ggccrrsResponseStatus = a})

instance
  NFData
    GetGroupCertificateConfigurationResponse
