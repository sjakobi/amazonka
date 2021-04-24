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
-- Module      : Network.AWS.Glue.UpdateRegistry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing registry which is used to hold a collection of schemas. The updated properties relate to the registry, and do not modify any of the schemas within the registry.
module Network.AWS.Glue.UpdateRegistry
  ( -- * Creating a Request
    updateRegistry,
    UpdateRegistry,

    -- * Request Lenses
    urRegistryId,
    urDescription,

    -- * Destructuring the Response
    updateRegistryResponse,
    UpdateRegistryResponse,

    -- * Response Lenses
    urrrsRegistryName,
    urrrsRegistryARN,
    urrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateRegistry' smart constructor.
data UpdateRegistry = UpdateRegistry'
  { _urRegistryId ::
      !RegistryId,
    _urDescription :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateRegistry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urRegistryId' - This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).
--
-- * 'urDescription' - A description of the registry. If description is not provided, this field will not be updated.
updateRegistry ::
  -- | 'urRegistryId'
  RegistryId ->
  -- | 'urDescription'
  Text ->
  UpdateRegistry
updateRegistry pRegistryId_ pDescription_ =
  UpdateRegistry'
    { _urRegistryId = pRegistryId_,
      _urDescription = pDescription_
    }

-- | This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).
urRegistryId :: Lens' UpdateRegistry RegistryId
urRegistryId = lens _urRegistryId (\s a -> s {_urRegistryId = a})

-- | A description of the registry. If description is not provided, this field will not be updated.
urDescription :: Lens' UpdateRegistry Text
urDescription = lens _urDescription (\s a -> s {_urDescription = a})

instance AWSRequest UpdateRegistry where
  type Rs UpdateRegistry = UpdateRegistryResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          UpdateRegistryResponse'
            <$> (x .?> "RegistryName")
            <*> (x .?> "RegistryArn")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateRegistry

instance NFData UpdateRegistry

instance ToHeaders UpdateRegistry where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.UpdateRegistry" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateRegistry where
  toJSON UpdateRegistry' {..} =
    object
      ( catMaybes
          [ Just ("RegistryId" .= _urRegistryId),
            Just ("Description" .= _urDescription)
          ]
      )

instance ToPath UpdateRegistry where
  toPath = const "/"

instance ToQuery UpdateRegistry where
  toQuery = const mempty

-- | /See:/ 'updateRegistryResponse' smart constructor.
data UpdateRegistryResponse = UpdateRegistryResponse'
  { _urrrsRegistryName ::
      !(Maybe Text),
    _urrrsRegistryARN ::
      !(Maybe Text),
    _urrrsResponseStatus ::
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

-- | Creates a value of 'UpdateRegistryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrrsRegistryName' - The name of the updated registry.
--
-- * 'urrrsRegistryARN' - The Amazon Resource name (ARN) of the updated registry.
--
-- * 'urrrsResponseStatus' - -- | The response status code.
updateRegistryResponse ::
  -- | 'urrrsResponseStatus'
  Int ->
  UpdateRegistryResponse
updateRegistryResponse pResponseStatus_ =
  UpdateRegistryResponse'
    { _urrrsRegistryName =
        Nothing,
      _urrrsRegistryARN = Nothing,
      _urrrsResponseStatus = pResponseStatus_
    }

-- | The name of the updated registry.
urrrsRegistryName :: Lens' UpdateRegistryResponse (Maybe Text)
urrrsRegistryName = lens _urrrsRegistryName (\s a -> s {_urrrsRegistryName = a})

-- | The Amazon Resource name (ARN) of the updated registry.
urrrsRegistryARN :: Lens' UpdateRegistryResponse (Maybe Text)
urrrsRegistryARN = lens _urrrsRegistryARN (\s a -> s {_urrrsRegistryARN = a})

-- | -- | The response status code.
urrrsResponseStatus :: Lens' UpdateRegistryResponse Int
urrrsResponseStatus = lens _urrrsResponseStatus (\s a -> s {_urrrsResponseStatus = a})

instance NFData UpdateRegistryResponse
