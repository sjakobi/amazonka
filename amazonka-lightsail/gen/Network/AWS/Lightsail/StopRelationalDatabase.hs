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
-- Module      : Network.AWS.Lightsail.StopRelationalDatabase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a specific database that is currently running in Amazon Lightsail.
--
--
-- The @stop relational database@ operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.StopRelationalDatabase
  ( -- * Creating a Request
    stopRelationalDatabase,
    StopRelationalDatabase,

    -- * Request Lenses
    sRelationalDatabaseSnapshotName,
    sRelationalDatabaseName,

    -- * Destructuring the Response
    stopRelationalDatabaseResponse,
    StopRelationalDatabaseResponse,

    -- * Response Lenses
    srsOperations,
    srsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopRelationalDatabase' smart constructor.
data StopRelationalDatabase = StopRelationalDatabase'
  { _sRelationalDatabaseSnapshotName ::
      !(Maybe Text),
    _sRelationalDatabaseName ::
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

-- | Creates a value of 'StopRelationalDatabase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sRelationalDatabaseSnapshotName' - The name of your new database snapshot to be created before stopping your database.
--
-- * 'sRelationalDatabaseName' - The name of your database to stop.
stopRelationalDatabase ::
  -- | 'sRelationalDatabaseName'
  Text ->
  StopRelationalDatabase
stopRelationalDatabase pRelationalDatabaseName_ =
  StopRelationalDatabase'
    { _sRelationalDatabaseSnapshotName =
        Nothing,
      _sRelationalDatabaseName = pRelationalDatabaseName_
    }

-- | The name of your new database snapshot to be created before stopping your database.
sRelationalDatabaseSnapshotName :: Lens' StopRelationalDatabase (Maybe Text)
sRelationalDatabaseSnapshotName = lens _sRelationalDatabaseSnapshotName (\s a -> s {_sRelationalDatabaseSnapshotName = a})

-- | The name of your database to stop.
sRelationalDatabaseName :: Lens' StopRelationalDatabase Text
sRelationalDatabaseName = lens _sRelationalDatabaseName (\s a -> s {_sRelationalDatabaseName = a})

instance AWSRequest StopRelationalDatabase where
  type
    Rs StopRelationalDatabase =
      StopRelationalDatabaseResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          StopRelationalDatabaseResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable StopRelationalDatabase

instance NFData StopRelationalDatabase

instance ToHeaders StopRelationalDatabase where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.StopRelationalDatabase" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopRelationalDatabase where
  toJSON StopRelationalDatabase' {..} =
    object
      ( catMaybes
          [ ("relationalDatabaseSnapshotName" .=)
              <$> _sRelationalDatabaseSnapshotName,
            Just
              ( "relationalDatabaseName"
                  .= _sRelationalDatabaseName
              )
          ]
      )

instance ToPath StopRelationalDatabase where
  toPath = const "/"

instance ToQuery StopRelationalDatabase where
  toQuery = const mempty

-- | /See:/ 'stopRelationalDatabaseResponse' smart constructor.
data StopRelationalDatabaseResponse = StopRelationalDatabaseResponse'
  { _srsOperations ::
      !( Maybe
           [Operation]
       ),
    _srsResponseStatus ::
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

-- | Creates a value of 'StopRelationalDatabaseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'srsResponseStatus' - -- | The response status code.
stopRelationalDatabaseResponse ::
  -- | 'srsResponseStatus'
  Int ->
  StopRelationalDatabaseResponse
stopRelationalDatabaseResponse pResponseStatus_ =
  StopRelationalDatabaseResponse'
    { _srsOperations =
        Nothing,
      _srsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
srsOperations :: Lens' StopRelationalDatabaseResponse [Operation]
srsOperations = lens _srsOperations (\s a -> s {_srsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
srsResponseStatus :: Lens' StopRelationalDatabaseResponse Int
srsResponseStatus = lens _srsResponseStatus (\s a -> s {_srsResponseStatus = a})

instance NFData StopRelationalDatabaseResponse
