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
-- Module      : Network.AWS.CloudDirectory.ListObjectParentPaths
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html Directory Structure> .
--
--
-- Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined @MaxResults@ , in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListObjectParentPaths
  ( -- * Creating a Request
    listObjectParentPaths,
    ListObjectParentPaths,

    -- * Request Lenses
    loppNextToken,
    loppMaxResults,
    loppDirectoryARN,
    loppObjectReference,

    -- * Destructuring the Response
    listObjectParentPathsResponse,
    ListObjectParentPathsResponse,

    -- * Response Lenses
    lopprrsNextToken,
    lopprrsPathToObjectIdentifiersList,
    lopprrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listObjectParentPaths' smart constructor.
data ListObjectParentPaths = ListObjectParentPaths'
  { _loppNextToken ::
      !(Maybe Text),
    _loppMaxResults ::
      !(Maybe Nat),
    _loppDirectoryARN :: !Text,
    _loppObjectReference ::
      !ObjectReference
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListObjectParentPaths' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loppNextToken' - The pagination token.
--
-- * 'loppMaxResults' - The maximum number of items to be retrieved in a single call. This is an approximate number.
--
-- * 'loppDirectoryARN' - The ARN of the directory to which the parent path applies.
--
-- * 'loppObjectReference' - The reference that identifies the object whose parent paths are listed.
listObjectParentPaths ::
  -- | 'loppDirectoryARN'
  Text ->
  -- | 'loppObjectReference'
  ObjectReference ->
  ListObjectParentPaths
listObjectParentPaths
  pDirectoryARN_
  pObjectReference_ =
    ListObjectParentPaths'
      { _loppNextToken = Nothing,
        _loppMaxResults = Nothing,
        _loppDirectoryARN = pDirectoryARN_,
        _loppObjectReference = pObjectReference_
      }

-- | The pagination token.
loppNextToken :: Lens' ListObjectParentPaths (Maybe Text)
loppNextToken = lens _loppNextToken (\s a -> s {_loppNextToken = a})

-- | The maximum number of items to be retrieved in a single call. This is an approximate number.
loppMaxResults :: Lens' ListObjectParentPaths (Maybe Natural)
loppMaxResults = lens _loppMaxResults (\s a -> s {_loppMaxResults = a}) . mapping _Nat

-- | The ARN of the directory to which the parent path applies.
loppDirectoryARN :: Lens' ListObjectParentPaths Text
loppDirectoryARN = lens _loppDirectoryARN (\s a -> s {_loppDirectoryARN = a})

-- | The reference that identifies the object whose parent paths are listed.
loppObjectReference :: Lens' ListObjectParentPaths ObjectReference
loppObjectReference = lens _loppObjectReference (\s a -> s {_loppObjectReference = a})

instance AWSPager ListObjectParentPaths where
  page rq rs
    | stop (rs ^. lopprrsNextToken) = Nothing
    | stop (rs ^. lopprrsPathToObjectIdentifiersList) =
      Nothing
    | otherwise =
      Just $ rq & loppNextToken .~ rs ^. lopprrsNextToken

instance AWSRequest ListObjectParentPaths where
  type
    Rs ListObjectParentPaths =
      ListObjectParentPathsResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListObjectParentPathsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "PathToObjectIdentifiersList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListObjectParentPaths

instance NFData ListObjectParentPaths

instance ToHeaders ListObjectParentPaths where
  toHeaders ListObjectParentPaths' {..} =
    mconcat
      ["x-amz-data-partition" =# _loppDirectoryARN]

instance ToJSON ListObjectParentPaths where
  toJSON ListObjectParentPaths' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _loppNextToken,
            ("MaxResults" .=) <$> _loppMaxResults,
            Just ("ObjectReference" .= _loppObjectReference)
          ]
      )

instance ToPath ListObjectParentPaths where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/object/parentpaths"

instance ToQuery ListObjectParentPaths where
  toQuery = const mempty

-- | /See:/ 'listObjectParentPathsResponse' smart constructor.
data ListObjectParentPathsResponse = ListObjectParentPathsResponse'
  { _lopprrsNextToken ::
      !( Maybe
           Text
       ),
    _lopprrsPathToObjectIdentifiersList ::
      !( Maybe
           [PathToObjectIdentifiers]
       ),
    _lopprrsResponseStatus ::
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

-- | Creates a value of 'ListObjectParentPathsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lopprrsNextToken' - The pagination token.
--
-- * 'lopprrsPathToObjectIdentifiersList' - Returns the path to the @ObjectIdentifiers@ that are associated with the directory.
--
-- * 'lopprrsResponseStatus' - -- | The response status code.
listObjectParentPathsResponse ::
  -- | 'lopprrsResponseStatus'
  Int ->
  ListObjectParentPathsResponse
listObjectParentPathsResponse pResponseStatus_ =
  ListObjectParentPathsResponse'
    { _lopprrsNextToken =
        Nothing,
      _lopprrsPathToObjectIdentifiersList =
        Nothing,
      _lopprrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
lopprrsNextToken :: Lens' ListObjectParentPathsResponse (Maybe Text)
lopprrsNextToken = lens _lopprrsNextToken (\s a -> s {_lopprrsNextToken = a})

-- | Returns the path to the @ObjectIdentifiers@ that are associated with the directory.
lopprrsPathToObjectIdentifiersList :: Lens' ListObjectParentPathsResponse [PathToObjectIdentifiers]
lopprrsPathToObjectIdentifiersList = lens _lopprrsPathToObjectIdentifiersList (\s a -> s {_lopprrsPathToObjectIdentifiersList = a}) . _Default . _Coerce

-- | -- | The response status code.
lopprrsResponseStatus :: Lens' ListObjectParentPathsResponse Int
lopprrsResponseStatus = lens _lopprrsResponseStatus (\s a -> s {_lopprrsResponseStatus = a})

instance NFData ListObjectParentPathsResponse
