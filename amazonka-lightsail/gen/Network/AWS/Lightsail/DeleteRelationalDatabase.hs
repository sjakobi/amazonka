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
-- Module      : Network.AWS.Lightsail.DeleteRelationalDatabase
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a database in Amazon Lightsail.
--
--
-- The @delete relational database@ operation supports tag-based access control via resource tags applied to the resource identified by relationalDatabaseName. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.DeleteRelationalDatabase
  ( -- * Creating a Request
    deleteRelationalDatabase,
    DeleteRelationalDatabase,

    -- * Request Lenses
    drdFinalRelationalDatabaseSnapshotName,
    drdSkipFinalSnapshot,
    drdRelationalDatabaseName,

    -- * Destructuring the Response
    deleteRelationalDatabaseResponse,
    DeleteRelationalDatabaseResponse,

    -- * Response Lenses
    drdrrsOperations,
    drdrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteRelationalDatabase' smart constructor.
data DeleteRelationalDatabase = DeleteRelationalDatabase'
  { _drdFinalRelationalDatabaseSnapshotName ::
      !(Maybe Text),
    _drdSkipFinalSnapshot ::
      !(Maybe Bool),
    _drdRelationalDatabaseName ::
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

-- | Creates a value of 'DeleteRelationalDatabase' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drdFinalRelationalDatabaseSnapshotName' - The name of the database snapshot created if @skip final snapshot@ is @false@ , which is the default value for that parameter. Constraints:     * Must contain from 2 to 255 alphanumeric characters, or hyphens.     * The first and last character must be a letter or number.
--
-- * 'drdSkipFinalSnapshot' - Determines whether a final database snapshot is created before your database is deleted. If @true@ is specified, no database snapshot is created. If @false@ is specified, a database snapshot is created before your database is deleted. You must specify the @final relational database snapshot name@ parameter if the @skip final snapshot@ parameter is @false@ . Default: @false@
--
-- * 'drdRelationalDatabaseName' - The name of the database that you are deleting.
deleteRelationalDatabase ::
  -- | 'drdRelationalDatabaseName'
  Text ->
  DeleteRelationalDatabase
deleteRelationalDatabase pRelationalDatabaseName_ =
  DeleteRelationalDatabase'
    { _drdFinalRelationalDatabaseSnapshotName =
        Nothing,
      _drdSkipFinalSnapshot = Nothing,
      _drdRelationalDatabaseName =
        pRelationalDatabaseName_
    }

-- | The name of the database snapshot created if @skip final snapshot@ is @false@ , which is the default value for that parameter. Constraints:     * Must contain from 2 to 255 alphanumeric characters, or hyphens.     * The first and last character must be a letter or number.
drdFinalRelationalDatabaseSnapshotName :: Lens' DeleteRelationalDatabase (Maybe Text)
drdFinalRelationalDatabaseSnapshotName = lens _drdFinalRelationalDatabaseSnapshotName (\s a -> s {_drdFinalRelationalDatabaseSnapshotName = a})

-- | Determines whether a final database snapshot is created before your database is deleted. If @true@ is specified, no database snapshot is created. If @false@ is specified, a database snapshot is created before your database is deleted. You must specify the @final relational database snapshot name@ parameter if the @skip final snapshot@ parameter is @false@ . Default: @false@
drdSkipFinalSnapshot :: Lens' DeleteRelationalDatabase (Maybe Bool)
drdSkipFinalSnapshot = lens _drdSkipFinalSnapshot (\s a -> s {_drdSkipFinalSnapshot = a})

-- | The name of the database that you are deleting.
drdRelationalDatabaseName :: Lens' DeleteRelationalDatabase Text
drdRelationalDatabaseName = lens _drdRelationalDatabaseName (\s a -> s {_drdRelationalDatabaseName = a})

instance AWSRequest DeleteRelationalDatabase where
  type
    Rs DeleteRelationalDatabase =
      DeleteRelationalDatabaseResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          DeleteRelationalDatabaseResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteRelationalDatabase

instance NFData DeleteRelationalDatabase

instance ToHeaders DeleteRelationalDatabase where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.DeleteRelationalDatabase" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteRelationalDatabase where
  toJSON DeleteRelationalDatabase' {..} =
    object
      ( catMaybes
          [ ("finalRelationalDatabaseSnapshotName" .=)
              <$> _drdFinalRelationalDatabaseSnapshotName,
            ("skipFinalSnapshot" .=) <$> _drdSkipFinalSnapshot,
            Just
              ( "relationalDatabaseName"
                  .= _drdRelationalDatabaseName
              )
          ]
      )

instance ToPath DeleteRelationalDatabase where
  toPath = const "/"

instance ToQuery DeleteRelationalDatabase where
  toQuery = const mempty

-- | /See:/ 'deleteRelationalDatabaseResponse' smart constructor.
data DeleteRelationalDatabaseResponse = DeleteRelationalDatabaseResponse'
  { _drdrrsOperations ::
      !( Maybe
           [Operation]
       ),
    _drdrrsResponseStatus ::
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

-- | Creates a value of 'DeleteRelationalDatabaseResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drdrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'drdrrsResponseStatus' - -- | The response status code.
deleteRelationalDatabaseResponse ::
  -- | 'drdrrsResponseStatus'
  Int ->
  DeleteRelationalDatabaseResponse
deleteRelationalDatabaseResponse pResponseStatus_ =
  DeleteRelationalDatabaseResponse'
    { _drdrrsOperations =
        Nothing,
      _drdrrsResponseStatus = pResponseStatus_
    }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
drdrrsOperations :: Lens' DeleteRelationalDatabaseResponse [Operation]
drdrrsOperations = lens _drdrrsOperations (\s a -> s {_drdrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
drdrrsResponseStatus :: Lens' DeleteRelationalDatabaseResponse Int
drdrrsResponseStatus = lens _drdrrsResponseStatus (\s a -> s {_drdrrsResponseStatus = a})

instance NFData DeleteRelationalDatabaseResponse
