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
-- Module      : Network.AWS.WorkMail.ListAliases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a paginated call to list the aliases associated with a given entity.
--
--
--
-- This operation returns paginated results.
module Network.AWS.WorkMail.ListAliases
  ( -- * Creating a Request
    listAliases,
    ListAliases,

    -- * Request Lenses
    laNextToken,
    laMaxResults,
    laOrganizationId,
    laEntityId,

    -- * Destructuring the Response
    listAliasesResponse,
    ListAliasesResponse,

    -- * Response Lenses
    larrsNextToken,
    larrsAliases,
    larrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'listAliases' smart constructor.
data ListAliases = ListAliases'
  { _laNextToken ::
      !(Maybe Text),
    _laMaxResults :: !(Maybe Nat),
    _laOrganizationId :: !Text,
    _laEntityId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAliases' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laNextToken' - The token to use to retrieve the next page of results. The first call does not contain any tokens.
--
-- * 'laMaxResults' - The maximum number of results to return in a single call.
--
-- * 'laOrganizationId' - The identifier for the organization under which the entity exists.
--
-- * 'laEntityId' - The identifier for the entity for which to list the aliases.
listAliases ::
  -- | 'laOrganizationId'
  Text ->
  -- | 'laEntityId'
  Text ->
  ListAliases
listAliases pOrganizationId_ pEntityId_ =
  ListAliases'
    { _laNextToken = Nothing,
      _laMaxResults = Nothing,
      _laOrganizationId = pOrganizationId_,
      _laEntityId = pEntityId_
    }

-- | The token to use to retrieve the next page of results. The first call does not contain any tokens.
laNextToken :: Lens' ListAliases (Maybe Text)
laNextToken = lens _laNextToken (\s a -> s {_laNextToken = a})

-- | The maximum number of results to return in a single call.
laMaxResults :: Lens' ListAliases (Maybe Natural)
laMaxResults = lens _laMaxResults (\s a -> s {_laMaxResults = a}) . mapping _Nat

-- | The identifier for the organization under which the entity exists.
laOrganizationId :: Lens' ListAliases Text
laOrganizationId = lens _laOrganizationId (\s a -> s {_laOrganizationId = a})

-- | The identifier for the entity for which to list the aliases.
laEntityId :: Lens' ListAliases Text
laEntityId = lens _laEntityId (\s a -> s {_laEntityId = a})

instance AWSPager ListAliases where
  page rq rs
    | stop (rs ^. larrsNextToken) = Nothing
    | stop (rs ^. larrsAliases) = Nothing
    | otherwise =
      Just $ rq & laNextToken .~ rs ^. larrsNextToken

instance AWSRequest ListAliases where
  type Rs ListAliases = ListAliasesResponse
  request = postJSON workMail
  response =
    receiveJSON
      ( \s h x ->
          ListAliasesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Aliases" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAliases

instance NFData ListAliases

instance ToHeaders ListAliases where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("WorkMailService.ListAliases" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAliases where
  toJSON ListAliases' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _laNextToken,
            ("MaxResults" .=) <$> _laMaxResults,
            Just ("OrganizationId" .= _laOrganizationId),
            Just ("EntityId" .= _laEntityId)
          ]
      )

instance ToPath ListAliases where
  toPath = const "/"

instance ToQuery ListAliases where
  toQuery = const mempty

-- | /See:/ 'listAliasesResponse' smart constructor.
data ListAliasesResponse = ListAliasesResponse'
  { _larrsNextToken ::
      !(Maybe Text),
    _larrsAliases ::
      !(Maybe [Text]),
    _larrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAliasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextToken' - The token to use to retrieve the next page of results. The value is "null" when there are no more results to return.
--
-- * 'larrsAliases' - The entity's paginated aliases.
--
-- * 'larrsResponseStatus' - -- | The response status code.
listAliasesResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListAliasesResponse
listAliasesResponse pResponseStatus_ =
  ListAliasesResponse'
    { _larrsNextToken = Nothing,
      _larrsAliases = Nothing,
      _larrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. The value is "null" when there are no more results to return.
larrsNextToken :: Lens' ListAliasesResponse (Maybe Text)
larrsNextToken = lens _larrsNextToken (\s a -> s {_larrsNextToken = a})

-- | The entity's paginated aliases.
larrsAliases :: Lens' ListAliasesResponse [Text]
larrsAliases = lens _larrsAliases (\s a -> s {_larrsAliases = a}) . _Default . _Coerce

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListAliasesResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

instance NFData ListAliasesResponse
