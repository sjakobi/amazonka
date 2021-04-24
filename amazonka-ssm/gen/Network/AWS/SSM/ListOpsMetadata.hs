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
-- Module      : Network.AWS.SSM.ListOpsMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Systems Manager calls this API action when displaying all Application Manager OpsMetadata objects or blobs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListOpsMetadata
  ( -- * Creating a Request
    listOpsMetadata,
    ListOpsMetadata,

    -- * Request Lenses
    lomNextToken,
    lomMaxResults,
    lomFilters,

    -- * Destructuring the Response
    listOpsMetadataResponse,
    ListOpsMetadataResponse,

    -- * Response Lenses
    lomrrsNextToken,
    lomrrsOpsMetadataList,
    lomrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listOpsMetadata' smart constructor.
data ListOpsMetadata = ListOpsMetadata'
  { _lomNextToken ::
      !(Maybe Text),
    _lomMaxResults :: !(Maybe Nat),
    _lomFilters ::
      !(Maybe [OpsMetadataFilter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListOpsMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lomNextToken' - A token to start the list. Use this token to get the next set of results.
--
-- * 'lomMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'lomFilters' - One or more filters to limit the number of OpsMetadata objects returned by the call.
listOpsMetadata ::
  ListOpsMetadata
listOpsMetadata =
  ListOpsMetadata'
    { _lomNextToken = Nothing,
      _lomMaxResults = Nothing,
      _lomFilters = Nothing
    }

-- | A token to start the list. Use this token to get the next set of results.
lomNextToken :: Lens' ListOpsMetadata (Maybe Text)
lomNextToken = lens _lomNextToken (\s a -> s {_lomNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
lomMaxResults :: Lens' ListOpsMetadata (Maybe Natural)
lomMaxResults = lens _lomMaxResults (\s a -> s {_lomMaxResults = a}) . mapping _Nat

-- | One or more filters to limit the number of OpsMetadata objects returned by the call.
lomFilters :: Lens' ListOpsMetadata [OpsMetadataFilter]
lomFilters = lens _lomFilters (\s a -> s {_lomFilters = a}) . _Default . _Coerce

instance AWSPager ListOpsMetadata where
  page rq rs
    | stop (rs ^. lomrrsNextToken) = Nothing
    | stop (rs ^. lomrrsOpsMetadataList) = Nothing
    | otherwise =
      Just $ rq & lomNextToken .~ rs ^. lomrrsNextToken

instance AWSRequest ListOpsMetadata where
  type Rs ListOpsMetadata = ListOpsMetadataResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListOpsMetadataResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "OpsMetadataList")
            <*> (pure (fromEnum s))
      )

instance Hashable ListOpsMetadata

instance NFData ListOpsMetadata

instance ToHeaders ListOpsMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListOpsMetadata" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListOpsMetadata where
  toJSON ListOpsMetadata' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lomNextToken,
            ("MaxResults" .=) <$> _lomMaxResults,
            ("Filters" .=) <$> _lomFilters
          ]
      )

instance ToPath ListOpsMetadata where
  toPath = const "/"

instance ToQuery ListOpsMetadata where
  toQuery = const mempty

-- | /See:/ 'listOpsMetadataResponse' smart constructor.
data ListOpsMetadataResponse = ListOpsMetadataResponse'
  { _lomrrsNextToken ::
      !(Maybe Text),
    _lomrrsOpsMetadataList ::
      !( Maybe
           ( List1
               OpsMetadata
           )
       ),
    _lomrrsResponseStatus ::
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

-- | Creates a value of 'ListOpsMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lomrrsNextToken' - The token for the next set of items to return. Use this token to get the next set of results.
--
-- * 'lomrrsOpsMetadataList' - Returns a list of OpsMetadata objects.
--
-- * 'lomrrsResponseStatus' - -- | The response status code.
listOpsMetadataResponse ::
  -- | 'lomrrsResponseStatus'
  Int ->
  ListOpsMetadataResponse
listOpsMetadataResponse pResponseStatus_ =
  ListOpsMetadataResponse'
    { _lomrrsNextToken =
        Nothing,
      _lomrrsOpsMetadataList = Nothing,
      _lomrrsResponseStatus = pResponseStatus_
    }

-- | The token for the next set of items to return. Use this token to get the next set of results.
lomrrsNextToken :: Lens' ListOpsMetadataResponse (Maybe Text)
lomrrsNextToken = lens _lomrrsNextToken (\s a -> s {_lomrrsNextToken = a})

-- | Returns a list of OpsMetadata objects.
lomrrsOpsMetadataList :: Lens' ListOpsMetadataResponse (Maybe (NonEmpty OpsMetadata))
lomrrsOpsMetadataList = lens _lomrrsOpsMetadataList (\s a -> s {_lomrrsOpsMetadataList = a}) . mapping _List1

-- | -- | The response status code.
lomrrsResponseStatus :: Lens' ListOpsMetadataResponse Int
lomrrsResponseStatus = lens _lomrrsResponseStatus (\s a -> s {_lomrrsResponseStatus = a})

instance NFData ListOpsMetadataResponse
