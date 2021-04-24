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
-- Module      : Network.AWS.Glue.GetRegistry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified registry in detail.
module Network.AWS.Glue.GetRegistry
  ( -- * Creating a Request
    getRegistry,
    GetRegistry,

    -- * Request Lenses
    grRegistryId,

    -- * Destructuring the Response
    getRegistryResponse,
    GetRegistryResponse,

    -- * Response Lenses
    grrrsStatus,
    grrrsUpdatedTime,
    grrrsCreatedTime,
    grrrsRegistryName,
    grrrsDescription,
    grrrsRegistryARN,
    grrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRegistry' smart constructor.
newtype GetRegistry = GetRegistry'
  { _grRegistryId ::
      RegistryId
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRegistry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grRegistryId' - This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).
getRegistry ::
  -- | 'grRegistryId'
  RegistryId ->
  GetRegistry
getRegistry pRegistryId_ =
  GetRegistry' {_grRegistryId = pRegistryId_}

-- | This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).
grRegistryId :: Lens' GetRegistry RegistryId
grRegistryId = lens _grRegistryId (\s a -> s {_grRegistryId = a})

instance AWSRequest GetRegistry where
  type Rs GetRegistry = GetRegistryResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetRegistryResponse'
            <$> (x .?> "Status")
            <*> (x .?> "UpdatedTime")
            <*> (x .?> "CreatedTime")
            <*> (x .?> "RegistryName")
            <*> (x .?> "Description")
            <*> (x .?> "RegistryArn")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRegistry

instance NFData GetRegistry

instance ToHeaders GetRegistry where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetRegistry" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRegistry where
  toJSON GetRegistry' {..} =
    object
      (catMaybes [Just ("RegistryId" .= _grRegistryId)])

instance ToPath GetRegistry where
  toPath = const "/"

instance ToQuery GetRegistry where
  toQuery = const mempty

-- | /See:/ 'getRegistryResponse' smart constructor.
data GetRegistryResponse = GetRegistryResponse'
  { _grrrsStatus ::
      !(Maybe RegistryStatus),
    _grrrsUpdatedTime ::
      !(Maybe Text),
    _grrrsCreatedTime ::
      !(Maybe Text),
    _grrrsRegistryName ::
      !(Maybe Text),
    _grrrsDescription ::
      !(Maybe Text),
    _grrrsRegistryARN ::
      !(Maybe Text),
    _grrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRegistryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrrsStatus' - The status of the registry.
--
-- * 'grrrsUpdatedTime' - The date and time the registry was updated.
--
-- * 'grrrsCreatedTime' - The date and time the registry was created.
--
-- * 'grrrsRegistryName' - The name of the registry.
--
-- * 'grrrsDescription' - A description of the registry.
--
-- * 'grrrsRegistryARN' - The Amazon Resource Name (ARN) of the registry.
--
-- * 'grrrsResponseStatus' - -- | The response status code.
getRegistryResponse ::
  -- | 'grrrsResponseStatus'
  Int ->
  GetRegistryResponse
getRegistryResponse pResponseStatus_ =
  GetRegistryResponse'
    { _grrrsStatus = Nothing,
      _grrrsUpdatedTime = Nothing,
      _grrrsCreatedTime = Nothing,
      _grrrsRegistryName = Nothing,
      _grrrsDescription = Nothing,
      _grrrsRegistryARN = Nothing,
      _grrrsResponseStatus = pResponseStatus_
    }

-- | The status of the registry.
grrrsStatus :: Lens' GetRegistryResponse (Maybe RegistryStatus)
grrrsStatus = lens _grrrsStatus (\s a -> s {_grrrsStatus = a})

-- | The date and time the registry was updated.
grrrsUpdatedTime :: Lens' GetRegistryResponse (Maybe Text)
grrrsUpdatedTime = lens _grrrsUpdatedTime (\s a -> s {_grrrsUpdatedTime = a})

-- | The date and time the registry was created.
grrrsCreatedTime :: Lens' GetRegistryResponse (Maybe Text)
grrrsCreatedTime = lens _grrrsCreatedTime (\s a -> s {_grrrsCreatedTime = a})

-- | The name of the registry.
grrrsRegistryName :: Lens' GetRegistryResponse (Maybe Text)
grrrsRegistryName = lens _grrrsRegistryName (\s a -> s {_grrrsRegistryName = a})

-- | A description of the registry.
grrrsDescription :: Lens' GetRegistryResponse (Maybe Text)
grrrsDescription = lens _grrrsDescription (\s a -> s {_grrrsDescription = a})

-- | The Amazon Resource Name (ARN) of the registry.
grrrsRegistryARN :: Lens' GetRegistryResponse (Maybe Text)
grrrsRegistryARN = lens _grrrsRegistryARN (\s a -> s {_grrrsRegistryARN = a})

-- | -- | The response status code.
grrrsResponseStatus :: Lens' GetRegistryResponse Int
grrrsResponseStatus = lens _grrrsResponseStatus (\s a -> s {_grrrsResponseStatus = a})

instance NFData GetRegistryResponse
