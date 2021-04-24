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
-- Module      : Network.AWS.DirectoryService.ListSchemaExtensions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all schema extensions applied to a Microsoft AD Directory.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DirectoryService.ListSchemaExtensions
  ( -- * Creating a Request
    listSchemaExtensions,
    ListSchemaExtensions,

    -- * Request Lenses
    lseNextToken,
    lseLimit,
    lseDirectoryId,

    -- * Destructuring the Response
    listSchemaExtensionsResponse,
    ListSchemaExtensionsResponse,

    -- * Response Lenses
    lserrsNextToken,
    lserrsSchemaExtensionsInfo,
    lserrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listSchemaExtensions' smart constructor.
data ListSchemaExtensions = ListSchemaExtensions'
  { _lseNextToken ::
      !(Maybe Text),
    _lseLimit :: !(Maybe Nat),
    _lseDirectoryId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListSchemaExtensions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lseNextToken' - The @ListSchemaExtensions.NextToken@ value from a previous call to @ListSchemaExtensions@ . Pass null if this is the first call.
--
-- * 'lseLimit' - The maximum number of items to return.
--
-- * 'lseDirectoryId' - The identifier of the directory from which to retrieve the schema extension information.
listSchemaExtensions ::
  -- | 'lseDirectoryId'
  Text ->
  ListSchemaExtensions
listSchemaExtensions pDirectoryId_ =
  ListSchemaExtensions'
    { _lseNextToken = Nothing,
      _lseLimit = Nothing,
      _lseDirectoryId = pDirectoryId_
    }

-- | The @ListSchemaExtensions.NextToken@ value from a previous call to @ListSchemaExtensions@ . Pass null if this is the first call.
lseNextToken :: Lens' ListSchemaExtensions (Maybe Text)
lseNextToken = lens _lseNextToken (\s a -> s {_lseNextToken = a})

-- | The maximum number of items to return.
lseLimit :: Lens' ListSchemaExtensions (Maybe Natural)
lseLimit = lens _lseLimit (\s a -> s {_lseLimit = a}) . mapping _Nat

-- | The identifier of the directory from which to retrieve the schema extension information.
lseDirectoryId :: Lens' ListSchemaExtensions Text
lseDirectoryId = lens _lseDirectoryId (\s a -> s {_lseDirectoryId = a})

instance AWSPager ListSchemaExtensions where
  page rq rs
    | stop (rs ^. lserrsNextToken) = Nothing
    | stop (rs ^. lserrsSchemaExtensionsInfo) = Nothing
    | otherwise =
      Just $ rq & lseNextToken .~ rs ^. lserrsNextToken

instance AWSRequest ListSchemaExtensions where
  type
    Rs ListSchemaExtensions =
      ListSchemaExtensionsResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          ListSchemaExtensionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "SchemaExtensionsInfo" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListSchemaExtensions

instance NFData ListSchemaExtensions

instance ToHeaders ListSchemaExtensions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.ListSchemaExtensions" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListSchemaExtensions where
  toJSON ListSchemaExtensions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lseNextToken,
            ("Limit" .=) <$> _lseLimit,
            Just ("DirectoryId" .= _lseDirectoryId)
          ]
      )

instance ToPath ListSchemaExtensions where
  toPath = const "/"

instance ToQuery ListSchemaExtensions where
  toQuery = const mempty

-- | /See:/ 'listSchemaExtensionsResponse' smart constructor.
data ListSchemaExtensionsResponse = ListSchemaExtensionsResponse'
  { _lserrsNextToken ::
      !(Maybe Text),
    _lserrsSchemaExtensionsInfo ::
      !( Maybe
           [SchemaExtensionInfo]
       ),
    _lserrsResponseStatus ::
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

-- | Creates a value of 'ListSchemaExtensionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lserrsNextToken' - If not null, more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to @ListSchemaExtensions@ to retrieve the next set of items.
--
-- * 'lserrsSchemaExtensionsInfo' - Information about the schema extensions applied to the directory.
--
-- * 'lserrsResponseStatus' - -- | The response status code.
listSchemaExtensionsResponse ::
  -- | 'lserrsResponseStatus'
  Int ->
  ListSchemaExtensionsResponse
listSchemaExtensionsResponse pResponseStatus_ =
  ListSchemaExtensionsResponse'
    { _lserrsNextToken =
        Nothing,
      _lserrsSchemaExtensionsInfo = Nothing,
      _lserrsResponseStatus = pResponseStatus_
    }

-- | If not null, more results are available. Pass this value for the @NextToken@ parameter in a subsequent call to @ListSchemaExtensions@ to retrieve the next set of items.
lserrsNextToken :: Lens' ListSchemaExtensionsResponse (Maybe Text)
lserrsNextToken = lens _lserrsNextToken (\s a -> s {_lserrsNextToken = a})

-- | Information about the schema extensions applied to the directory.
lserrsSchemaExtensionsInfo :: Lens' ListSchemaExtensionsResponse [SchemaExtensionInfo]
lserrsSchemaExtensionsInfo = lens _lserrsSchemaExtensionsInfo (\s a -> s {_lserrsSchemaExtensionsInfo = a}) . _Default . _Coerce

-- | -- | The response status code.
lserrsResponseStatus :: Lens' ListSchemaExtensionsResponse Int
lserrsResponseStatus = lens _lserrsResponseStatus (\s a -> s {_lserrsResponseStatus = a})

instance NFData ListSchemaExtensionsResponse
