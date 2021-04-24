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
-- Module      : Network.AWS.SES.ListConfigurationSets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of the configuration sets associated with your Amazon SES account in the current AWS Region. For information about using configuration sets, see <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html Monitoring Your Amazon SES Sending Activity> in the /Amazon SES Developer Guide./
--
--
-- You can execute this operation no more than once per second. This operation will return up to 1,000 configuration sets each time it is run. If your Amazon SES account has more than 1,000 configuration sets, this operation will also return a NextToken element. You can then execute the @ListConfigurationSets@ operation again, passing the @NextToken@ parameter and the value of the NextToken element to retrieve additional results.
--
--
-- This operation returns paginated results.
module Network.AWS.SES.ListConfigurationSets
  ( -- * Creating a Request
    listConfigurationSets,
    ListConfigurationSets,

    -- * Request Lenses
    lcsNextToken,
    lcsMaxItems,

    -- * Destructuring the Response
    listConfigurationSetsResponse,
    ListConfigurationSetsResponse,

    -- * Response Lenses
    lcsrrsNextToken,
    lcsrrsConfigurationSets,
    lcsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SES.Types

-- | Represents a request to list the configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html Amazon SES Developer Guide> .
--
--
--
-- /See:/ 'listConfigurationSets' smart constructor.
data ListConfigurationSets = ListConfigurationSets'
  { _lcsNextToken ::
      !(Maybe Text),
    _lcsMaxItems ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListConfigurationSets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsNextToken' - A token returned from a previous call to @ListConfigurationSets@ to indicate the position of the configuration set in the configuration set list.
--
-- * 'lcsMaxItems' - The number of configuration sets to return.
listConfigurationSets ::
  ListConfigurationSets
listConfigurationSets =
  ListConfigurationSets'
    { _lcsNextToken = Nothing,
      _lcsMaxItems = Nothing
    }

-- | A token returned from a previous call to @ListConfigurationSets@ to indicate the position of the configuration set in the configuration set list.
lcsNextToken :: Lens' ListConfigurationSets (Maybe Text)
lcsNextToken = lens _lcsNextToken (\s a -> s {_lcsNextToken = a})

-- | The number of configuration sets to return.
lcsMaxItems :: Lens' ListConfigurationSets (Maybe Int)
lcsMaxItems = lens _lcsMaxItems (\s a -> s {_lcsMaxItems = a})

instance AWSPager ListConfigurationSets where
  page rq rs
    | stop (rs ^. lcsrrsNextToken) = Nothing
    | stop (rs ^. lcsrrsConfigurationSets) = Nothing
    | otherwise =
      Just $ rq & lcsNextToken .~ rs ^. lcsrrsNextToken

instance AWSRequest ListConfigurationSets where
  type
    Rs ListConfigurationSets =
      ListConfigurationSetsResponse
  request = postQuery ses
  response =
    receiveXMLWrapper
      "ListConfigurationSetsResult"
      ( \s h x ->
          ListConfigurationSetsResponse'
            <$> (x .@? "NextToken")
            <*> ( x .@? "ConfigurationSets" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ListConfigurationSets

instance NFData ListConfigurationSets

instance ToHeaders ListConfigurationSets where
  toHeaders = const mempty

instance ToPath ListConfigurationSets where
  toPath = const "/"

instance ToQuery ListConfigurationSets where
  toQuery ListConfigurationSets' {..} =
    mconcat
      [ "Action" =: ("ListConfigurationSets" :: ByteString),
        "Version" =: ("2010-12-01" :: ByteString),
        "NextToken" =: _lcsNextToken,
        "MaxItems" =: _lcsMaxItems
      ]

-- | A list of configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html Amazon SES Developer Guide> .
--
--
--
-- /See:/ 'listConfigurationSetsResponse' smart constructor.
data ListConfigurationSetsResponse = ListConfigurationSetsResponse'
  { _lcsrrsNextToken ::
      !( Maybe
           Text
       ),
    _lcsrrsConfigurationSets ::
      !( Maybe
           [ConfigurationSet]
       ),
    _lcsrrsResponseStatus ::
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

-- | Creates a value of 'ListConfigurationSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsrrsNextToken' - A token indicating that there are additional configuration sets available to be listed. Pass this token to successive calls of @ListConfigurationSets@ .
--
-- * 'lcsrrsConfigurationSets' - A list of configuration sets.
--
-- * 'lcsrrsResponseStatus' - -- | The response status code.
listConfigurationSetsResponse ::
  -- | 'lcsrrsResponseStatus'
  Int ->
  ListConfigurationSetsResponse
listConfigurationSetsResponse pResponseStatus_ =
  ListConfigurationSetsResponse'
    { _lcsrrsNextToken =
        Nothing,
      _lcsrrsConfigurationSets = Nothing,
      _lcsrrsResponseStatus = pResponseStatus_
    }

-- | A token indicating that there are additional configuration sets available to be listed. Pass this token to successive calls of @ListConfigurationSets@ .
lcsrrsNextToken :: Lens' ListConfigurationSetsResponse (Maybe Text)
lcsrrsNextToken = lens _lcsrrsNextToken (\s a -> s {_lcsrrsNextToken = a})

-- | A list of configuration sets.
lcsrrsConfigurationSets :: Lens' ListConfigurationSetsResponse [ConfigurationSet]
lcsrrsConfigurationSets = lens _lcsrrsConfigurationSets (\s a -> s {_lcsrrsConfigurationSets = a}) . _Default . _Coerce

-- | -- | The response status code.
lcsrrsResponseStatus :: Lens' ListConfigurationSetsResponse Int
lcsrrsResponseStatus = lens _lcsrrsResponseStatus (\s a -> s {_lcsrrsResponseStatus = a})

instance NFData ListConfigurationSetsResponse
