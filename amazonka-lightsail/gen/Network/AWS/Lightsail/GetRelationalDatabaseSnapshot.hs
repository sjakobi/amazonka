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
-- Module      : Network.AWS.Lightsail.GetRelationalDatabaseSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific database snapshot in Amazon Lightsail.
module Network.AWS.Lightsail.GetRelationalDatabaseSnapshot
  ( -- * Creating a Request
    getRelationalDatabaseSnapshot,
    GetRelationalDatabaseSnapshot,

    -- * Request Lenses
    grdsRelationalDatabaseSnapshotName,

    -- * Destructuring the Response
    getRelationalDatabaseSnapshotResponse,
    GetRelationalDatabaseSnapshotResponse,

    -- * Response Lenses
    grdsrrsRelationalDatabaseSnapshot,
    grdsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRelationalDatabaseSnapshot' smart constructor.
newtype GetRelationalDatabaseSnapshot = GetRelationalDatabaseSnapshot'
  { _grdsRelationalDatabaseSnapshotName ::
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

-- | Creates a value of 'GetRelationalDatabaseSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdsRelationalDatabaseSnapshotName' - The name of the database snapshot for which to get information.
getRelationalDatabaseSnapshot ::
  -- | 'grdsRelationalDatabaseSnapshotName'
  Text ->
  GetRelationalDatabaseSnapshot
getRelationalDatabaseSnapshot
  pRelationalDatabaseSnapshotName_ =
    GetRelationalDatabaseSnapshot'
      { _grdsRelationalDatabaseSnapshotName =
          pRelationalDatabaseSnapshotName_
      }

-- | The name of the database snapshot for which to get information.
grdsRelationalDatabaseSnapshotName :: Lens' GetRelationalDatabaseSnapshot Text
grdsRelationalDatabaseSnapshotName = lens _grdsRelationalDatabaseSnapshotName (\s a -> s {_grdsRelationalDatabaseSnapshotName = a})

instance AWSRequest GetRelationalDatabaseSnapshot where
  type
    Rs GetRelationalDatabaseSnapshot =
      GetRelationalDatabaseSnapshotResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          GetRelationalDatabaseSnapshotResponse'
            <$> (x .?> "relationalDatabaseSnapshot")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRelationalDatabaseSnapshot

instance NFData GetRelationalDatabaseSnapshot

instance ToHeaders GetRelationalDatabaseSnapshot where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.GetRelationalDatabaseSnapshot" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRelationalDatabaseSnapshot where
  toJSON GetRelationalDatabaseSnapshot' {..} =
    object
      ( catMaybes
          [ Just
              ( "relationalDatabaseSnapshotName"
                  .= _grdsRelationalDatabaseSnapshotName
              )
          ]
      )

instance ToPath GetRelationalDatabaseSnapshot where
  toPath = const "/"

instance ToQuery GetRelationalDatabaseSnapshot where
  toQuery = const mempty

-- | /See:/ 'getRelationalDatabaseSnapshotResponse' smart constructor.
data GetRelationalDatabaseSnapshotResponse = GetRelationalDatabaseSnapshotResponse'
  { _grdsrrsRelationalDatabaseSnapshot ::
      !( Maybe
           RelationalDatabaseSnapshot
       ),
    _grdsrrsResponseStatus ::
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

-- | Creates a value of 'GetRelationalDatabaseSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grdsrrsRelationalDatabaseSnapshot' - An object describing the specified database snapshot.
--
-- * 'grdsrrsResponseStatus' - -- | The response status code.
getRelationalDatabaseSnapshotResponse ::
  -- | 'grdsrrsResponseStatus'
  Int ->
  GetRelationalDatabaseSnapshotResponse
getRelationalDatabaseSnapshotResponse
  pResponseStatus_ =
    GetRelationalDatabaseSnapshotResponse'
      { _grdsrrsRelationalDatabaseSnapshot =
          Nothing,
        _grdsrrsResponseStatus =
          pResponseStatus_
      }

-- | An object describing the specified database snapshot.
grdsrrsRelationalDatabaseSnapshot :: Lens' GetRelationalDatabaseSnapshotResponse (Maybe RelationalDatabaseSnapshot)
grdsrrsRelationalDatabaseSnapshot = lens _grdsrrsRelationalDatabaseSnapshot (\s a -> s {_grdsrrsRelationalDatabaseSnapshot = a})

-- | -- | The response status code.
grdsrrsResponseStatus :: Lens' GetRelationalDatabaseSnapshotResponse Int
grdsrrsResponseStatus = lens _grdsrrsResponseStatus (\s a -> s {_grdsrrsResponseStatus = a})

instance NFData GetRelationalDatabaseSnapshotResponse
