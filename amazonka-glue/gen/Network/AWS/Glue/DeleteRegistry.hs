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
-- Module      : Network.AWS.Glue.DeleteRegistry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete the entire registry including schema and all of its versions. To get the status of the delete operation, you can call the @GetRegistry@ API after the asynchronous call. Deleting a registry will disable all online operations for the registry such as the @UpdateRegistry@ , @CreateSchema@ , @UpdateSchema@ , and @RegisterSchemaVersion@ APIs.
module Network.AWS.Glue.DeleteRegistry
  ( -- * Creating a Request
    deleteRegistry,
    DeleteRegistry,

    -- * Request Lenses
    drRegistryId,

    -- * Destructuring the Response
    deleteRegistryResponse,
    DeleteRegistryResponse,

    -- * Response Lenses
    drrrsStatus,
    drrrsRegistryName,
    drrrsRegistryARN,
    drrrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteRegistry' smart constructor.
newtype DeleteRegistry = DeleteRegistry'
  { _drRegistryId ::
      RegistryId
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteRegistry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drRegistryId' - This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).
deleteRegistry ::
  -- | 'drRegistryId'
  RegistryId ->
  DeleteRegistry
deleteRegistry pRegistryId_ =
  DeleteRegistry' {_drRegistryId = pRegistryId_}

-- | This is a wrapper structure that may contain the registry name and Amazon Resource Name (ARN).
drRegistryId :: Lens' DeleteRegistry RegistryId
drRegistryId = lens _drRegistryId (\s a -> s {_drRegistryId = a})

instance AWSRequest DeleteRegistry where
  type Rs DeleteRegistry = DeleteRegistryResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          DeleteRegistryResponse'
            <$> (x .?> "Status")
            <*> (x .?> "RegistryName")
            <*> (x .?> "RegistryArn")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteRegistry

instance NFData DeleteRegistry

instance ToHeaders DeleteRegistry where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.DeleteRegistry" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteRegistry where
  toJSON DeleteRegistry' {..} =
    object
      (catMaybes [Just ("RegistryId" .= _drRegistryId)])

instance ToPath DeleteRegistry where
  toPath = const "/"

instance ToQuery DeleteRegistry where
  toQuery = const mempty

-- | /See:/ 'deleteRegistryResponse' smart constructor.
data DeleteRegistryResponse = DeleteRegistryResponse'
  { _drrrsStatus ::
      !(Maybe RegistryStatus),
    _drrrsRegistryName ::
      !(Maybe Text),
    _drrrsRegistryARN ::
      !(Maybe Text),
    _drrrsResponseStatus ::
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

-- | Creates a value of 'DeleteRegistryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrrsStatus' - The status of the registry. A successful operation will return the @Deleting@ status.
--
-- * 'drrrsRegistryName' - The name of the registry being deleted.
--
-- * 'drrrsRegistryARN' - The Amazon Resource Name (ARN) of the registry being deleted.
--
-- * 'drrrsResponseStatus' - -- | The response status code.
deleteRegistryResponse ::
  -- | 'drrrsResponseStatus'
  Int ->
  DeleteRegistryResponse
deleteRegistryResponse pResponseStatus_ =
  DeleteRegistryResponse'
    { _drrrsStatus = Nothing,
      _drrrsRegistryName = Nothing,
      _drrrsRegistryARN = Nothing,
      _drrrsResponseStatus = pResponseStatus_
    }

-- | The status of the registry. A successful operation will return the @Deleting@ status.
drrrsStatus :: Lens' DeleteRegistryResponse (Maybe RegistryStatus)
drrrsStatus = lens _drrrsStatus (\s a -> s {_drrrsStatus = a})

-- | The name of the registry being deleted.
drrrsRegistryName :: Lens' DeleteRegistryResponse (Maybe Text)
drrrsRegistryName = lens _drrrsRegistryName (\s a -> s {_drrrsRegistryName = a})

-- | The Amazon Resource Name (ARN) of the registry being deleted.
drrrsRegistryARN :: Lens' DeleteRegistryResponse (Maybe Text)
drrrsRegistryARN = lens _drrrsRegistryARN (\s a -> s {_drrrsRegistryARN = a})

-- | -- | The response status code.
drrrsResponseStatus :: Lens' DeleteRegistryResponse Int
drrrsResponseStatus = lens _drrrsResponseStatus (\s a -> s {_drrrsResponseStatus = a})

instance NFData DeleteRegistryResponse
