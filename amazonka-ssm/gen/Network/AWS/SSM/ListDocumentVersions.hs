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
-- Module      : Network.AWS.SSM.ListDocumentVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all versions for a document.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SSM.ListDocumentVersions
  ( -- * Creating a Request
    listDocumentVersions,
    ListDocumentVersions,

    -- * Request Lenses
    ldvNextToken,
    ldvMaxResults,
    ldvName,

    -- * Destructuring the Response
    listDocumentVersionsResponse,
    ListDocumentVersionsResponse,

    -- * Response Lenses
    ldvrrsNextToken,
    ldvrrsDocumentVersions,
    ldvrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'listDocumentVersions' smart constructor.
data ListDocumentVersions = ListDocumentVersions'
  { _ldvNextToken ::
      !(Maybe Text),
    _ldvMaxResults ::
      !(Maybe Nat),
    _ldvName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDocumentVersions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldvNextToken' - The token for the next set of items to return. (You received this token from a previous call.)
--
-- * 'ldvMaxResults' - The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
--
-- * 'ldvName' - The name of the document. You can specify an Amazon Resource Name (ARN).
listDocumentVersions ::
  -- | 'ldvName'
  Text ->
  ListDocumentVersions
listDocumentVersions pName_ =
  ListDocumentVersions'
    { _ldvNextToken = Nothing,
      _ldvMaxResults = Nothing,
      _ldvName = pName_
    }

-- | The token for the next set of items to return. (You received this token from a previous call.)
ldvNextToken :: Lens' ListDocumentVersions (Maybe Text)
ldvNextToken = lens _ldvNextToken (\s a -> s {_ldvNextToken = a})

-- | The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.
ldvMaxResults :: Lens' ListDocumentVersions (Maybe Natural)
ldvMaxResults = lens _ldvMaxResults (\s a -> s {_ldvMaxResults = a}) . mapping _Nat

-- | The name of the document. You can specify an Amazon Resource Name (ARN).
ldvName :: Lens' ListDocumentVersions Text
ldvName = lens _ldvName (\s a -> s {_ldvName = a})

instance AWSPager ListDocumentVersions where
  page rq rs
    | stop (rs ^. ldvrrsNextToken) = Nothing
    | stop (rs ^. ldvrrsDocumentVersions) = Nothing
    | otherwise =
      Just $ rq & ldvNextToken .~ rs ^. ldvrrsNextToken

instance AWSRequest ListDocumentVersions where
  type
    Rs ListDocumentVersions =
      ListDocumentVersionsResponse
  request = postJSON ssm
  response =
    receiveJSON
      ( \s h x ->
          ListDocumentVersionsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "DocumentVersions")
            <*> (pure (fromEnum s))
      )

instance Hashable ListDocumentVersions

instance NFData ListDocumentVersions

instance ToHeaders ListDocumentVersions where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.ListDocumentVersions" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListDocumentVersions where
  toJSON ListDocumentVersions' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ldvNextToken,
            ("MaxResults" .=) <$> _ldvMaxResults,
            Just ("Name" .= _ldvName)
          ]
      )

instance ToPath ListDocumentVersions where
  toPath = const "/"

instance ToQuery ListDocumentVersions where
  toQuery = const mempty

-- | /See:/ 'listDocumentVersionsResponse' smart constructor.
data ListDocumentVersionsResponse = ListDocumentVersionsResponse'
  { _ldvrrsNextToken ::
      !(Maybe Text),
    _ldvrrsDocumentVersions ::
      !( Maybe
           ( List1
               DocumentVersionInfo
           )
       ),
    _ldvrrsResponseStatus ::
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

-- | Creates a value of 'ListDocumentVersionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldvrrsNextToken' - The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
--
-- * 'ldvrrsDocumentVersions' - The document versions.
--
-- * 'ldvrrsResponseStatus' - -- | The response status code.
listDocumentVersionsResponse ::
  -- | 'ldvrrsResponseStatus'
  Int ->
  ListDocumentVersionsResponse
listDocumentVersionsResponse pResponseStatus_ =
  ListDocumentVersionsResponse'
    { _ldvrrsNextToken =
        Nothing,
      _ldvrrsDocumentVersions = Nothing,
      _ldvrrsResponseStatus = pResponseStatus_
    }

-- | The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
ldvrrsNextToken :: Lens' ListDocumentVersionsResponse (Maybe Text)
ldvrrsNextToken = lens _ldvrrsNextToken (\s a -> s {_ldvrrsNextToken = a})

-- | The document versions.
ldvrrsDocumentVersions :: Lens' ListDocumentVersionsResponse (Maybe (NonEmpty DocumentVersionInfo))
ldvrrsDocumentVersions = lens _ldvrrsDocumentVersions (\s a -> s {_ldvrrsDocumentVersions = a}) . mapping _List1

-- | -- | The response status code.
ldvrrsResponseStatus :: Lens' ListDocumentVersionsResponse Int
ldvrrsResponseStatus = lens _ldvrrsResponseStatus (\s a -> s {_ldvrrsResponseStatus = a})

instance NFData ListDocumentVersionsResponse
