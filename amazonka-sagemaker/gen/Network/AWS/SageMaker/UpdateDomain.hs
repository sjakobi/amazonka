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
-- Module      : Network.AWS.SageMaker.UpdateDomain
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the default settings for new user profiles in the domain.
module Network.AWS.SageMaker.UpdateDomain
  ( -- * Creating a Request
    updateDomain,
    UpdateDomain,

    -- * Request Lenses
    udDefaultUserSettings,
    udDomainId,

    -- * Destructuring the Response
    updateDomainResponse,
    UpdateDomainResponse,

    -- * Response Lenses
    udrrsDomainARN,
    udrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'updateDomain' smart constructor.
data UpdateDomain = UpdateDomain'
  { _udDefaultUserSettings ::
      !(Maybe UserSettings),
    _udDomainId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udDefaultUserSettings' - A collection of settings.
--
-- * 'udDomainId' - The ID of the domain to be updated.
updateDomain ::
  -- | 'udDomainId'
  Text ->
  UpdateDomain
updateDomain pDomainId_ =
  UpdateDomain'
    { _udDefaultUserSettings = Nothing,
      _udDomainId = pDomainId_
    }

-- | A collection of settings.
udDefaultUserSettings :: Lens' UpdateDomain (Maybe UserSettings)
udDefaultUserSettings = lens _udDefaultUserSettings (\s a -> s {_udDefaultUserSettings = a})

-- | The ID of the domain to be updated.
udDomainId :: Lens' UpdateDomain Text
udDomainId = lens _udDomainId (\s a -> s {_udDomainId = a})

instance AWSRequest UpdateDomain where
  type Rs UpdateDomain = UpdateDomainResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          UpdateDomainResponse'
            <$> (x .?> "DomainArn") <*> (pure (fromEnum s))
      )

instance Hashable UpdateDomain

instance NFData UpdateDomain

instance ToHeaders UpdateDomain where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.UpdateDomain" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateDomain where
  toJSON UpdateDomain' {..} =
    object
      ( catMaybes
          [ ("DefaultUserSettings" .=)
              <$> _udDefaultUserSettings,
            Just ("DomainId" .= _udDomainId)
          ]
      )

instance ToPath UpdateDomain where
  toPath = const "/"

instance ToQuery UpdateDomain where
  toQuery = const mempty

-- | /See:/ 'updateDomainResponse' smart constructor.
data UpdateDomainResponse = UpdateDomainResponse'
  { _udrrsDomainARN ::
      !(Maybe Text),
    _udrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDomainResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udrrsDomainARN' - The Amazon Resource Name (ARN) of the domain.
--
-- * 'udrrsResponseStatus' - -- | The response status code.
updateDomainResponse ::
  -- | 'udrrsResponseStatus'
  Int ->
  UpdateDomainResponse
updateDomainResponse pResponseStatus_ =
  UpdateDomainResponse'
    { _udrrsDomainARN = Nothing,
      _udrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the domain.
udrrsDomainARN :: Lens' UpdateDomainResponse (Maybe Text)
udrrsDomainARN = lens _udrrsDomainARN (\s a -> s {_udrrsDomainARN = a})

-- | -- | The response status code.
udrrsResponseStatus :: Lens' UpdateDomainResponse Int
udrrsResponseStatus = lens _udrrsResponseStatus (\s a -> s {_udrrsResponseStatus = a})

instance NFData UpdateDomainResponse
