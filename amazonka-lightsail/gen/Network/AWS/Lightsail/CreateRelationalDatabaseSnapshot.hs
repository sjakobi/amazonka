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
-- Module      : Network.AWS.Lightsail.CreateRelationalDatabaseSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot of your database in Amazon Lightsail. You can use snapshots for backups, to make copies of a database, and to save data before deleting a database.
--
--
-- The @create relational database snapshot@ operation supports tag-based access control via request tags. For more information, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide> .
module Network.AWS.Lightsail.CreateRelationalDatabaseSnapshot
  ( -- * Creating a Request
    createRelationalDatabaseSnapshot,
    CreateRelationalDatabaseSnapshot,

    -- * Request Lenses
    crdsTags,
    crdsRelationalDatabaseName,
    crdsRelationalDatabaseSnapshotName,

    -- * Destructuring the Response
    createRelationalDatabaseSnapshotResponse,
    CreateRelationalDatabaseSnapshotResponse,

    -- * Response Lenses
    crdsrrsOperations,
    crdsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createRelationalDatabaseSnapshot' smart constructor.
data CreateRelationalDatabaseSnapshot = CreateRelationalDatabaseSnapshot'
  { _crdsTags ::
      !( Maybe
           [Tag]
       ),
    _crdsRelationalDatabaseName ::
      !Text,
    _crdsRelationalDatabaseSnapshotName ::
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

-- | Creates a value of 'CreateRelationalDatabaseSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crdsTags' - The tag keys and optional values to add to the resource during create. Use the @TagResource@ action to tag a resource after it's created.
--
-- * 'crdsRelationalDatabaseName' - The name of the database on which to base your new snapshot.
--
-- * 'crdsRelationalDatabaseSnapshotName' - The name for your new database snapshot. Constraints:     * Must contain from 2 to 255 alphanumeric characters, or hyphens.     * The first and last character must be a letter or number.
createRelationalDatabaseSnapshot ::
  -- | 'crdsRelationalDatabaseName'
  Text ->
  -- | 'crdsRelationalDatabaseSnapshotName'
  Text ->
  CreateRelationalDatabaseSnapshot
createRelationalDatabaseSnapshot
  pRelationalDatabaseName_
  pRelationalDatabaseSnapshotName_ =
    CreateRelationalDatabaseSnapshot'
      { _crdsTags =
          Nothing,
        _crdsRelationalDatabaseName =
          pRelationalDatabaseName_,
        _crdsRelationalDatabaseSnapshotName =
          pRelationalDatabaseSnapshotName_
      }

-- | The tag keys and optional values to add to the resource during create. Use the @TagResource@ action to tag a resource after it's created.
crdsTags :: Lens' CreateRelationalDatabaseSnapshot [Tag]
crdsTags = lens _crdsTags (\s a -> s {_crdsTags = a}) . _Default . _Coerce

-- | The name of the database on which to base your new snapshot.
crdsRelationalDatabaseName :: Lens' CreateRelationalDatabaseSnapshot Text
crdsRelationalDatabaseName = lens _crdsRelationalDatabaseName (\s a -> s {_crdsRelationalDatabaseName = a})

-- | The name for your new database snapshot. Constraints:     * Must contain from 2 to 255 alphanumeric characters, or hyphens.     * The first and last character must be a letter or number.
crdsRelationalDatabaseSnapshotName :: Lens' CreateRelationalDatabaseSnapshot Text
crdsRelationalDatabaseSnapshotName = lens _crdsRelationalDatabaseSnapshotName (\s a -> s {_crdsRelationalDatabaseSnapshotName = a})

instance AWSRequest CreateRelationalDatabaseSnapshot where
  type
    Rs CreateRelationalDatabaseSnapshot =
      CreateRelationalDatabaseSnapshotResponse
  request = postJSON lightsail
  response =
    receiveJSON
      ( \s h x ->
          CreateRelationalDatabaseSnapshotResponse'
            <$> (x .?> "operations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable CreateRelationalDatabaseSnapshot

instance NFData CreateRelationalDatabaseSnapshot

instance ToHeaders CreateRelationalDatabaseSnapshot where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Lightsail_20161128.CreateRelationalDatabaseSnapshot" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateRelationalDatabaseSnapshot where
  toJSON CreateRelationalDatabaseSnapshot' {..} =
    object
      ( catMaybes
          [ ("tags" .=) <$> _crdsTags,
            Just
              ( "relationalDatabaseName"
                  .= _crdsRelationalDatabaseName
              ),
            Just
              ( "relationalDatabaseSnapshotName"
                  .= _crdsRelationalDatabaseSnapshotName
              )
          ]
      )

instance ToPath CreateRelationalDatabaseSnapshot where
  toPath = const "/"

instance ToQuery CreateRelationalDatabaseSnapshot where
  toQuery = const mempty

-- | /See:/ 'createRelationalDatabaseSnapshotResponse' smart constructor.
data CreateRelationalDatabaseSnapshotResponse = CreateRelationalDatabaseSnapshotResponse'
  { _crdsrrsOperations ::
      !( Maybe
           [Operation]
       ),
    _crdsrrsResponseStatus ::
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

-- | Creates a value of 'CreateRelationalDatabaseSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crdsrrsOperations' - An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
--
-- * 'crdsrrsResponseStatus' - -- | The response status code.
createRelationalDatabaseSnapshotResponse ::
  -- | 'crdsrrsResponseStatus'
  Int ->
  CreateRelationalDatabaseSnapshotResponse
createRelationalDatabaseSnapshotResponse
  pResponseStatus_ =
    CreateRelationalDatabaseSnapshotResponse'
      { _crdsrrsOperations =
          Nothing,
        _crdsrrsResponseStatus =
          pResponseStatus_
      }

-- | An array of objects that describe the result of the action, such as the status of the request, the timestamp of the request, and the resources affected by the request.
crdsrrsOperations :: Lens' CreateRelationalDatabaseSnapshotResponse [Operation]
crdsrrsOperations = lens _crdsrrsOperations (\s a -> s {_crdsrrsOperations = a}) . _Default . _Coerce

-- | -- | The response status code.
crdsrrsResponseStatus :: Lens' CreateRelationalDatabaseSnapshotResponse Int
crdsrrsResponseStatus = lens _crdsrrsResponseStatus (\s a -> s {_crdsrrsResponseStatus = a})

instance
  NFData
    CreateRelationalDatabaseSnapshotResponse
