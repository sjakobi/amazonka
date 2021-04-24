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
-- Module      : Network.AWS.CodeBuild.DeleteBuildBatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a batch build.
module Network.AWS.CodeBuild.DeleteBuildBatch
  ( -- * Creating a Request
    deleteBuildBatch,
    DeleteBuildBatch,

    -- * Request Lenses
    dbbId,

    -- * Destructuring the Response
    deleteBuildBatchResponse,
    DeleteBuildBatchResponse,

    -- * Response Lenses
    dbbrrsStatusCode,
    dbbrrsBuildsDeleted,
    dbbrrsBuildsNotDeleted,
    dbbrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteBuildBatch' smart constructor.
newtype DeleteBuildBatch = DeleteBuildBatch'
  { _dbbId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteBuildBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbbId' - The identifier of the batch build to delete.
deleteBuildBatch ::
  -- | 'dbbId'
  Text ->
  DeleteBuildBatch
deleteBuildBatch pId_ =
  DeleteBuildBatch' {_dbbId = pId_}

-- | The identifier of the batch build to delete.
dbbId :: Lens' DeleteBuildBatch Text
dbbId = lens _dbbId (\s a -> s {_dbbId = a})

instance AWSRequest DeleteBuildBatch where
  type Rs DeleteBuildBatch = DeleteBuildBatchResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          DeleteBuildBatchResponse'
            <$> (x .?> "statusCode")
            <*> (x .?> "buildsDeleted")
            <*> (x .?> "buildsNotDeleted" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteBuildBatch

instance NFData DeleteBuildBatch

instance ToHeaders DeleteBuildBatch where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeBuild_20161006.DeleteBuildBatch" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteBuildBatch where
  toJSON DeleteBuildBatch' {..} =
    object (catMaybes [Just ("id" .= _dbbId)])

instance ToPath DeleteBuildBatch where
  toPath = const "/"

instance ToQuery DeleteBuildBatch where
  toQuery = const mempty

-- | /See:/ 'deleteBuildBatchResponse' smart constructor.
data DeleteBuildBatchResponse = DeleteBuildBatchResponse'
  { _dbbrrsStatusCode ::
      !(Maybe Text),
    _dbbrrsBuildsDeleted ::
      !(Maybe (List1 Text)),
    _dbbrrsBuildsNotDeleted ::
      !( Maybe
           [BuildNotDeleted]
       ),
    _dbbrrsResponseStatus ::
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

-- | Creates a value of 'DeleteBuildBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbbrrsStatusCode' - The status code.
--
-- * 'dbbrrsBuildsDeleted' - An array of strings that contain the identifiers of the builds that were deleted.
--
-- * 'dbbrrsBuildsNotDeleted' - An array of @BuildNotDeleted@ objects that specify the builds that could not be deleted.
--
-- * 'dbbrrsResponseStatus' - -- | The response status code.
deleteBuildBatchResponse ::
  -- | 'dbbrrsResponseStatus'
  Int ->
  DeleteBuildBatchResponse
deleteBuildBatchResponse pResponseStatus_ =
  DeleteBuildBatchResponse'
    { _dbbrrsStatusCode =
        Nothing,
      _dbbrrsBuildsDeleted = Nothing,
      _dbbrrsBuildsNotDeleted = Nothing,
      _dbbrrsResponseStatus = pResponseStatus_
    }

-- | The status code.
dbbrrsStatusCode :: Lens' DeleteBuildBatchResponse (Maybe Text)
dbbrrsStatusCode = lens _dbbrrsStatusCode (\s a -> s {_dbbrrsStatusCode = a})

-- | An array of strings that contain the identifiers of the builds that were deleted.
dbbrrsBuildsDeleted :: Lens' DeleteBuildBatchResponse (Maybe (NonEmpty Text))
dbbrrsBuildsDeleted = lens _dbbrrsBuildsDeleted (\s a -> s {_dbbrrsBuildsDeleted = a}) . mapping _List1

-- | An array of @BuildNotDeleted@ objects that specify the builds that could not be deleted.
dbbrrsBuildsNotDeleted :: Lens' DeleteBuildBatchResponse [BuildNotDeleted]
dbbrrsBuildsNotDeleted = lens _dbbrrsBuildsNotDeleted (\s a -> s {_dbbrrsBuildsNotDeleted = a}) . _Default . _Coerce

-- | -- | The response status code.
dbbrrsResponseStatus :: Lens' DeleteBuildBatchResponse Int
dbbrrsResponseStatus = lens _dbbrrsResponseStatus (\s a -> s {_dbbrrsResponseStatus = a})

instance NFData DeleteBuildBatchResponse
