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
-- Module      : Network.AWS.MQ.ListConfigurationRevisions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all revisions for the specified configuration.
module Network.AWS.MQ.ListConfigurationRevisions
  ( -- * Creating a Request
    listConfigurationRevisions,
    ListConfigurationRevisions,

    -- * Request Lenses
    lcrNextToken,
    lcrMaxResults,
    lcrConfigurationId,

    -- * Destructuring the Response
    listConfigurationRevisionsResponse,
    ListConfigurationRevisionsResponse,

    -- * Response Lenses
    lcrrrsNextToken,
    lcrrrsMaxResults,
    lcrrrsRevisions,
    lcrrrsConfigurationId,
    lcrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listConfigurationRevisions' smart constructor.
data ListConfigurationRevisions = ListConfigurationRevisions'
  { _lcrNextToken ::
      !(Maybe Text),
    _lcrMaxResults ::
      !(Maybe Nat),
    _lcrConfigurationId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListConfigurationRevisions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrNextToken' - The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- * 'lcrMaxResults' - The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
--
-- * 'lcrConfigurationId' - The unique ID that Amazon MQ generates for the configuration.
listConfigurationRevisions ::
  -- | 'lcrConfigurationId'
  Text ->
  ListConfigurationRevisions
listConfigurationRevisions pConfigurationId_ =
  ListConfigurationRevisions'
    { _lcrNextToken =
        Nothing,
      _lcrMaxResults = Nothing,
      _lcrConfigurationId = pConfigurationId_
    }

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
lcrNextToken :: Lens' ListConfigurationRevisions (Maybe Text)
lcrNextToken = lens _lcrNextToken (\s a -> s {_lcrNextToken = a})

-- | The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.
lcrMaxResults :: Lens' ListConfigurationRevisions (Maybe Natural)
lcrMaxResults = lens _lcrMaxResults (\s a -> s {_lcrMaxResults = a}) . mapping _Nat

-- | The unique ID that Amazon MQ generates for the configuration.
lcrConfigurationId :: Lens' ListConfigurationRevisions Text
lcrConfigurationId = lens _lcrConfigurationId (\s a -> s {_lcrConfigurationId = a})

instance AWSRequest ListConfigurationRevisions where
  type
    Rs ListConfigurationRevisions =
      ListConfigurationRevisionsResponse
  request = get mq
  response =
    receiveJSON
      ( \s h x ->
          ListConfigurationRevisionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "maxResults")
            <*> (x .?> "revisions" .!@ mempty)
            <*> (x .?> "configurationId")
            <*> (pure (fromEnum s))
      )

instance Hashable ListConfigurationRevisions

instance NFData ListConfigurationRevisions

instance ToHeaders ListConfigurationRevisions where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListConfigurationRevisions where
  toPath ListConfigurationRevisions' {..} =
    mconcat
      [ "/v1/configurations/",
        toBS _lcrConfigurationId,
        "/revisions"
      ]

instance ToQuery ListConfigurationRevisions where
  toQuery ListConfigurationRevisions' {..} =
    mconcat
      [ "nextToken" =: _lcrNextToken,
        "maxResults" =: _lcrMaxResults
      ]

-- | /See:/ 'listConfigurationRevisionsResponse' smart constructor.
data ListConfigurationRevisionsResponse = ListConfigurationRevisionsResponse'
  { _lcrrrsNextToken ::
      !( Maybe
           Text
       ),
    _lcrrrsMaxResults ::
      !( Maybe
           Int
       ),
    _lcrrrsRevisions ::
      !( Maybe
           [ConfigurationRevision]
       ),
    _lcrrrsConfigurationId ::
      !( Maybe
           Text
       ),
    _lcrrrsResponseStatus ::
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

-- | Creates a value of 'ListConfigurationRevisionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcrrrsNextToken' - The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
--
-- * 'lcrrrsMaxResults' - The maximum number of configuration revisions that can be returned per page (20 by default). This value must be an integer from 5 to 100.
--
-- * 'lcrrrsRevisions' - The list of all revisions for the specified configuration.
--
-- * 'lcrrrsConfigurationId' - The unique ID that Amazon MQ generates for the configuration.
--
-- * 'lcrrrsResponseStatus' - -- | The response status code.
listConfigurationRevisionsResponse ::
  -- | 'lcrrrsResponseStatus'
  Int ->
  ListConfigurationRevisionsResponse
listConfigurationRevisionsResponse pResponseStatus_ =
  ListConfigurationRevisionsResponse'
    { _lcrrrsNextToken =
        Nothing,
      _lcrrrsMaxResults = Nothing,
      _lcrrrsRevisions = Nothing,
      _lcrrrsConfigurationId = Nothing,
      _lcrrrsResponseStatus =
        pResponseStatus_
    }

-- | The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.
lcrrrsNextToken :: Lens' ListConfigurationRevisionsResponse (Maybe Text)
lcrrrsNextToken = lens _lcrrrsNextToken (\s a -> s {_lcrrrsNextToken = a})

-- | The maximum number of configuration revisions that can be returned per page (20 by default). This value must be an integer from 5 to 100.
lcrrrsMaxResults :: Lens' ListConfigurationRevisionsResponse (Maybe Int)
lcrrrsMaxResults = lens _lcrrrsMaxResults (\s a -> s {_lcrrrsMaxResults = a})

-- | The list of all revisions for the specified configuration.
lcrrrsRevisions :: Lens' ListConfigurationRevisionsResponse [ConfigurationRevision]
lcrrrsRevisions = lens _lcrrrsRevisions (\s a -> s {_lcrrrsRevisions = a}) . _Default . _Coerce

-- | The unique ID that Amazon MQ generates for the configuration.
lcrrrsConfigurationId :: Lens' ListConfigurationRevisionsResponse (Maybe Text)
lcrrrsConfigurationId = lens _lcrrrsConfigurationId (\s a -> s {_lcrrrsConfigurationId = a})

-- | -- | The response status code.
lcrrrsResponseStatus :: Lens' ListConfigurationRevisionsResponse Int
lcrrrsResponseStatus = lens _lcrrrsResponseStatus (\s a -> s {_lcrrrsResponseStatus = a})

instance NFData ListConfigurationRevisionsResponse
