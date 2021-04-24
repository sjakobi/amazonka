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
-- Module      : Network.AWS.CloudDirectory.DeleteDirectory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.
module Network.AWS.CloudDirectory.DeleteDirectory
  ( -- * Creating a Request
    deleteDirectory,
    DeleteDirectory,

    -- * Request Lenses
    ddDirectoryARN,

    -- * Destructuring the Response
    deleteDirectoryResponse,
    DeleteDirectoryResponse,

    -- * Response Lenses
    drsResponseStatus,
    drsDirectoryARN,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteDirectory' smart constructor.
newtype DeleteDirectory = DeleteDirectory'
  { _ddDirectoryARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDirectory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddDirectoryARN' - The ARN of the directory to delete.
deleteDirectory ::
  -- | 'ddDirectoryARN'
  Text ->
  DeleteDirectory
deleteDirectory pDirectoryARN_ =
  DeleteDirectory' {_ddDirectoryARN = pDirectoryARN_}

-- | The ARN of the directory to delete.
ddDirectoryARN :: Lens' DeleteDirectory Text
ddDirectoryARN = lens _ddDirectoryARN (\s a -> s {_ddDirectoryARN = a})

instance AWSRequest DeleteDirectory where
  type Rs DeleteDirectory = DeleteDirectoryResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          DeleteDirectoryResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "DirectoryArn")
      )

instance Hashable DeleteDirectory

instance NFData DeleteDirectory

instance ToHeaders DeleteDirectory where
  toHeaders DeleteDirectory' {..} =
    mconcat ["x-amz-data-partition" =# _ddDirectoryARN]

instance ToJSON DeleteDirectory where
  toJSON = const (Object mempty)

instance ToPath DeleteDirectory where
  toPath =
    const "/amazonclouddirectory/2017-01-11/directory"

instance ToQuery DeleteDirectory where
  toQuery = const mempty

-- | /See:/ 'deleteDirectoryResponse' smart constructor.
data DeleteDirectoryResponse = DeleteDirectoryResponse'
  { _drsResponseStatus ::
      !Int,
    _drsDirectoryARN ::
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

-- | Creates a value of 'DeleteDirectoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsResponseStatus' - -- | The response status code.
--
-- * 'drsDirectoryARN' - The ARN of the deleted directory.
deleteDirectoryResponse ::
  -- | 'drsResponseStatus'
  Int ->
  -- | 'drsDirectoryARN'
  Text ->
  DeleteDirectoryResponse
deleteDirectoryResponse
  pResponseStatus_
  pDirectoryARN_ =
    DeleteDirectoryResponse'
      { _drsResponseStatus =
          pResponseStatus_,
        _drsDirectoryARN = pDirectoryARN_
      }

-- | -- | The response status code.
drsResponseStatus :: Lens' DeleteDirectoryResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

-- | The ARN of the deleted directory.
drsDirectoryARN :: Lens' DeleteDirectoryResponse Text
drsDirectoryARN = lens _drsDirectoryARN (\s a -> s {_drsDirectoryARN = a})

instance NFData DeleteDirectoryResponse
