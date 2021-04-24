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
-- Module      : Network.AWS.CloudWatchEvents.ListAPIdestinations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of API destination in the account in the current Region.
module Network.AWS.CloudWatchEvents.ListAPIdestinations
  ( -- * Creating a Request
    listAPIdestinations,
    ListAPIdestinations,

    -- * Request Lenses
    lapiNextToken,
    lapiConnectionARN,
    lapiNamePrefix,
    lapiLimit,

    -- * Destructuring the Response
    listAPIdestinationsResponse,
    ListAPIdestinationsResponse,

    -- * Response Lenses
    lapirrsNextToken,
    lapirrsAPIdestinations,
    lapirrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAPIdestinations' smart constructor.
data ListAPIdestinations = ListAPIdestinations'
  { _lapiNextToken ::
      !(Maybe Text),
    _lapiConnectionARN ::
      !(Maybe Text),
    _lapiNamePrefix ::
      !(Maybe Text),
    _lapiLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAPIdestinations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapiNextToken' - The token returned by a previous call to retrieve the next set of results.
--
-- * 'lapiConnectionARN' - The ARN of the connection specified for the API destination.
--
-- * 'lapiNamePrefix' - A name prefix to filter results returned. Only API destinations with a name that starts with the prefix are returned.
--
-- * 'lapiLimit' - The maximum number of API destinations to include in the response.
listAPIdestinations ::
  ListAPIdestinations
listAPIdestinations =
  ListAPIdestinations'
    { _lapiNextToken = Nothing,
      _lapiConnectionARN = Nothing,
      _lapiNamePrefix = Nothing,
      _lapiLimit = Nothing
    }

-- | The token returned by a previous call to retrieve the next set of results.
lapiNextToken :: Lens' ListAPIdestinations (Maybe Text)
lapiNextToken = lens _lapiNextToken (\s a -> s {_lapiNextToken = a})

-- | The ARN of the connection specified for the API destination.
lapiConnectionARN :: Lens' ListAPIdestinations (Maybe Text)
lapiConnectionARN = lens _lapiConnectionARN (\s a -> s {_lapiConnectionARN = a})

-- | A name prefix to filter results returned. Only API destinations with a name that starts with the prefix are returned.
lapiNamePrefix :: Lens' ListAPIdestinations (Maybe Text)
lapiNamePrefix = lens _lapiNamePrefix (\s a -> s {_lapiNamePrefix = a})

-- | The maximum number of API destinations to include in the response.
lapiLimit :: Lens' ListAPIdestinations (Maybe Natural)
lapiLimit = lens _lapiLimit (\s a -> s {_lapiLimit = a}) . mapping _Nat

instance AWSRequest ListAPIdestinations where
  type
    Rs ListAPIdestinations =
      ListAPIdestinationsResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          ListAPIdestinationsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "ApiDestinations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAPIdestinations

instance NFData ListAPIdestinations

instance ToHeaders ListAPIdestinations where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.ListApiDestinations" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAPIdestinations where
  toJSON ListAPIdestinations' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lapiNextToken,
            ("ConnectionArn" .=) <$> _lapiConnectionARN,
            ("NamePrefix" .=) <$> _lapiNamePrefix,
            ("Limit" .=) <$> _lapiLimit
          ]
      )

instance ToPath ListAPIdestinations where
  toPath = const "/"

instance ToQuery ListAPIdestinations where
  toQuery = const mempty

-- | /See:/ 'listAPIdestinationsResponse' smart constructor.
data ListAPIdestinationsResponse = ListAPIdestinationsResponse'
  { _lapirrsNextToken ::
      !(Maybe Text),
    _lapirrsAPIdestinations ::
      !( Maybe
           [APIdestination]
       ),
    _lapirrsResponseStatus ::
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

-- | Creates a value of 'ListAPIdestinationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapirrsNextToken' - A token you can use in a subsequent request to retrieve the next set of results.
--
-- * 'lapirrsAPIdestinations' - An array of @ApiDestination@ objects that include information about an API destination.
--
-- * 'lapirrsResponseStatus' - -- | The response status code.
listAPIdestinationsResponse ::
  -- | 'lapirrsResponseStatus'
  Int ->
  ListAPIdestinationsResponse
listAPIdestinationsResponse pResponseStatus_ =
  ListAPIdestinationsResponse'
    { _lapirrsNextToken =
        Nothing,
      _lapirrsAPIdestinations = Nothing,
      _lapirrsResponseStatus = pResponseStatus_
    }

-- | A token you can use in a subsequent request to retrieve the next set of results.
lapirrsNextToken :: Lens' ListAPIdestinationsResponse (Maybe Text)
lapirrsNextToken = lens _lapirrsNextToken (\s a -> s {_lapirrsNextToken = a})

-- | An array of @ApiDestination@ objects that include information about an API destination.
lapirrsAPIdestinations :: Lens' ListAPIdestinationsResponse [APIdestination]
lapirrsAPIdestinations = lens _lapirrsAPIdestinations (\s a -> s {_lapirrsAPIdestinations = a}) . _Default . _Coerce

-- | -- | The response status code.
lapirrsResponseStatus :: Lens' ListAPIdestinationsResponse Int
lapirrsResponseStatus = lens _lapirrsResponseStatus (\s a -> s {_lapirrsResponseStatus = a})

instance NFData ListAPIdestinationsResponse
