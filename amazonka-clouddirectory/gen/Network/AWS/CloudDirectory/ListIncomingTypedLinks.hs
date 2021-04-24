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
-- Module      : Network.AWS.CloudDirectory.ListIncomingTypedLinks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a paginated list of all the incoming 'TypedLinkSpecifier' information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListIncomingTypedLinks
  ( -- * Creating a Request
    listIncomingTypedLinks,
    ListIncomingTypedLinks,

    -- * Request Lenses
    litlNextToken,
    litlFilterTypedLink,
    litlMaxResults,
    litlConsistencyLevel,
    litlFilterAttributeRanges,
    litlDirectoryARN,
    litlObjectReference,

    -- * Destructuring the Response
    listIncomingTypedLinksResponse,
    ListIncomingTypedLinksResponse,

    -- * Response Lenses
    litlrrsLinkSpecifiers,
    litlrrsNextToken,
    litlrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listIncomingTypedLinks' smart constructor.
data ListIncomingTypedLinks = ListIncomingTypedLinks'
  { _litlNextToken ::
      !(Maybe Text),
    _litlFilterTypedLink ::
      !( Maybe
           TypedLinkSchemaAndFacetName
       ),
    _litlMaxResults ::
      !(Maybe Nat),
    _litlConsistencyLevel ::
      !(Maybe ConsistencyLevel),
    _litlFilterAttributeRanges ::
      !( Maybe
           [TypedLinkAttributeRange]
       ),
    _litlDirectoryARN ::
      !Text,
    _litlObjectReference ::
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

-- | Creates a value of 'ListIncomingTypedLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'litlNextToken' - The pagination token.
--
-- * 'litlFilterTypedLink' - Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.
--
-- * 'litlMaxResults' - The maximum number of results to retrieve.
--
-- * 'litlConsistencyLevel' - The consistency level to execute the request at.
--
-- * 'litlFilterAttributeRanges' - Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.
--
-- * 'litlDirectoryARN' - The Amazon Resource Name (ARN) of the directory where you want to list the typed links.
--
-- * 'litlObjectReference' - Reference that identifies the object whose attributes will be listed.
listIncomingTypedLinks ::
  -- | 'litlDirectoryARN'
  Text ->
  -- | 'litlObjectReference'
  ObjectReference ->
  ListIncomingTypedLinks
listIncomingTypedLinks
  pDirectoryARN_
  pObjectReference_ =
    ListIncomingTypedLinks'
      { _litlNextToken = Nothing,
        _litlFilterTypedLink = Nothing,
        _litlMaxResults = Nothing,
        _litlConsistencyLevel = Nothing,
        _litlFilterAttributeRanges = Nothing,
        _litlDirectoryARN = pDirectoryARN_,
        _litlObjectReference = pObjectReference_
      }

-- | The pagination token.
litlNextToken :: Lens' ListIncomingTypedLinks (Maybe Text)
litlNextToken = lens _litlNextToken (\s a -> s {_litlNextToken = a})

-- | Filters are interpreted in the order of the attributes on the typed link facet, not the order in which they are supplied to any API calls.
litlFilterTypedLink :: Lens' ListIncomingTypedLinks (Maybe TypedLinkSchemaAndFacetName)
litlFilterTypedLink = lens _litlFilterTypedLink (\s a -> s {_litlFilterTypedLink = a})

-- | The maximum number of results to retrieve.
litlMaxResults :: Lens' ListIncomingTypedLinks (Maybe Natural)
litlMaxResults = lens _litlMaxResults (\s a -> s {_litlMaxResults = a}) . mapping _Nat

-- | The consistency level to execute the request at.
litlConsistencyLevel :: Lens' ListIncomingTypedLinks (Maybe ConsistencyLevel)
litlConsistencyLevel = lens _litlConsistencyLevel (\s a -> s {_litlConsistencyLevel = a})

-- | Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.
litlFilterAttributeRanges :: Lens' ListIncomingTypedLinks [TypedLinkAttributeRange]
litlFilterAttributeRanges = lens _litlFilterAttributeRanges (\s a -> s {_litlFilterAttributeRanges = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the directory where you want to list the typed links.
litlDirectoryARN :: Lens' ListIncomingTypedLinks Text
litlDirectoryARN = lens _litlDirectoryARN (\s a -> s {_litlDirectoryARN = a})

-- | Reference that identifies the object whose attributes will be listed.
litlObjectReference :: Lens' ListIncomingTypedLinks ObjectReference
litlObjectReference = lens _litlObjectReference (\s a -> s {_litlObjectReference = a})

instance AWSPager ListIncomingTypedLinks where
  page rq rs
    | stop (rs ^. litlrrsNextToken) = Nothing
    | stop (rs ^. litlrrsLinkSpecifiers) = Nothing
    | otherwise =
      Just $ rq & litlNextToken .~ rs ^. litlrrsNextToken

instance AWSRequest ListIncomingTypedLinks where
  type
    Rs ListIncomingTypedLinks =
      ListIncomingTypedLinksResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListIncomingTypedLinksResponse'
            <$> (x .?> "LinkSpecifiers" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListIncomingTypedLinks

instance NFData ListIncomingTypedLinks

instance ToHeaders ListIncomingTypedLinks where
  toHeaders ListIncomingTypedLinks' {..} =
    mconcat
      ["x-amz-data-partition" =# _litlDirectoryARN]

instance ToJSON ListIncomingTypedLinks where
  toJSON ListIncomingTypedLinks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _litlNextToken,
            ("FilterTypedLink" .=) <$> _litlFilterTypedLink,
            ("MaxResults" .=) <$> _litlMaxResults,
            ("ConsistencyLevel" .=) <$> _litlConsistencyLevel,
            ("FilterAttributeRanges" .=)
              <$> _litlFilterAttributeRanges,
            Just ("ObjectReference" .= _litlObjectReference)
          ]
      )

instance ToPath ListIncomingTypedLinks where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/typedlink/incoming"

instance ToQuery ListIncomingTypedLinks where
  toQuery = const mempty

-- | /See:/ 'listIncomingTypedLinksResponse' smart constructor.
data ListIncomingTypedLinksResponse = ListIncomingTypedLinksResponse'
  { _litlrrsLinkSpecifiers ::
      !( Maybe
           [TypedLinkSpecifier]
       ),
    _litlrrsNextToken ::
      !( Maybe
           Text
       ),
    _litlrrsResponseStatus ::
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

-- | Creates a value of 'ListIncomingTypedLinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'litlrrsLinkSpecifiers' - Returns one or more typed link specifiers as output.
--
-- * 'litlrrsNextToken' - The pagination token.
--
-- * 'litlrrsResponseStatus' - -- | The response status code.
listIncomingTypedLinksResponse ::
  -- | 'litlrrsResponseStatus'
  Int ->
  ListIncomingTypedLinksResponse
listIncomingTypedLinksResponse pResponseStatus_ =
  ListIncomingTypedLinksResponse'
    { _litlrrsLinkSpecifiers =
        Nothing,
      _litlrrsNextToken = Nothing,
      _litlrrsResponseStatus = pResponseStatus_
    }

-- | Returns one or more typed link specifiers as output.
litlrrsLinkSpecifiers :: Lens' ListIncomingTypedLinksResponse [TypedLinkSpecifier]
litlrrsLinkSpecifiers = lens _litlrrsLinkSpecifiers (\s a -> s {_litlrrsLinkSpecifiers = a}) . _Default . _Coerce

-- | The pagination token.
litlrrsNextToken :: Lens' ListIncomingTypedLinksResponse (Maybe Text)
litlrrsNextToken = lens _litlrrsNextToken (\s a -> s {_litlrrsNextToken = a})

-- | -- | The response status code.
litlrrsResponseStatus :: Lens' ListIncomingTypedLinksResponse Int
litlrrsResponseStatus = lens _litlrrsResponseStatus (\s a -> s {_litlrrsResponseStatus = a})

instance NFData ListIncomingTypedLinksResponse
