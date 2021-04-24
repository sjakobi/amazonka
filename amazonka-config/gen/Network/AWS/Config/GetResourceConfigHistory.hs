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
-- Module      : Network.AWS.Config.GetResourceConfigHistory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval. If you specified a retention period to retain your @ConfigurationItems@ between a minimum of 30 days and a maximum of 7 years (2557 days), AWS Config returns the @ConfigurationItems@ for the specified retention period.
--
--
-- The response is paginated. By default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the @limit@ parameter. The response includes a @nextToken@ string. To get the next page of results, run the request again and specify the string for the @nextToken@ parameter.
--
--
-- This operation returns paginated results.
module Network.AWS.Config.GetResourceConfigHistory
  ( -- * Creating a Request
    getResourceConfigHistory,
    GetResourceConfigHistory,

    -- * Request Lenses
    grchNextToken,
    grchEarlierTime,
    grchLaterTime,
    grchChronologicalOrder,
    grchLimit,
    grchResourceType,
    grchResourceId,

    -- * Destructuring the Response
    getResourceConfigHistoryResponse,
    GetResourceConfigHistoryResponse,

    -- * Response Lenses
    grchrrsNextToken,
    grchrrsConfigurationItems,
    grchrrsResponseStatus,
  )
where

import Network.AWS.Config.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the 'GetResourceConfigHistory' action.
--
--
--
-- /See:/ 'getResourceConfigHistory' smart constructor.
data GetResourceConfigHistory = GetResourceConfigHistory'
  { _grchNextToken ::
      !(Maybe Text),
    _grchEarlierTime ::
      !(Maybe POSIX),
    _grchLaterTime ::
      !(Maybe POSIX),
    _grchChronologicalOrder ::
      !( Maybe
           ChronologicalOrder
       ),
    _grchLimit ::
      !(Maybe Nat),
    _grchResourceType ::
      !ResourceType,
    _grchResourceId ::
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

-- | Creates a value of 'GetResourceConfigHistory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grchNextToken' - The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
--
-- * 'grchEarlierTime' - The time stamp that indicates an earlier time. If not specified, the action returns paginated results that contain configuration items that start when the first configuration item was recorded.
--
-- * 'grchLaterTime' - The time stamp that indicates a later time. If not specified, current time is taken.
--
-- * 'grchChronologicalOrder' - The chronological order for configuration items listed. By default, the results are listed in reverse chronological order.
--
-- * 'grchLimit' - The maximum number of configuration items returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
--
-- * 'grchResourceType' - The resource type.
--
-- * 'grchResourceId' - The ID of the resource (for example., @sg-xxxxxx@ ).
getResourceConfigHistory ::
  -- | 'grchResourceType'
  ResourceType ->
  -- | 'grchResourceId'
  Text ->
  GetResourceConfigHistory
getResourceConfigHistory pResourceType_ pResourceId_ =
  GetResourceConfigHistory'
    { _grchNextToken = Nothing,
      _grchEarlierTime = Nothing,
      _grchLaterTime = Nothing,
      _grchChronologicalOrder = Nothing,
      _grchLimit = Nothing,
      _grchResourceType = pResourceType_,
      _grchResourceId = pResourceId_
    }

-- | The @nextToken@ string returned on a previous page that you use to get the next page of results in a paginated response.
grchNextToken :: Lens' GetResourceConfigHistory (Maybe Text)
grchNextToken = lens _grchNextToken (\s a -> s {_grchNextToken = a})

-- | The time stamp that indicates an earlier time. If not specified, the action returns paginated results that contain configuration items that start when the first configuration item was recorded.
grchEarlierTime :: Lens' GetResourceConfigHistory (Maybe UTCTime)
grchEarlierTime = lens _grchEarlierTime (\s a -> s {_grchEarlierTime = a}) . mapping _Time

-- | The time stamp that indicates a later time. If not specified, current time is taken.
grchLaterTime :: Lens' GetResourceConfigHistory (Maybe UTCTime)
grchLaterTime = lens _grchLaterTime (\s a -> s {_grchLaterTime = a}) . mapping _Time

-- | The chronological order for configuration items listed. By default, the results are listed in reverse chronological order.
grchChronologicalOrder :: Lens' GetResourceConfigHistory (Maybe ChronologicalOrder)
grchChronologicalOrder = lens _grchChronologicalOrder (\s a -> s {_grchChronologicalOrder = a})

-- | The maximum number of configuration items returned on each page. The default is 10. You cannot specify a number greater than 100. If you specify 0, AWS Config uses the default.
grchLimit :: Lens' GetResourceConfigHistory (Maybe Natural)
grchLimit = lens _grchLimit (\s a -> s {_grchLimit = a}) . mapping _Nat

-- | The resource type.
grchResourceType :: Lens' GetResourceConfigHistory ResourceType
grchResourceType = lens _grchResourceType (\s a -> s {_grchResourceType = a})

-- | The ID of the resource (for example., @sg-xxxxxx@ ).
grchResourceId :: Lens' GetResourceConfigHistory Text
grchResourceId = lens _grchResourceId (\s a -> s {_grchResourceId = a})

instance AWSPager GetResourceConfigHistory where
  page rq rs
    | stop (rs ^. grchrrsNextToken) = Nothing
    | stop (rs ^. grchrrsConfigurationItems) = Nothing
    | otherwise =
      Just $ rq & grchNextToken .~ rs ^. grchrrsNextToken

instance AWSRequest GetResourceConfigHistory where
  type
    Rs GetResourceConfigHistory =
      GetResourceConfigHistoryResponse
  request = postJSON config
  response =
    receiveJSON
      ( \s h x ->
          GetResourceConfigHistoryResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "configurationItems" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetResourceConfigHistory

instance NFData GetResourceConfigHistory

instance ToHeaders GetResourceConfigHistory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StarlingDoveService.GetResourceConfigHistory" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetResourceConfigHistory where
  toJSON GetResourceConfigHistory' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _grchNextToken,
            ("earlierTime" .=) <$> _grchEarlierTime,
            ("laterTime" .=) <$> _grchLaterTime,
            ("chronologicalOrder" .=)
              <$> _grchChronologicalOrder,
            ("limit" .=) <$> _grchLimit,
            Just ("resourceType" .= _grchResourceType),
            Just ("resourceId" .= _grchResourceId)
          ]
      )

instance ToPath GetResourceConfigHistory where
  toPath = const "/"

instance ToQuery GetResourceConfigHistory where
  toQuery = const mempty

-- | The output for the 'GetResourceConfigHistory' action.
--
--
--
-- /See:/ 'getResourceConfigHistoryResponse' smart constructor.
data GetResourceConfigHistoryResponse = GetResourceConfigHistoryResponse'
  { _grchrrsNextToken ::
      !( Maybe
           Text
       ),
    _grchrrsConfigurationItems ::
      !( Maybe
           [ConfigurationItem]
       ),
    _grchrrsResponseStatus ::
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

-- | Creates a value of 'GetResourceConfigHistoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grchrrsNextToken' - The string that you use in a subsequent request to get the next page of results in a paginated response.
--
-- * 'grchrrsConfigurationItems' - A list that contains the configuration history of one or more resources.
--
-- * 'grchrrsResponseStatus' - -- | The response status code.
getResourceConfigHistoryResponse ::
  -- | 'grchrrsResponseStatus'
  Int ->
  GetResourceConfigHistoryResponse
getResourceConfigHistoryResponse pResponseStatus_ =
  GetResourceConfigHistoryResponse'
    { _grchrrsNextToken =
        Nothing,
      _grchrrsConfigurationItems = Nothing,
      _grchrrsResponseStatus = pResponseStatus_
    }

-- | The string that you use in a subsequent request to get the next page of results in a paginated response.
grchrrsNextToken :: Lens' GetResourceConfigHistoryResponse (Maybe Text)
grchrrsNextToken = lens _grchrrsNextToken (\s a -> s {_grchrrsNextToken = a})

-- | A list that contains the configuration history of one or more resources.
grchrrsConfigurationItems :: Lens' GetResourceConfigHistoryResponse [ConfigurationItem]
grchrrsConfigurationItems = lens _grchrrsConfigurationItems (\s a -> s {_grchrrsConfigurationItems = a}) . _Default . _Coerce

-- | -- | The response status code.
grchrrsResponseStatus :: Lens' GetResourceConfigHistoryResponse Int
grchrrsResponseStatus = lens _grchrrsResponseStatus (\s a -> s {_grchrrsResponseStatus = a})

instance NFData GetResourceConfigHistoryResponse
