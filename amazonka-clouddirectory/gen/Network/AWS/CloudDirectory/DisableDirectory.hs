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
-- Module      : Network.AWS.CloudDirectory.DisableDirectory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.
module Network.AWS.CloudDirectory.DisableDirectory
  ( -- * Creating a Request
    disableDirectory,
    DisableDirectory,

    -- * Request Lenses
    disDirectoryARN,

    -- * Destructuring the Response
    disableDirectoryResponse,
    DisableDirectoryResponse,

    -- * Response Lenses
    ddrrsResponseStatus,
    ddrrsDirectoryARN,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disableDirectory' smart constructor.
newtype DisableDirectory = DisableDirectory'
  { _disDirectoryARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DisableDirectory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'disDirectoryARN' - The ARN of the directory to disable.
disableDirectory ::
  -- | 'disDirectoryARN'
  Text ->
  DisableDirectory
disableDirectory pDirectoryARN_ =
  DisableDirectory'
    { _disDirectoryARN =
        pDirectoryARN_
    }

-- | The ARN of the directory to disable.
disDirectoryARN :: Lens' DisableDirectory Text
disDirectoryARN = lens _disDirectoryARN (\s a -> s {_disDirectoryARN = a})

instance AWSRequest DisableDirectory where
  type Rs DisableDirectory = DisableDirectoryResponse
  request = putJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          DisableDirectoryResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "DirectoryArn")
      )

instance Hashable DisableDirectory

instance NFData DisableDirectory

instance ToHeaders DisableDirectory where
  toHeaders DisableDirectory' {..} =
    mconcat
      ["x-amz-data-partition" =# _disDirectoryARN]

instance ToJSON DisableDirectory where
  toJSON = const (Object mempty)

instance ToPath DisableDirectory where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/directory/disable"

instance ToQuery DisableDirectory where
  toQuery = const mempty

-- | /See:/ 'disableDirectoryResponse' smart constructor.
data DisableDirectoryResponse = DisableDirectoryResponse'
  { _ddrrsResponseStatus ::
      !Int,
    _ddrrsDirectoryARN ::
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

-- | Creates a value of 'DisableDirectoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrrsResponseStatus' - -- | The response status code.
--
-- * 'ddrrsDirectoryARN' - The ARN of the directory that has been disabled.
disableDirectoryResponse ::
  -- | 'ddrrsResponseStatus'
  Int ->
  -- | 'ddrrsDirectoryARN'
  Text ->
  DisableDirectoryResponse
disableDirectoryResponse
  pResponseStatus_
  pDirectoryARN_ =
    DisableDirectoryResponse'
      { _ddrrsResponseStatus =
          pResponseStatus_,
        _ddrrsDirectoryARN = pDirectoryARN_
      }

-- | -- | The response status code.
ddrrsResponseStatus :: Lens' DisableDirectoryResponse Int
ddrrsResponseStatus = lens _ddrrsResponseStatus (\s a -> s {_ddrrsResponseStatus = a})

-- | The ARN of the directory that has been disabled.
ddrrsDirectoryARN :: Lens' DisableDirectoryResponse Text
ddrrsDirectoryARN = lens _ddrrsDirectoryARN (\s a -> s {_ddrrsDirectoryARN = a})

instance NFData DisableDirectoryResponse
