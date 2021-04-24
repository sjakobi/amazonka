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
-- Module      : Network.AWS.CloudDirectory.ListObjectChildren
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a paginated list of child objects that are associated with a given object.
module Network.AWS.CloudDirectory.ListObjectChildren
  ( -- * Creating a Request
    listObjectChildren,
    ListObjectChildren,

    -- * Request Lenses
    locNextToken,
    locMaxResults,
    locConsistencyLevel,
    locDirectoryARN,
    locObjectReference,

    -- * Destructuring the Response
    listObjectChildrenResponse,
    ListObjectChildrenResponse,

    -- * Response Lenses
    locrrsNextToken,
    locrrsChildren,
    locrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listObjectChildren' smart constructor.
data ListObjectChildren = ListObjectChildren'
  { _locNextToken ::
      !(Maybe Text),
    _locMaxResults :: !(Maybe Nat),
    _locConsistencyLevel ::
      !(Maybe ConsistencyLevel),
    _locDirectoryARN :: !Text,
    _locObjectReference ::
      !ObjectReference
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListObjectChildren' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'locNextToken' - The pagination token.
--
-- * 'locMaxResults' - The maximum number of items to be retrieved in a single call. This is an approximate number.
--
-- * 'locConsistencyLevel' - Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.
--
-- * 'locDirectoryARN' - The Amazon Resource Name (ARN) that is associated with the 'Directory' where the object resides. For more information, see 'arns' .
--
-- * 'locObjectReference' - The reference that identifies the object for which child objects are being listed.
listObjectChildren ::
  -- | 'locDirectoryARN'
  Text ->
  -- | 'locObjectReference'
  ObjectReference ->
  ListObjectChildren
listObjectChildren pDirectoryARN_ pObjectReference_ =
  ListObjectChildren'
    { _locNextToken = Nothing,
      _locMaxResults = Nothing,
      _locConsistencyLevel = Nothing,
      _locDirectoryARN = pDirectoryARN_,
      _locObjectReference = pObjectReference_
    }

-- | The pagination token.
locNextToken :: Lens' ListObjectChildren (Maybe Text)
locNextToken = lens _locNextToken (\s a -> s {_locNextToken = a})

-- | The maximum number of items to be retrieved in a single call. This is an approximate number.
locMaxResults :: Lens' ListObjectChildren (Maybe Natural)
locMaxResults = lens _locMaxResults (\s a -> s {_locMaxResults = a}) . mapping _Nat

-- | Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.
locConsistencyLevel :: Lens' ListObjectChildren (Maybe ConsistencyLevel)
locConsistencyLevel = lens _locConsistencyLevel (\s a -> s {_locConsistencyLevel = a})

-- | The Amazon Resource Name (ARN) that is associated with the 'Directory' where the object resides. For more information, see 'arns' .
locDirectoryARN :: Lens' ListObjectChildren Text
locDirectoryARN = lens _locDirectoryARN (\s a -> s {_locDirectoryARN = a})

-- | The reference that identifies the object for which child objects are being listed.
locObjectReference :: Lens' ListObjectChildren ObjectReference
locObjectReference = lens _locObjectReference (\s a -> s {_locObjectReference = a})

instance AWSRequest ListObjectChildren where
  type
    Rs ListObjectChildren =
      ListObjectChildrenResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListObjectChildrenResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Children" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListObjectChildren

instance NFData ListObjectChildren

instance ToHeaders ListObjectChildren where
  toHeaders ListObjectChildren' {..} =
    mconcat
      [ "x-amz-consistency-level" =# _locConsistencyLevel,
        "x-amz-data-partition" =# _locDirectoryARN
      ]

instance ToJSON ListObjectChildren where
  toJSON ListObjectChildren' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _locNextToken,
            ("MaxResults" .=) <$> _locMaxResults,
            Just ("ObjectReference" .= _locObjectReference)
          ]
      )

instance ToPath ListObjectChildren where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/object/children"

instance ToQuery ListObjectChildren where
  toQuery = const mempty

-- | /See:/ 'listObjectChildrenResponse' smart constructor.
data ListObjectChildrenResponse = ListObjectChildrenResponse'
  { _locrrsNextToken ::
      !(Maybe Text),
    _locrrsChildren ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _locrrsResponseStatus ::
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

-- | Creates a value of 'ListObjectChildrenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'locrrsNextToken' - The pagination token.
--
-- * 'locrrsChildren' - Children structure, which is a map with key as the @LinkName@ and @ObjectIdentifier@ as the value.
--
-- * 'locrrsResponseStatus' - -- | The response status code.
listObjectChildrenResponse ::
  -- | 'locrrsResponseStatus'
  Int ->
  ListObjectChildrenResponse
listObjectChildrenResponse pResponseStatus_ =
  ListObjectChildrenResponse'
    { _locrrsNextToken =
        Nothing,
      _locrrsChildren = Nothing,
      _locrrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
locrrsNextToken :: Lens' ListObjectChildrenResponse (Maybe Text)
locrrsNextToken = lens _locrrsNextToken (\s a -> s {_locrrsNextToken = a})

-- | Children structure, which is a map with key as the @LinkName@ and @ObjectIdentifier@ as the value.
locrrsChildren :: Lens' ListObjectChildrenResponse (HashMap Text Text)
locrrsChildren = lens _locrrsChildren (\s a -> s {_locrrsChildren = a}) . _Default . _Map

-- | -- | The response status code.
locrrsResponseStatus :: Lens' ListObjectChildrenResponse Int
locrrsResponseStatus = lens _locrrsResponseStatus (\s a -> s {_locrrsResponseStatus = a})

instance NFData ListObjectChildrenResponse
