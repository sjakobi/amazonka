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
-- Module      : Network.AWS.CloudWatchEvents.ListArchives
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your archives. You can either list all the archives or you can provide a prefix to match to the archive names. Filter parameters are exclusive.
module Network.AWS.CloudWatchEvents.ListArchives
  ( -- * Creating a Request
    listArchives,
    ListArchives,

    -- * Request Lenses
    laNextToken,
    laEventSourceARN,
    laState,
    laNamePrefix,
    laLimit,

    -- * Destructuring the Response
    listArchivesResponse,
    ListArchivesResponse,

    -- * Response Lenses
    larrsNextToken,
    larrsArchives,
    larrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listArchives' smart constructor.
data ListArchives = ListArchives'
  { _laNextToken ::
      !(Maybe Text),
    _laEventSourceARN :: !(Maybe Text),
    _laState :: !(Maybe ArchiveState),
    _laNamePrefix :: !(Maybe Text),
    _laLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListArchives' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laNextToken' - The token returned by a previous call to retrieve the next set of results.
--
-- * 'laEventSourceARN' - The ARN of the event source associated with the archive.
--
-- * 'laState' - The state of the archive.
--
-- * 'laNamePrefix' - A name prefix to filter the archives returned. Only archives with name that match the prefix are returned.
--
-- * 'laLimit' - The maximum number of results to return.
listArchives ::
  ListArchives
listArchives =
  ListArchives'
    { _laNextToken = Nothing,
      _laEventSourceARN = Nothing,
      _laState = Nothing,
      _laNamePrefix = Nothing,
      _laLimit = Nothing
    }

-- | The token returned by a previous call to retrieve the next set of results.
laNextToken :: Lens' ListArchives (Maybe Text)
laNextToken = lens _laNextToken (\s a -> s {_laNextToken = a})

-- | The ARN of the event source associated with the archive.
laEventSourceARN :: Lens' ListArchives (Maybe Text)
laEventSourceARN = lens _laEventSourceARN (\s a -> s {_laEventSourceARN = a})

-- | The state of the archive.
laState :: Lens' ListArchives (Maybe ArchiveState)
laState = lens _laState (\s a -> s {_laState = a})

-- | A name prefix to filter the archives returned. Only archives with name that match the prefix are returned.
laNamePrefix :: Lens' ListArchives (Maybe Text)
laNamePrefix = lens _laNamePrefix (\s a -> s {_laNamePrefix = a})

-- | The maximum number of results to return.
laLimit :: Lens' ListArchives (Maybe Natural)
laLimit = lens _laLimit (\s a -> s {_laLimit = a}) . mapping _Nat

instance AWSRequest ListArchives where
  type Rs ListArchives = ListArchivesResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          ListArchivesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Archives" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListArchives

instance NFData ListArchives

instance ToHeaders ListArchives where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.ListArchives" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListArchives where
  toJSON ListArchives' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _laNextToken,
            ("EventSourceArn" .=) <$> _laEventSourceARN,
            ("State" .=) <$> _laState,
            ("NamePrefix" .=) <$> _laNamePrefix,
            ("Limit" .=) <$> _laLimit
          ]
      )

instance ToPath ListArchives where
  toPath = const "/"

instance ToQuery ListArchives where
  toQuery = const mempty

-- | /See:/ 'listArchivesResponse' smart constructor.
data ListArchivesResponse = ListArchivesResponse'
  { _larrsNextToken ::
      !(Maybe Text),
    _larrsArchives ::
      !(Maybe [Archive]),
    _larrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListArchivesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextToken' - The token returned by a previous call to retrieve the next set of results.
--
-- * 'larrsArchives' - An array of @Archive@ objects that include details about an archive.
--
-- * 'larrsResponseStatus' - -- | The response status code.
listArchivesResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListArchivesResponse
listArchivesResponse pResponseStatus_ =
  ListArchivesResponse'
    { _larrsNextToken = Nothing,
      _larrsArchives = Nothing,
      _larrsResponseStatus = pResponseStatus_
    }

-- | The token returned by a previous call to retrieve the next set of results.
larrsNextToken :: Lens' ListArchivesResponse (Maybe Text)
larrsNextToken = lens _larrsNextToken (\s a -> s {_larrsNextToken = a})

-- | An array of @Archive@ objects that include details about an archive.
larrsArchives :: Lens' ListArchivesResponse [Archive]
larrsArchives = lens _larrsArchives (\s a -> s {_larrsArchives = a}) . _Default . _Coerce

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListArchivesResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

instance NFData ListArchivesResponse
