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
-- Module      : Network.AWS.SageMaker.DeleteWorkteam
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing work team. This operation can't be undone.
module Network.AWS.SageMaker.DeleteWorkteam
  ( -- * Creating a Request
    deleteWorkteam,
    DeleteWorkteam,

    -- * Request Lenses
    dwWorkteamName,

    -- * Destructuring the Response
    deleteWorkteamResponse,
    DeleteWorkteamResponse,

    -- * Response Lenses
    dwrrsResponseStatus,
    dwrrsSuccess,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteWorkteam' smart constructor.
newtype DeleteWorkteam = DeleteWorkteam'
  { _dwWorkteamName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteWorkteam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwWorkteamName' - The name of the work team to delete.
deleteWorkteam ::
  -- | 'dwWorkteamName'
  Text ->
  DeleteWorkteam
deleteWorkteam pWorkteamName_ =
  DeleteWorkteam' {_dwWorkteamName = pWorkteamName_}

-- | The name of the work team to delete.
dwWorkteamName :: Lens' DeleteWorkteam Text
dwWorkteamName = lens _dwWorkteamName (\s a -> s {_dwWorkteamName = a})

instance AWSRequest DeleteWorkteam where
  type Rs DeleteWorkteam = DeleteWorkteamResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DeleteWorkteamResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "Success")
      )

instance Hashable DeleteWorkteam

instance NFData DeleteWorkteam

instance ToHeaders DeleteWorkteam where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteWorkteam" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteWorkteam where
  toJSON DeleteWorkteam' {..} =
    object
      ( catMaybes
          [Just ("WorkteamName" .= _dwWorkteamName)]
      )

instance ToPath DeleteWorkteam where
  toPath = const "/"

instance ToQuery DeleteWorkteam where
  toQuery = const mempty

-- | /See:/ 'deleteWorkteamResponse' smart constructor.
data DeleteWorkteamResponse = DeleteWorkteamResponse'
  { _dwrrsResponseStatus ::
      !Int,
    _dwrrsSuccess :: !Bool
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteWorkteamResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dwrrsResponseStatus' - -- | The response status code.
--
-- * 'dwrrsSuccess' - Returns @true@ if the work team was successfully deleted; otherwise, returns @false@ .
deleteWorkteamResponse ::
  -- | 'dwrrsResponseStatus'
  Int ->
  -- | 'dwrrsSuccess'
  Bool ->
  DeleteWorkteamResponse
deleteWorkteamResponse pResponseStatus_ pSuccess_ =
  DeleteWorkteamResponse'
    { _dwrrsResponseStatus =
        pResponseStatus_,
      _dwrrsSuccess = pSuccess_
    }

-- | -- | The response status code.
dwrrsResponseStatus :: Lens' DeleteWorkteamResponse Int
dwrrsResponseStatus = lens _dwrrsResponseStatus (\s a -> s {_dwrrsResponseStatus = a})

-- | Returns @true@ if the work team was successfully deleted; otherwise, returns @false@ .
dwrrsSuccess :: Lens' DeleteWorkteamResponse Bool
dwrrsSuccess = lens _dwrrsSuccess (\s a -> s {_dwrrsSuccess = a})

instance NFData DeleteWorkteamResponse
