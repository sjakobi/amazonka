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
-- Module      : Network.AWS.CloudDirectory.ListObjectParents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists parent objects that are associated with a given object in pagination fashion.
module Network.AWS.CloudDirectory.ListObjectParents
  ( -- * Creating a Request
    listObjectParents,
    ListObjectParents,

    -- * Request Lenses
    lopNextToken,
    lopMaxResults,
    lopIncludeAllLinksToEachParent,
    lopConsistencyLevel,
    lopDirectoryARN,
    lopObjectReference,

    -- * Destructuring the Response
    listObjectParentsResponse,
    ListObjectParentsResponse,

    -- * Response Lenses
    loprrsParents,
    loprrsParentLinks,
    loprrsNextToken,
    loprrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listObjectParents' smart constructor.
data ListObjectParents = ListObjectParents'
  { _lopNextToken ::
      !(Maybe Text),
    _lopMaxResults :: !(Maybe Nat),
    _lopIncludeAllLinksToEachParent ::
      !(Maybe Bool),
    _lopConsistencyLevel ::
      !(Maybe ConsistencyLevel),
    _lopDirectoryARN :: !Text,
    _lopObjectReference ::
      !ObjectReference
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListObjectParents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lopNextToken' - The pagination token.
--
-- * 'lopMaxResults' - The maximum number of items to be retrieved in a single call. This is an approximate number.
--
-- * 'lopIncludeAllLinksToEachParent' - When set to True, returns all 'ListObjectParentsResponse$ParentLinks' . There could be multiple links between a parent-child pair.
--
-- * 'lopConsistencyLevel' - Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.
--
-- * 'lopDirectoryARN' - The Amazon Resource Name (ARN) that is associated with the 'Directory' where the object resides. For more information, see 'arns' .
--
-- * 'lopObjectReference' - The reference that identifies the object for which parent objects are being listed.
listObjectParents ::
  -- | 'lopDirectoryARN'
  Text ->
  -- | 'lopObjectReference'
  ObjectReference ->
  ListObjectParents
listObjectParents pDirectoryARN_ pObjectReference_ =
  ListObjectParents'
    { _lopNextToken = Nothing,
      _lopMaxResults = Nothing,
      _lopIncludeAllLinksToEachParent = Nothing,
      _lopConsistencyLevel = Nothing,
      _lopDirectoryARN = pDirectoryARN_,
      _lopObjectReference = pObjectReference_
    }

-- | The pagination token.
lopNextToken :: Lens' ListObjectParents (Maybe Text)
lopNextToken = lens _lopNextToken (\s a -> s {_lopNextToken = a})

-- | The maximum number of items to be retrieved in a single call. This is an approximate number.
lopMaxResults :: Lens' ListObjectParents (Maybe Natural)
lopMaxResults = lens _lopMaxResults (\s a -> s {_lopMaxResults = a}) . mapping _Nat

-- | When set to True, returns all 'ListObjectParentsResponse$ParentLinks' . There could be multiple links between a parent-child pair.
lopIncludeAllLinksToEachParent :: Lens' ListObjectParents (Maybe Bool)
lopIncludeAllLinksToEachParent = lens _lopIncludeAllLinksToEachParent (\s a -> s {_lopIncludeAllLinksToEachParent = a})

-- | Represents the manner and timing in which the successful write or update of an object is reflected in a subsequent read operation of that same object.
lopConsistencyLevel :: Lens' ListObjectParents (Maybe ConsistencyLevel)
lopConsistencyLevel = lens _lopConsistencyLevel (\s a -> s {_lopConsistencyLevel = a})

-- | The Amazon Resource Name (ARN) that is associated with the 'Directory' where the object resides. For more information, see 'arns' .
lopDirectoryARN :: Lens' ListObjectParents Text
lopDirectoryARN = lens _lopDirectoryARN (\s a -> s {_lopDirectoryARN = a})

-- | The reference that identifies the object for which parent objects are being listed.
lopObjectReference :: Lens' ListObjectParents ObjectReference
lopObjectReference = lens _lopObjectReference (\s a -> s {_lopObjectReference = a})

instance AWSRequest ListObjectParents where
  type Rs ListObjectParents = ListObjectParentsResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListObjectParentsResponse'
            <$> (x .?> "Parents" .!@ mempty)
            <*> (x .?> "ParentLinks" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListObjectParents

instance NFData ListObjectParents

instance ToHeaders ListObjectParents where
  toHeaders ListObjectParents' {..} =
    mconcat
      [ "x-amz-consistency-level" =# _lopConsistencyLevel,
        "x-amz-data-partition" =# _lopDirectoryARN
      ]

instance ToJSON ListObjectParents where
  toJSON ListObjectParents' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lopNextToken,
            ("MaxResults" .=) <$> _lopMaxResults,
            ("IncludeAllLinksToEachParent" .=)
              <$> _lopIncludeAllLinksToEachParent,
            Just ("ObjectReference" .= _lopObjectReference)
          ]
      )

instance ToPath ListObjectParents where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/object/parent"

instance ToQuery ListObjectParents where
  toQuery = const mempty

-- | /See:/ 'listObjectParentsResponse' smart constructor.
data ListObjectParentsResponse = ListObjectParentsResponse'
  { _loprrsParents ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _loprrsParentLinks ::
      !( Maybe
           [ObjectIdentifierAndLinkNameTuple]
       ),
    _loprrsNextToken ::
      !(Maybe Text),
    _loprrsResponseStatus ::
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

-- | Creates a value of 'ListObjectParentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loprrsParents' - The parent structure, which is a map with key as the @ObjectIdentifier@ and LinkName as the value.
--
-- * 'loprrsParentLinks' - Returns a list of parent reference and LinkName Tuples.
--
-- * 'loprrsNextToken' - The pagination token.
--
-- * 'loprrsResponseStatus' - -- | The response status code.
listObjectParentsResponse ::
  -- | 'loprrsResponseStatus'
  Int ->
  ListObjectParentsResponse
listObjectParentsResponse pResponseStatus_ =
  ListObjectParentsResponse'
    { _loprrsParents =
        Nothing,
      _loprrsParentLinks = Nothing,
      _loprrsNextToken = Nothing,
      _loprrsResponseStatus = pResponseStatus_
    }

-- | The parent structure, which is a map with key as the @ObjectIdentifier@ and LinkName as the value.
loprrsParents :: Lens' ListObjectParentsResponse (HashMap Text Text)
loprrsParents = lens _loprrsParents (\s a -> s {_loprrsParents = a}) . _Default . _Map

-- | Returns a list of parent reference and LinkName Tuples.
loprrsParentLinks :: Lens' ListObjectParentsResponse [ObjectIdentifierAndLinkNameTuple]
loprrsParentLinks = lens _loprrsParentLinks (\s a -> s {_loprrsParentLinks = a}) . _Default . _Coerce

-- | The pagination token.
loprrsNextToken :: Lens' ListObjectParentsResponse (Maybe Text)
loprrsNextToken = lens _loprrsNextToken (\s a -> s {_loprrsNextToken = a})

-- | -- | The response status code.
loprrsResponseStatus :: Lens' ListObjectParentsResponse Int
loprrsResponseStatus = lens _loprrsResponseStatus (\s a -> s {_loprrsResponseStatus = a})

instance NFData ListObjectParentsResponse
