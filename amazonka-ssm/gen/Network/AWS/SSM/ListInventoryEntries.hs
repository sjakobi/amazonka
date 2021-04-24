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
-- Module      : Network.AWS.SSM.ListInventoryEntries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A list of inventory items returned by the request.
module Network.AWS.SSM.ListInventoryEntries
  ( -- * Creating a Request
    listInventoryEntries,
    ListInventoryEntries,

    -- * Request Lenses
    lieNextToken,
    lieMaxResults,
    lieFilters,
    lieInstanceId,
    lieTypeName,

    -- * Destructuring the Response
    listInventoryEntriesResponse,
    ListInventoryEntriesResponse,

    -- * Response Lenses
    lierrsTypeName,
    lierrsNextToken,
    lierrsInstanceId,
    lierrsCaptureTime,
    lierrsSchemaVersion,
    lierrsEntries,
    lierrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listInventoryEntries' smart constructor.
data ListInventoryEntries = ListInventoryEntries'
  { _lieNextToken ::
      !(Maybe Text),
    _lieMaxResults ::
      !(Maybe Nat),
    _lieFilters ::
      !( Maybe
           (List1 InventoryFilter)
       ),
    _lieInstanceId :: !Text,
    _lieTypeName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListInventoryEntries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lieNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'lieMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'lieFilters' - One or more filters. Use a filter to return a more specific list of results.
--
-- * 'lieInstanceId' - The instance ID for which you want inventory information.
--
-- * 'lieTypeName' - The type of inventory item for which you want information.
listInventoryEntries ::
  -- | 'lieInstanceId'
  Text ->
  -- | 'lieTypeName'
  Text ->
  ListInventoryEntries
listInventoryEntries pInstanceId_ pTypeName_ =
  ListInventoryEntries'
    { _lieNextToken = Nothing,
      _lieMaxResults = Nothing,
      _lieFilters = Nothing,
      _lieInstanceId = pInstanceId_,
      _lieTypeName = pTypeName_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
lieNextToken :: Lens' ListInventoryEntries (Maybe Text)
lieNextToken = lens _lieNextToken (\s a -> s {_lieNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
lieMaxResults :: Lens' ListInventoryEntries (Maybe Natural)
lieMaxResults = lens _lieMaxResults (\s a -> s {_lieMaxResults = a}) . mapping _Nat

-- | One or more filters. Use a filter to return a more specific list of results.
lieFilters :: Lens' ListInventoryEntries (Maybe (NonEmpty InventoryFilter))
lieFilters = lens _lieFilters (\s a -> s {_lieFilters = a}) . mapping _List1

-- | The instance ID for which you want inventory information.
lieInstanceId :: Lens' ListInventoryEntries Text
lieInstanceId = lens _lieInstanceId (\s a -> s {_lieInstanceId = a})

-- | The type of inventory item for which you want information.
lieTypeName :: Lens' ListInventoryEntries Text
lieTypeName = lens _lieTypeName (\s a -> s {_lieTypeName = a})

instance AWSRequest ListInventoryEntries where
  type
    Rs ListInventoryEntries =
      ListInventoryEntriesResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListInventoryEntriesResponse'
            <$> (x .?> "TypeName")
            <*> (x .?> "NextToken")
            <*> (x .?> "InstanceId")
            <*> (x .?> "CaptureTime")
            <*> (x .?> "SchemaVersion")
            <*> (x .?> "Entries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListInventoryEntries

instance NFData ListInventoryEntries

instance ToHeaders ListInventoryEntries where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListInventoryEntries" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListInventoryEntries where
  toJSON ListInventoryEntries' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lieNextToken,
            ("MaxResults" .=) <$> _lieMaxResults,
            ("Filters" .=) <$> _lieFilters,
            Just ("InstanceId" .= _lieInstanceId),
            Just ("TypeName" .= _lieTypeName)
          ]
      )

instance ToPath ListInventoryEntries where
  toPath = const "/"

instance ToQuery ListInventoryEntries where
  toQuery = const mempty

-- | /See:/ 'listInventoryEntriesResponse' smart constructor.
data ListInventoryEntriesResponse = ListInventoryEntriesResponse'
  { _lierrsTypeName ::
      !(Maybe Text),
    _lierrsNextToken ::
      !(Maybe Text),
    _lierrsInstanceId ::
      !(Maybe Text),
    _lierrsCaptureTime ::
      !(Maybe Text),
    _lierrsSchemaVersion ::
      !(Maybe Text),
    _lierrsEntries ::
      !( Maybe
           [ Map
               Text
               Text
           ]
       ),
    _lierrsResponseStatus ::
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

-- | Creates a value of 'ListInventoryEntriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lierrsTypeName' - The type of inventory item returned by the request.
--
-- * 'lierrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'lierrsInstanceId' - The instance ID targeted by the request to query inventory information.
--
-- * 'lierrsCaptureTime' - The time that inventory information was collected for the instance(s).
--
-- * 'lierrsSchemaVersion' - The inventory schema version used by the instance(s).
--
-- * 'lierrsEntries' - A list of inventory items on the instance(s).
--
-- * 'lierrsResponseStatus' - -- | The response status code.
listInventoryEntriesResponse ::
  -- | 'lierrsResponseStatus'
  Int ->
  ListInventoryEntriesResponse
listInventoryEntriesResponse pResponseStatus_ =
  ListInventoryEntriesResponse'
    { _lierrsTypeName =
        Nothing,
      _lierrsNextToken = Nothing,
      _lierrsInstanceId = Nothing,
      _lierrsCaptureTime = Nothing,
      _lierrsSchemaVersion = Nothing,
      _lierrsEntries = Nothing,
      _lierrsResponseStatus = pResponseStatus_
    }

-- | The type of inventory item returned by the request.
lierrsTypeName :: Lens' ListInventoryEntriesResponse (Maybe Text)
lierrsTypeName = lens _lierrsTypeName (\s a -> s {_lierrsTypeName = a})

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
lierrsNextToken :: Lens' ListInventoryEntriesResponse (Maybe Text)
lierrsNextToken = lens _lierrsNextToken (\s a -> s {_lierrsNextToken = a})

-- | The instance ID targeted by the request to query inventory information.
lierrsInstanceId :: Lens' ListInventoryEntriesResponse (Maybe Text)
lierrsInstanceId = lens _lierrsInstanceId (\s a -> s {_lierrsInstanceId = a})

-- | The time that inventory information was collected for the instance(s).
lierrsCaptureTime :: Lens' ListInventoryEntriesResponse (Maybe Text)
lierrsCaptureTime = lens _lierrsCaptureTime (\s a -> s {_lierrsCaptureTime = a})

-- | The inventory schema version used by the instance(s).
lierrsSchemaVersion :: Lens' ListInventoryEntriesResponse (Maybe Text)
lierrsSchemaVersion = lens _lierrsSchemaVersion (\s a -> s {_lierrsSchemaVersion = a})

-- | A list of inventory items on the instance(s).
lierrsEntries :: Lens' ListInventoryEntriesResponse [HashMap Text Text]
lierrsEntries = lens _lierrsEntries (\s a -> s {_lierrsEntries = a}) . _Default . _Coerce

-- | -- | The response status code.
lierrsResponseStatus :: Lens' ListInventoryEntriesResponse Int
lierrsResponseStatus = lens _lierrsResponseStatus (\s a -> s {_lierrsResponseStatus = a})

instance NFData ListInventoryEntriesResponse
