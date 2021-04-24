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
-- Module      : Network.AWS.CloudDirectory.ListOutgoingTypedLinks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a paginated list of all the outgoing 'TypedLinkSpecifier' information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links> .
--
--
--
-- This operation returns paginated results.
module Network.AWS.CloudDirectory.ListOutgoingTypedLinks
  ( -- * Creating a Request
    listOutgoingTypedLinks,
    ListOutgoingTypedLinks,

    -- * Request Lenses
    lotlNextToken,
    lotlFilterTypedLink,
    lotlMaxResults,
    lotlConsistencyLevel,
    lotlFilterAttributeRanges,
    lotlDirectoryARN,
    lotlObjectReference,

    -- * Destructuring the Response
    listOutgoingTypedLinksResponse,
    ListOutgoingTypedLinksResponse,

    -- * Response Lenses
    lotlrrsNextToken,
    lotlrrsTypedLinkSpecifiers,
    lotlrrsResponseStatus,
  )
where

import Network.AWS.CloudDirectory.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listOutgoingTypedLinks' smart constructor.
data ListOutgoingTypedLinks = ListOutgoingTypedLinks'
  { _lotlNextToken ::
      !(Maybe Text),
    _lotlFilterTypedLink ::
      !( Maybe
           TypedLinkSchemaAndFacetName
       ),
    _lotlMaxResults ::
      !(Maybe Nat),
    _lotlConsistencyLevel ::
      !(Maybe ConsistencyLevel),
    _lotlFilterAttributeRanges ::
      !( Maybe
           [TypedLinkAttributeRange]
       ),
    _lotlDirectoryARN ::
      !Text,
    _lotlObjectReference ::
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

-- | Creates a value of 'ListOutgoingTypedLinks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lotlNextToken' - The pagination token.
--
-- * 'lotlFilterTypedLink' - Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.
--
-- * 'lotlMaxResults' - The maximum number of results to retrieve.
--
-- * 'lotlConsistencyLevel' - The consistency level to execute the request at.
--
-- * 'lotlFilterAttributeRanges' - Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.
--
-- * 'lotlDirectoryARN' - The Amazon Resource Name (ARN) of the directory where you want to list the typed links.
--
-- * 'lotlObjectReference' - A reference that identifies the object whose attributes will be listed.
listOutgoingTypedLinks ::
  -- | 'lotlDirectoryARN'
  Text ->
  -- | 'lotlObjectReference'
  ObjectReference ->
  ListOutgoingTypedLinks
listOutgoingTypedLinks
  pDirectoryARN_
  pObjectReference_ =
    ListOutgoingTypedLinks'
      { _lotlNextToken = Nothing,
        _lotlFilterTypedLink = Nothing,
        _lotlMaxResults = Nothing,
        _lotlConsistencyLevel = Nothing,
        _lotlFilterAttributeRanges = Nothing,
        _lotlDirectoryARN = pDirectoryARN_,
        _lotlObjectReference = pObjectReference_
      }

-- | The pagination token.
lotlNextToken :: Lens' ListOutgoingTypedLinks (Maybe Text)
lotlNextToken = lens _lotlNextToken (\s a -> s {_lotlNextToken = a})

-- | Filters are interpreted in the order of the attributes defined on the typed link facet, not the order they are supplied to any API calls.
lotlFilterTypedLink :: Lens' ListOutgoingTypedLinks (Maybe TypedLinkSchemaAndFacetName)
lotlFilterTypedLink = lens _lotlFilterTypedLink (\s a -> s {_lotlFilterTypedLink = a})

-- | The maximum number of results to retrieve.
lotlMaxResults :: Lens' ListOutgoingTypedLinks (Maybe Natural)
lotlMaxResults = lens _lotlMaxResults (\s a -> s {_lotlMaxResults = a}) . mapping _Nat

-- | The consistency level to execute the request at.
lotlConsistencyLevel :: Lens' ListOutgoingTypedLinks (Maybe ConsistencyLevel)
lotlConsistencyLevel = lens _lotlConsistencyLevel (\s a -> s {_lotlConsistencyLevel = a})

-- | Provides range filters for multiple attributes. When providing ranges to typed link selection, any inexact ranges must be specified at the end. Any attributes that do not have a range specified are presumed to match the entire range.
lotlFilterAttributeRanges :: Lens' ListOutgoingTypedLinks [TypedLinkAttributeRange]
lotlFilterAttributeRanges = lens _lotlFilterAttributeRanges (\s a -> s {_lotlFilterAttributeRanges = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the directory where you want to list the typed links.
lotlDirectoryARN :: Lens' ListOutgoingTypedLinks Text
lotlDirectoryARN = lens _lotlDirectoryARN (\s a -> s {_lotlDirectoryARN = a})

-- | A reference that identifies the object whose attributes will be listed.
lotlObjectReference :: Lens' ListOutgoingTypedLinks ObjectReference
lotlObjectReference = lens _lotlObjectReference (\s a -> s {_lotlObjectReference = a})

instance AWSPager ListOutgoingTypedLinks where
  page rq rs
    | stop (rs ^. lotlrrsNextToken) = Nothing
    | stop (rs ^. lotlrrsTypedLinkSpecifiers) = Nothing
    | otherwise =
      Just $ rq & lotlNextToken .~ rs ^. lotlrrsNextToken

instance AWSRequest ListOutgoingTypedLinks where
  type
    Rs ListOutgoingTypedLinks =
      ListOutgoingTypedLinksResponse
  request = postJSON cloudDirectory
  response =
    receiveJSON
      ( \s h x ->
          ListOutgoingTypedLinksResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "TypedLinkSpecifiers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListOutgoingTypedLinks

instance NFData ListOutgoingTypedLinks

instance ToHeaders ListOutgoingTypedLinks where
  toHeaders ListOutgoingTypedLinks' {..} =
    mconcat
      ["x-amz-data-partition" =# _lotlDirectoryARN]

instance ToJSON ListOutgoingTypedLinks where
  toJSON ListOutgoingTypedLinks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lotlNextToken,
            ("FilterTypedLink" .=) <$> _lotlFilterTypedLink,
            ("MaxResults" .=) <$> _lotlMaxResults,
            ("ConsistencyLevel" .=) <$> _lotlConsistencyLevel,
            ("FilterAttributeRanges" .=)
              <$> _lotlFilterAttributeRanges,
            Just ("ObjectReference" .= _lotlObjectReference)
          ]
      )

instance ToPath ListOutgoingTypedLinks where
  toPath =
    const
      "/amazonclouddirectory/2017-01-11/typedlink/outgoing"

instance ToQuery ListOutgoingTypedLinks where
  toQuery = const mempty

-- | /See:/ 'listOutgoingTypedLinksResponse' smart constructor.
data ListOutgoingTypedLinksResponse = ListOutgoingTypedLinksResponse'
  { _lotlrrsNextToken ::
      !( Maybe
           Text
       ),
    _lotlrrsTypedLinkSpecifiers ::
      !( Maybe
           [TypedLinkSpecifier]
       ),
    _lotlrrsResponseStatus ::
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

-- | Creates a value of 'ListOutgoingTypedLinksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lotlrrsNextToken' - The pagination token.
--
-- * 'lotlrrsTypedLinkSpecifiers' - Returns a typed link specifier as output.
--
-- * 'lotlrrsResponseStatus' - -- | The response status code.
listOutgoingTypedLinksResponse ::
  -- | 'lotlrrsResponseStatus'
  Int ->
  ListOutgoingTypedLinksResponse
listOutgoingTypedLinksResponse pResponseStatus_ =
  ListOutgoingTypedLinksResponse'
    { _lotlrrsNextToken =
        Nothing,
      _lotlrrsTypedLinkSpecifiers = Nothing,
      _lotlrrsResponseStatus = pResponseStatus_
    }

-- | The pagination token.
lotlrrsNextToken :: Lens' ListOutgoingTypedLinksResponse (Maybe Text)
lotlrrsNextToken = lens _lotlrrsNextToken (\s a -> s {_lotlrrsNextToken = a})

-- | Returns a typed link specifier as output.
lotlrrsTypedLinkSpecifiers :: Lens' ListOutgoingTypedLinksResponse [TypedLinkSpecifier]
lotlrrsTypedLinkSpecifiers = lens _lotlrrsTypedLinkSpecifiers (\s a -> s {_lotlrrsTypedLinkSpecifiers = a}) . _Default . _Coerce

-- | -- | The response status code.
lotlrrsResponseStatus :: Lens' ListOutgoingTypedLinksResponse Int
lotlrrsResponseStatus = lens _lotlrrsResponseStatus (\s a -> s {_lotlrrsResponseStatus = a})

instance NFData ListOutgoingTypedLinksResponse
