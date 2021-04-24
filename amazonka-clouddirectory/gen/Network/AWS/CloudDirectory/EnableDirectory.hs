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
-- Module      : Network.AWS.CloudDirectory.EnableDirectory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.
module Network.AWS.CloudDirectory.EnableDirectory
  ( -- * Creating a Request
    enableDirectory,
    EnableDirectory,

    -- * Request Lenses
    edDirectoryARN,

    -- * Destructuring the Response
    enableDirectoryResponse,
    EnableDirectoryResponse,

    -- * Response Lenses
    edrrsResponseStatus,
    edrrsDirectoryARN,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'enableDirectory' smart constructor.
newtype EnableDirectory = EnableDirectory'
  { _edDirectoryARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnableDirectory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edDirectoryARN' - The ARN of the directory to enable.
enableDirectory ::
  -- | 'edDirectoryARN'
  Text ->
  EnableDirectory
enableDirectory pDirectoryARN_ =
  EnableDirectory' {_edDirectoryARN = pDirectoryARN_}

-- | The ARN of the directory to enable.
edDirectoryARN :: Lens' EnableDirectory Text
edDirectoryARN = lens _edDirectoryARN (\s a -> s {_edDirectoryARN = a})

instance AWSRequest EnableDirectory where
  type Rs EnableDirectory = EnableDirectoryResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          EnableDirectoryResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "DirectoryArn")
      )

instance Hashable EnableDirectory

instance NFData EnableDirectory

instance ToHeaders EnableDirectory where
  toHeaders EnableDirectory' {..} =
    mconcat ["x-amz-data-partition" =# _edDirectoryARN]

instance ToJSON EnableDirectory where
  toJSON = const (Object mempty)

instance ToPath EnableDirectory where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/directory/enable"

instance ToQuery EnableDirectory where
  toQuery = const mempty

-- | /See:/ 'enableDirectoryResponse' smart constructor.
data EnableDirectoryResponse = EnableDirectoryResponse'
  { _edrrsResponseStatus ::
      !Int,
    _edrrsDirectoryARN ::
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

-- | Creates a value of 'EnableDirectoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edrrsResponseStatus' - -- | The response status code.
--
-- * 'edrrsDirectoryARN' - The ARN of the enabled directory.
enableDirectoryResponse ::
  -- | 'edrrsResponseStatus'
  Int ->
  -- | 'edrrsDirectoryARN'
  Text ->
  EnableDirectoryResponse
enableDirectoryResponse
  pResponseStatus_
  pDirectoryARN_ =
    EnableDirectoryResponse'
      { _edrrsResponseStatus =
          pResponseStatus_,
        _edrrsDirectoryARN = pDirectoryARN_
      }

-- | -- | The response status code.
edrrsResponseStatus :: Lens' EnableDirectoryResponse Int
edrrsResponseStatus = lens _edrrsResponseStatus (\s a -> s {_edrrsResponseStatus = a})

-- | The ARN of the enabled directory.
edrrsDirectoryARN :: Lens' EnableDirectoryResponse Text
edrrsDirectoryARN = lens _edrrsDirectoryARN (\s a -> s {_edrrsDirectoryARN = a})

instance NFData EnableDirectoryResponse
